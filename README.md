# 🎯 SportyBet Betting Analytics Dashboard

<img width="272" height="186" alt="image" src="https://github.com/user-attachments/assets/e205b944-9e69-4284-802f-7a662ae71b0f" />


## 📖 Project Overview

The SportyBet Betting Analytics Dashboard is an end-to-end Business Intelligence solution developed to analyze betting platform performance, customer behavior, profitability, and operational risk.

This project demonstrates how SQL Server and Power BI can be combined to transform raw betting transaction data into meaningful insights that support strategic decision-making.

The objective was to simulate a real-world sportsbook analytics environment where business stakeholders can monitor key performance indicators, understand bettor behavior, identify profitable opportunities, and manage risk exposure through interactive reporting and visualization.

---

## 🚀 Business Problem

Sports betting platforms generate thousands of transactions daily across multiple sports, bet types, and customer segments. Without a structured analytics framework, it becomes difficult to answer critical business questions such as:

- Which sports generate the highest betting activity?
- Which customers contribute the most revenue?
- What periods experience the highest betting volume?
- Which betting categories are most profitable?
- Where is the business exposed to risk?
- How are customer betting behaviors evolving over time?

This project was designed to address these challenges through data analysis, KPI development, and interactive dashboarding.

---

## 🎯 Project Objectives

The primary objectives of this project were to:

- Monitor overall platform performance.
- Measure profitability and return on investment (ROI).
- Analyze customer betting behavior.
- Identify high-value and high-risk bettors.
- Understand time-based betting patterns.
- Evaluate performance across sports and bet types.
- Develop an executive-level reporting solution for decision-makers.

---

## 🛠️ Technology Stack

### Database & Querying
- SQL Server

### Data Transformation
- Power Query

### Data Visualization
- Power BI

### Data Modeling & Calculations
- DAX (Data Analysis Expressions)

---

## 📂 Dataset Information

The project utilizes a simulated SportyBet transactional dataset containing approximately **3,000 betting records**.

### Key Fields

| Field | Description |
|---------|------------|
| Bet ID | Unique betting transaction identifier |
| User ID | Unique bettor identifier |
| Bet Date | Date and time of betting activity |
| Sport | Sport category |
| Bet Type | Single, Accumulator, System |
| Stake | Amount wagered |
| Odds | Betting odds |
| Outcome | Win/Loss |
| Payout | Amount paid out |
| Profit | Platform profit/loss from bet |
| Month Name | Derived time dimension |
| Day Type | Weekend or Weekday |
| User Segment | Customer classification |

---

## 🗄️ SQL Analysis Phase

SQL Server was used as the primary environment for data exploration and analytical querying.

The SQL phase focused on:

### Data Validation
- Record verification
- Null value inspection
- Data consistency checks

### Performance Analysis
- Total betting volume
- Total stake analysis
- Profitability calculations
- Win/Loss evaluation

### Customer Analysis
- User activity tracking
- Top bettor identification
- Betting frequency analysis

### Time Analysis
- Daily betting trends
- Monthly performance analysis
- Activity pattern discovery

### Risk Analysis
- High-risk betting identification
- Profitability assessment by category

---

## 📊 SQL Business Questions Solved

### Platform Performance
- What is the total number of bets placed?
- What is the total amount staked?
- What is the overall platform profit?
- What is the overall ROI?

### Customer Intelligence
- Who are the top bettors by stake amount?
- Which users generate the highest betting activity?
- Which users contribute most to profitability?

### Sport Analysis
- Which sports attract the highest betting volume?
- Which sports generate the most profit?
- Which sports present the highest risk exposure?

### Betting Behavior
- Which bet types are most popular?
- Which bet types generate the highest returns?
- How does betting activity vary over time?

### Time Intelligence
- What are the busiest betting periods?
- Which days generate the highest activity?
- What are the peak betting hours?


<img width="574" height="513" alt="image" src="https://github.com/user-attachments/assets/9883f289-d079-48ea-ab13-95a3ff2bc0c7" />

<img width="612" height="497" alt="image" src="https://github.com/user-attachments/assets/838ff924-c7b1-44ca-857f-aa0bf012bbc0" />



---

## 🔄 Data Transformation (Power Query)

Additional business-focused dimensions were created to improve analytical depth.

### Time Intelligence Columns
- Month Name
- Month Number
- Day Name
- Day Number
- Day Type (Weekend/Weekday)

### Customer Intelligence Columns
- User Segment
- Betting Persona

### Data Preparation Activities
- Data type corrections
- Custom column creation
- Business rule implementation
- Model optimization

---

# 📈 Dashboard Architecture

The dashboard was developed using a multi-page analytical structure.

---

## 📌 Page 1 — Executive Overview

### Purpose
Provide a high-level summary of platform performance.

### Key KPIs
- Total Bets
- Total Stake
- Total Profit
- ROI
- Win Rate

### Analysis Areas
- Betting performance overview
- Sport contribution analysis
- Profitability monitoring
- Monthly performance trends

### Business Value
Provides management with an immediate view of overall platform health and performance.


---

## 👥 Page 2 — Customer & Betting Intelligence

### Purpose
Analyze customer value, engagement, and betting behavior.

### Key KPIs
- Total Users
- Bets Per User
- Average Stake Per User
- Average Profit Per User

### Analysis Areas
- Top Bettors
- User Segmentation
- Betting Personas
- Customer Performance Analysis
- Stake vs Profit Analysis

