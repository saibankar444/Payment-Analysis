💳 Juspay Payment Analysis Project

A mini data analysis project to uncover key trends in payment transactions such as failure rates, successful amounts, time-based spikes, and high-value contributors. This project is tailored to reflect the type of data-driven thinking required for Product Software Engineer (PSE) role at Juspay.

---

📌 Objective

To analyze transaction data from a payment system and identify:
- Most reliable payment methods
- Peak failure times
- High-value customer activity
- Improvement areas for conversion optimization

---

🧰 Tools & Technologies

- SQL (DB Fiddle): Querying and aggregating transaction data
- R: Data cleaning, transformation, and visualization
- ggplot2: Creating insightful charts
- dplyr: Data grouping and filtering
- Tableau for dashboarding

---

📊 SQL Insights

> Performed in [DB Fiddle](https://db-fiddle.com/) (schema and inserts in `queries.sql`)
--------------------------------------------------------------
| Metric                      | Value                        |
|-----------------------------|------------------------------|
| ✅ Total Successful Amount | ₹3,62,378.30                  |
| ❌ Failed Transactions     | 49 out of 200                 |
| 🏦 Top Payment Method      | UPI (Highest revenue)         |
| 📉 Worst Performer         | Wallet (Highest failure rate) |
| 🕒 Peak Failure Hours      | 3PM and 9PM                   |
| 🏆 Highest Transaction     | ₹4,949 via Card               |
---------------------------------------------------------------
---

📈 Visualizations

> All visuals created using **R + ggplot2**  
> Screenshots are in the `/Output_ScreenShots/` folder

### 1. Payment Status Distribution
![Status Distribution](Output_ScreenShots/Plot_1.png)

### 2. Successful Amount per Payment Method
![Success Amount](Output_ScreenShots/Plot_2.png)

### 3. Failure Rate by Payment Method
![Failure Rate](Output_ScreenShots/Plot_3.png)

### 4. Failed Transactions by Hour
![Failures by Hour](Output_ScreenShots/Plot_4.png)

---

💡 Recommendations

- Implement retry logic for **wallet payments**
- Prioritize **UPI and Netbanking** as default options
- Apply **gateway switch or backup** during peak failure hours (e.g., 15:00–16:00, 21:00–22:00)
- Monitor high-value users for custom incentives

---



