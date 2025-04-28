# Warehouse-Operations-Reporting

```markdown
# Warehouse Operations Reporting – PepsiCo (Professional Experience)

**Objective**  
Support warehouse operations with data-driven insights to monitor stock flow, order accuracy, and employee performance.

**Tools Used**  
- SQL (inventory reporting, join logic, KPI tracking)  
- Excel (data aggregation, weekly reports)  
- Power BI (visual KPIs and slicers)

**Overview**  
Using real warehouse experience, created structured reports to support management with operational metrics such as fill rate, product movement, and performance trends.

**Highlights**  
- Tracked fill rate and daily movement with SQL queries  
- Built Excel tools for inventory discrepancy reports  
- Designed a Power BI dashboard to visualize fulfillment efficiency

**Sample SQL Query**
```sql
SELECT 
  order_date, 
  COUNT(order_id) AS total_orders,
  SUM(CASE WHEN status = 'Filled' THEN 1 ELSE 0 END) AS filled_orders,
  ROUND(SUM(CASE WHEN status = 'Filled' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS fill_rate
FROM warehouse_orders
GROUP BY order_date
ORDER BY order_date DESC;
