<h1 align="center">RFM Analysis for Revenue Optimization</h1>
<table align="center">
  <tr>
    <td width="1440">
       <h2 align="center">Background</h2>
       <body>
        In the fast-paced world of e-commerce, understanding customer behavior is critical to driving revenue, reducing churn, and optimizing marketing spend. This SQL-based project analyzes customer data to deliver actionable insights that help businesses target high-value customers, boost retention, and increase profitability. Through customer segmentation, retention analysis, repeat purchase trends, Customer Lifetime Value (CLTV), and RFM (Recency, Frequency, Monetary) scoring, the project uncovers opportunities to maximize revenue and improve ROI. <br>
</table>
<table align="center">
  <tr>
    <div width="920">
      <h1 align="center">Business Value</h1>
      <h2 align="center">Key Challenges with Data-Driven Solutions</h2>
      
- **Increases Revenue** : Identifies high-value customers (e.g., CLTV up to $38,965.77) for personalized offers, potentially boosting sales by 10-20% (industry benchmark).
- **Reduces Churn** : Highlights a 95.24% churn rate after month 1, guiding timely re-engagement campaigns to retain customers.
- **Optimizes Marketing** : Segments customers by age (e.g., 38.78% aged 26-48), traffic source, and country, focusing ad spend on high-ROI demographics.
- **Encourages Loyalty** : Reveals a 37.74% repeat purchase rate, informing loyalty programs to increase order frequency.
</table>
<h1 align="center">Executive Summary</h1>
<h2 align="center">RFM Customer Segment Distribution</h2>
<img width="1000" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1778568741/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_1568_zvmqjq.png" />
      </div>
      <td width="460" valign="top">
        <ol>
          <li>
          <strong>Approximately 72.5% of customers are concentrated in the mid-tier segments</strong>
            <ul>
                <li>From a business perspective, this group represents the largest customer pool. Rather than relying on broad discount campaigns, the company should focus on gradually moving these customers into higher-value tiers through repeat-purchase coupons, personalized product recommendations, and membership conversion campaigns</li>
            </ul>
          </li>
        </ol>
      </td>
      <td width="460" valign="top">
        <ol start="2">
          <li>
            <strong>Top-Tier Customers Represent a Rare Segment</strong>
            <ul>
              <li>Core high-value customers account for less than 1% of the total customer base, making them a very limited and strategically important segment.</li>
              <li>To prevent churn among these customers, the company should apply dedicated retention strategies such as exclusive benefits, priority coupons, and premium customer management programs.</li>
            </ul>
          </li>
          <li>
            <strong>Small but Still Relevant Low-Tier Segment</strong>
            <ul>
              <li>Although this group does not represent a large share of the customer base, these customers are likely to have lower purchase frequency or weaker recent engagement.</li>
              <li>Therefore, instead of using costly marketing campaigns, it would be more efficient to manage them through low-cost reminder campaigns, automated emails, and limited discount coupons.</li>
            </ul>
          </li>
        </ol>
      </td>
    </div>
  </tr>
  </table>
<h3 align="center">Detail Description of Each Customer Segment</h3>
<div align="center">
  <img width="680" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1777709938/ChatGPT_Image_2026%EB%85%84_5%EC%9B%94_2%EC%9D%BC_%EC%98%A4%ED%9B%84_04_14_09_bwp555.png">
</div>
<h1 align="center">Insights Deep-Dive</h1>
<table align="center">
  <tr>
  <h2 align="center">RFM Component Distribution</h2>
    <td width="1000">
    <img width="300" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1778572841/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_1589_snop89.png">
    </td>
    <td width="1000">
      <img width="300" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1778572846/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_1590_bmknar.png">
    </td>
    <td width="1000">
      <img width="300" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1778572856/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_1588_ed9am2.png">
    </td>
  </tr>
  </table>
  </td>
  </tr>
</table>
<div align="center">
  <table>
    <tr>
      <h4>
        <strong>"RFM segment distribution shows that most customers are concentrated in low-frequency and mid-to-low value segments, indicating the need for repeat-purchase activation, customer re-engagement, and upselling strategies"</strong>
      </h4>
      <td>
        <img width="900" alt="Sales Growth vs. AOV Growth" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1778578321/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_1591_etj1m7.png" />
      </td>
    </tr>
