USE olistdata;

WITH pay AS (
    SELECT
        order_id,
        SUM(payment_value) AS order_payment
    FROM order_payments
    GROUP BY order_id
),

review AS (
    SELECT
        order_id,
        AVG(review_score) AS review_score
    FROM order_reviews
    GROUP BY order_id
),

rfm_raw AS (
    SELECT
        c.customer_unique_id,

        -- Recency
        DATEDIFF(
            (
                SELECT DATE_ADD(MAX(order_purchase_timestamp), INTERVAL 1 DAY)
                FROM orders
                WHERE order_status = 'delivered'
                  AND order_delivered_customer_date IS NOT NULL
            ),
            MAX(o.order_purchase_timestamp)
        ) AS recency,

        -- Frequency
        COUNT(DISTINCT o.order_id) AS frequency,

        -- Monetary
        ROUND(SUM(p.order_payment), 2) AS monetary,

        -- Delivery
        ROUND(
            AVG(DATEDIFF(o.order_delivered_customer_date, o.order_delivered_carrier_date)),
            2
        ) AS avg_delivery_days,

        -- Review
        ROUND(
            AVG(r.review_score),
            2
        ) AS avg_review

    FROM orders o

    JOIN customers c
        ON o.customer_id = c.customer_id

    JOIN pay p
        ON o.order_id = p.order_id

    LEFT JOIN review r
        ON o.order_id = r.order_id

    WHERE o.order_status = 'delivered'
      AND o.order_delivered_customer_date IS NOT NULL

    GROUP BY c.customer_unique_id
),

rfm_grade AS (
    SELECT
        rfm_raw.*,

        -- Recency는 낮을수록 좋음: 최근 구매 고객 = 1등급
         CASE
            WHEN recency <= 30 THEN 1
            WHEN recency <= 60 THEN 2
            WHEN recency <= 90 THEN 3
            WHEN recency <= 120 THEN 4
            WHEN recency <= 180 THEN 5
            WHEN recency <= 240 THEN 6
            WHEN recency <= 300 THEN 7
            WHEN recency <= 365 THEN 8
            WHEN recency <= 545 THEN 9
            ELSE 10
        END AS R_grade, 

        -- Frequency는 2등급 체계
        -- 2회 이상 주문 고객 = 1등급
        -- 1회 주문 고객 = 2등급
        CASE
            WHEN frequency >= 2 THEN 1
            ELSE 2
        END AS F_grade,

        -- Monetary는 높을수록 좋음: 많이 쓴 고객 = 1등급
        CASE
            WHEN monetary >= 1000 THEN 1
            WHEN monetary >= 500 THEN 2
            WHEN monetary >= 300 THEN 3
            WHEN monetary >= 200 THEN 4
            WHEN monetary >= 150 THEN 5
            WHEN monetary >= 100 THEN 6
            WHEN monetary >= 75 THEN 7
            WHEN monetary >= 50 THEN 8
            WHEN monetary >= 25 THEN 9
            ELSE 10
        END AS M_grade

    FROM rfm_raw
),

rfm_final AS (
    SELECT
        rfm_grade.*,

        R_grade + F_grade + M_grade AS RFM_total

    FROM rfm_grade
)

SELECT
    rfm_final.*,

    CASE
        WHEN RFM_total BETWEEN 3 AND 5 THEN 'Challenger'
        WHEN RFM_total BETWEEN 6 AND 7 THEN 'Grandmaster'
        WHEN RFM_total BETWEEN 8 AND 9 THEN 'Master'
        WHEN RFM_total BETWEEN 10 AND 11 THEN 'Diamond'
        WHEN RFM_total BETWEEN 12 AND 14 THEN 'Platinum'
        WHEN RFM_total BETWEEN 15 AND 16 THEN 'Gold'
        WHEN RFM_total BETWEEN 17 AND 18 THEN 'Silver'
        WHEN RFM_total BETWEEN 19 AND 20 THEN 'Bronze'
        ELSE 'Iron'
    END AS customer_segment

FROM rfm_final

ORDER BY RFM_total ASC;