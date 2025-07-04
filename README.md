# Kultra Mega Stores (KMS): Sales and Customer Insight Analysis (2009-2012)

**Analyst:** Kugblenu Lanasiwaju

---

### 1. Project Overview

This analysis examines four years of sales and order data for Kultra Mega Stores (KMS). The objective is to use SQL to query the company's database to uncover key trends in product performance, regional sales, and customer behavior, and to provide data-driven recommendations to management.

---

### 2. Tools & Techniques

*   **Database & Analysis:** PostgreSQL
*   **Code Documentation:** Git & GitHub

---

### 3. Analysis & Findings

The full, commented SQL script used for this analysis can be found in the `SQL_Queries.sql` file in this repository. The following section summarizes the key business questions and the insights derived from the queries.

#### **Case Scenario I: Sales & Operational Performance**

*   **1. Highest Selling Product Category:** The query identifies "Office Supplies" as the highest-selling category, indicating it is a core revenue driver for the business.

*   **2. Top & Bottom Regions:** The analysis reveals a high concentration of sales in the "Atlantic," "Ontario," and "Quebec" regions, while "Nunavut" consistently underperforms. This highlights a need for targeted marketing in weaker regions.

*   **3. Sales of Appliances in Ontario:** The query calculates the specific sales figures for this sub-category in a key region, providing a granular look at performance.

*   **4. Bottom 10 Customers:** By identifying the customers with the lowest sales, management can create targeted campaigns or surveys to understand their needs and increase their lifetime value.

*   **5. Most Expensive Shipping Method:** The analysis shows that "Express Air" incurs the highest total shipping cost, pointing to a need for policies that reserve its use for high-priority orders only.

#### **Case Scenario II: Customer Behavior & Profitability**

*   **6. Most Valuable Customers:** The query identifies the most valuable customers based on total profit, not just sales. These are the customers KMS should focus on retaining through loyalty programs.

*   **7. Top Small Business Customer:** This query pinpoints the highest-spending "Small Business" client, presenting an opportunity for a strategic partnership or dedicated account management.

*   **8. Top Corporate Customer by Order Volume:** The analysis identifies the corporate client that places the most orders, highlighting a key relationship for the B2B sales team.

*   **9. Most Profitable Consumer:** This query finds the single most profitable individual customer, showing the value that can be driven by the consumer segment.

*   **10. Customers with Returned Items:** By joining the `orders` and `returns` tables, we can create a list of all customers who have made returns, allowing the customer service team to investigate potential issues with product quality or fulfillment.

*   **11. Shipping Cost vs. Order Priority:** The final query reveals that the company often spends excessively on shipping for "Low Priority" orders and fails to expedite "High Priority" orders, indicating a mismatch in operational spending and customer promise.

---

### 4. Key Recommendations

1.  **Focus on High-Value Segments:** Strengthen relationships with the identified top profitable customers and high-volume corporate clients.
2.  **Develop Underperforming Regions:** Create a targeted marketing and sales strategy for Nunavut and other bottom-tier regions.
3.  **Optimize Logistics:** Implement a strict policy to align shipping mode with order priority to reduce costs and improve customer satisfaction.