<table>
  <tr>
    <td>
      <h3 align="left">Recency</h3>
      <ol>
        <li>Broad Recency Distribution and Large Inactive Customer Base<ul>
            <li>Customer recency values are widely spread, ranging from recently active customers to customers who have not purchased for a long period.</li>
            <li>This indicates that the customer base includes both active buyers and potentially dormant customers.</li>
            <li>Large share of customers is concentrated in lower-quality recency segments, especially Score 9, which accounts for 19% of customers. Scores 5 to 9 together represent a significant portion of the customer base, suggesting that many customers have not purchased recently.</li>     
          </ul>
        </li>
        <li>Recency-Based Growth: Targeted Win-back & Retention<ul>
            <li>From a business perspective, this indicates a need for lifecycle-based customer management. Customers in high recency-score segments should be targeted with win-back campaigns, reminder messages, personalized coupons, and return incentives.</li>
            <li>Meanwhile, customers with low recency scores should be managed through retention and loyalty-building strategies to prevent them from becoming inactive.</li>
            <li><strong>Business Implication:</strong> Recency analysis helps separate active customers from dormant or churn-risk customers, enabling more targeted win-back, retention, and loyalty strategies.</li>
          </ul>
        </li>
        </ol>
      <h3 align="left">Frequency</h3>
      <ol>
        <li> One-Time Purchase Dominance – Limited Repeat Purchase Behavior <ul>
            <li>
              90,548 customers, or 97% of the total customer base, purchased only once.
            </li>
            <li>Customers who purchased twice account for only 3%, while customers with three or more purchases represent a very small portion of the total.</li>
          </ul>
        </li>
        <li>From Acquisition to Retention: Strategies for Driving Repeat Purchases<ul>
            <li>
              While the company may be successful in acquiring new customers, it appears to face challenges in encouraging repeat purchases and building long-term customer relationships.
            </li>
            <li>Rather than focusing only on new customer acquisition, the company should design strategies that encourage first-time buyers to make a second purchase.</li>
           </li>
            <li><strong>Business Implication:</strong> Frequency analysis shows that most customers purchase only once, highlighting the need for stronger repeat-purchase and retention strategies.</li>
        </ul>
      </ol>
      <h3 align="left">Monetary</h3>
      <ol>
        <li> Spending Concentration in Mid-to-High Value Segments <ul>
            <li>
              Most customers are concentrated in relatively lower spending ranges, while a small number of customers show exceptionally high spending amounts.
            </li>
            <li>This indicates a long-tail spending structure, where a limited group of high-value customers contributes disproportionately to revenue.</li>
            <li>Monetary Score 1 accounts for just 1% of customers, while Scores 2 and 3 account for 3% and 7%, respectively. In contrast, a larger share of customers is concentrated in lower-value segments, especially Scores 6 to 9.</li>
          </ul>
        </li>
        <li>Segmented Retention and Upselling Strategy <ul>
            <li>
             High-value customers are limited but strategically important. These customers should be managed through VIP retention, exclusive benefits, and personalized offers to prevent churn.
            </li>
            <li>Meanwhile, the larger low-to-mid spending customer base should be targeted with upselling, bundled offers, and loyalty programs to gradually increase purchase value.</li>
           </li>
            <li><strong>Business Implication:</strong> Monetary analysis shows that high-value customers are rare, while most customers are concentrated in lower-to-mid spending segments. This highlights the need to retain top spenders while increasing purchase value among broader customer groups.</li>
        </ul>
      </ol>
      </table>
</div>
<table align="center">
  <tr>
     <h1 align="center">RFM Analysis</h1>
      <div align="center">
        <h3>Mid-tier RFM customers are the largest group, with longer delivery times and lower review scores.</h3>
        <img width="1000" alt="RFM Dashboard" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1778579619/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_1596_uo3wkx.png" />
      </div>
    <tr>
  </tr>
</table>
<table aign="center">
  <tr>
      <td width="500" valign="top">
      <h3 align="center">RFM Class Distribution</h3>
      <ul>
        <li>The customer distribution by total RFM score shows a balanced bell-shaped pattern, with the largest group concentrated around scores 12–14.</li>
        <li>Customers in the lowest and highest RFM score ranges account for relatively small shares, suggesting that both highly inactive and top-value customers are limited segments.</li>
        <li>From a business perspective, the company should focus on moving mid-tier customers into higher-value segments through repeat-purchase incentives, personalized recommendations, and loyalty programs. </li>
      </ul>
    </td>
  <td width="500" valign="top">
      <h3 align="center">Correlation with Delivery Days & Review Score</h3>
      <ul>
        <li>Higher review scores are associated with shorter average delivery times.<strong>(Chart below)</strong></li>
        <li>However, mid-tier group shows relatively longer average delivery days and lower review scores compared to higher RFM score groups. </li>
        <li>This suggests that delivery experience may be weakening customer satisfaction within the largest customer segment.</li>
        <li>From a business perspective, targeting mid-tier RFM customers with faster-delivery product recommendations could be an effective way to improve satisfaction and strengthen retention.</li>
      </ul>
      </td>
</tr>
</table>
<table align="center">
    <tr align="center">
      <td width="900" valign="top">
      <h2>Delivery Speed vs. Customer Satisfaction</h2>
      <img width="900" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1778583208/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_1600_yzm8kl.png">
        <h4>
        <strong>Review scores increase as average delivery days decrease, indicating that faster delivery is strongly linked to higher customer satisfaction.</strong>
      </h4>
    </td>
</tr>
</table>
<table align="center">
    <tr align="center">
      <td width="900" valign="top">
      <h2>Best Order Category</h2>
      <img width="900" src="https://res.cloudinary.com/dysnnptit/image/upload/q_auto/f_auto/v1778583208/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_1600_yzm8kl.png">
        <h4>
        <strong>Review scores increase as average delivery days decrease, indicating that faster delivery is strongly linked to higher customer satisfaction.</strong>
      </h4>
    </td>
    
     