### Business Value
Supports customer retention, segmentation, and marketing strategy decisions.


---

## ⏱️ Page 3 — Time Intelligence & Trend Analysis

### Purpose
Understand how betting activity changes over time.

### Key KPIs
- Peak Betting Hour
- Most Active Day
- Weekend Betting Percentage
- Average Daily Profit

### Analysis Areas
- Monthly Trends
- Daily Trends
- Hourly Activity
- Weekend vs Weekday Analysis
- Betting Activity Heatmaps

### Business Value
Enables optimization of promotions, campaigns, and operational planning.


---

## 💰 Page 4 — Profitability & Risk Analysis

### Purpose
Evaluate revenue generation and identify business risks.

### Key KPIs
- Total Profit
- ROI
- Profit Margin
- High-Risk Betting Percentage

### Analysis Areas
- Profit by Sport
- Profit by Bet Type
- ROI Analysis
- Risk Exposure Assessment
- Loss-Making Categories

### Business Value
Supports strategic decisions related to profitability optimization and risk management.


---

## 📐 DAX Measures Developed

### Core Metrics
- Total Bets
- Total Stake
- Total Profit
- Total Wins

### Performance Metrics
- ROI
- Win Rate
- Profit Margin

### Customer Metrics
- Total Users
- Bets Per User
- Average Stake Per User
- Average Profit Per User

### Time Intelligence Metrics
- Peak Betting Hour
- Most Active Day
- Month-over-Month Performance

### Dynamic KPI Features
- Trend Indicators
- Conditional Formatting
- Dynamic Performance Arrows
- Automated Color Logic

---

## 📊 Key Insights Generated

The dashboard enables stakeholders to identify:

- The most profitable sports categories.
- Customer segments driving betting activity.
- High-value bettors contributing significant revenue.
- Peak betting periods and customer engagement trends.
- Risk-heavy betting patterns requiring monitoring.
- Opportunities for profitability improvement.
- Performance trends across multiple time periods.

---

## 🎓 Skills Demonstrated

### SQL
- Data Querying
- Aggregations
- Joins
- Filtering
- Grouping
- Analytical Reporting

### Power BI
- Dashboard Design
- Interactive Reporting
- Data Modeling
- Storytelling with Data

### Power Query
- Data Cleaning
- Data Transformation
- Feature Engineering

### DAX
- KPI Development
- Time Intelligence
- Trend Analysis
- Advanced Business Calculations

### Business Analytics
- Customer Segmentation
- Risk Analysis
- Profitability Analysis
- Performance Monitoring

---

## 📌 Project Outcomes

This project successfully transformed raw betting transaction data into an interactive business intelligence solution capable of:

- Monitoring betting platform performance.
- Understanding customer behavior.
- Identifying revenue-generating opportunities.
- Detecting risk exposure patterns.
- Supporting data-driven decision-making.

The solution demonstrates how SQL Server and Power BI can be leveraged together to build a complete analytics workflow from data extraction and analysis to visualization and executive reporting.

---

## 🏁 Conclusion

The SportyBet Betting Analytics Dashboard demonstrates the complete analytics lifecycle, from SQL-based data exploration and business analysis to advanced Power BI reporting and visualization.

By integrating customer analytics, profitability monitoring, risk assessment, and time intelligence, the dashboard provides a comprehensive view of sportsbook operations while showcasing practical skills in SQL, Power BI, Power Query, DAX, data modeling, and business intelligence.

This project highlights the power of data-driven decision-making and serves as a practical example of how analytics can be used to improve performance, identify opportunities, and support strategic business growth.

---

## 📷 Dashboard Preview

> Add screenshots of each dashboard page here.

### Executive Overview
<img width="1041" height="549" alt="image" src="https://github.com/user-attachments/assets/6861cf88-316c-4df5-a2c4-03e9f1dafc95" />

### Customer & Betting Intelligence
<img width="1045" height="544" alt="image" src="https://github.com/user-attachments/assets/7c30b046-61cf-460f-a9e8-34b17b8fe0d7" />

### Time Intelligence & Trend Analysis
<img width="1040" height="550" alt="image" src="https://github.com/user-attachments/assets/5e8e95a6-c124-4519-b639-022cc49dfe7a" />

### Profitability & Risk Analysis
<img width="1044" height="544" alt="image" src="https://github.com/user-attachments/assets/4e8c77e9-cab4-4a45-96f0-0727b3e109b4" />

---

## 📁 Repository Structure

```text
SportyBet-Betting-Analytics/
│
├── Dataset/
│   └── sportybet_dataset.csv
│
├── SQL Queries/
│   └── SportyBet_SQL_Analysis.sql
│
├── Power BI Dashboard/
│   └── SportyBet_Analytics.pbix
│
├── Screenshots/
│   ├── Executive Overview.png
│   ├── Customer & Betting Intelligence.png
│   ├── Time Intelligence & Trend Analysis.png
│   └── Profitability & Risk Analysis.png
│
└── README.md
```

## 👤 Author
**ONWUKA CHUKWUMA**  
 Data Analyst | Python   

---


<img width="285" height="177" alt="image" src="https://github.com/user-attachments/assets/69bd1e5a-da8d-462d-a825-2ce511ef35d9" />


For any collaborative work or gigs, reach out to me at:

📧 Email: Bosschuks97@gmail.com  📞: 07064106675
