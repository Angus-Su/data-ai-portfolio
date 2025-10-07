# 📦 Logistics Customer Service Analysis (一路發集運客服分析)

This mock project simulates customer service data from a logistics company operating warehouses in **Germany, USA, Japan, China, and Taiwan**.  
It analyzes customer inquiries, complaint trends, and satisfaction scores to support **policy improvement and service optimization**.

---

## 📊 Project Goal
To identify the most common customer issues in the past 6 months  
and provide data-driven insights to help adjust future company policies.

---

## 🧠 Dataset Overview
**Fields included:**
| Column | Description |
|--------|--------------|
| Date | Inquiry record date |
| Warehouse | Warehouse location (DE / US / JP / CN / TW) |
| Category | Main issue type (Product / Order / Storage / Others) |
| Subcategory | Detailed issue (e.g., damaged item, customs issue, delayed shipment) |
| Agent | Customer service staff name |
| Handling Time (min) | Time to resolve the issue |
| Satisfaction | Customer satisfaction rating (1–5) |
| Escalated | Whether escalated to supervisor (Yes/No) |

> 💡 Data volume suggestion: 3,000–10,000 rows  
> You can use Excel or Python (faker library) to simulate data.

---

## 📈 Analysis Plan

| Step | Objective | Tool |
|------|------------|------|
| 1 | Clean and format data | Excel / SQL |
| 2 | Group issues by category | SQL GROUP BY |
| 3 | Calculate average satisfaction per category | SQL / Power BI |
| 4 | Visualize issue distribution | Power BI |
| 5 | Suggest operational improvements | Report summary |

---

## 📋 Example Insights
- **Order-related issues** make up 40% of all inquiries.  
- **Storage-related complaints** have the lowest average satisfaction (3.6).  
- **Germany and Japan warehouses** show higher escalation rates.  

---

## 🧭 Business Recommendations
1. Establish **AI FAQ chatbot** for recurring product questions.  
2. Improve **warehouse communication SOP** for international transfers.  
3. Add **auto-notification system** for delayed or rerouted packages.  
4. Provide **training for high-escalation agents** to improve efficiency.

---

## 🧰 Tools Used
- **SQL** for data aggregation  
- **Power BI** for visualization  
- **Excel** for dataset preparation  
- **Markdown** for documentation

---

> 📁 Files in this folder:
> - `dataset_logistics_FAQ.csv` ← mock dataset (to be uploaded)
> - `logistics_analysis.sql` ← SQL queries
> - `powerbi_dashboard.pbix` ← Power BI dashboard file
