


# Problem 1: Find Customers Who Have Never Placed an Order

## Business Scenario
> "We acquired customers through marketing campaigns, but some never made a purchase."

## SQL Query

```sql
SELECT
    c.customer_id,
    c.customer_name,
    c.email
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
```

## Explanation
This query identifies customers who have **never placed an order**. It performs a `LEFT JOIN` between the `customers` and `orders` tables, ensuring that all customers are included in the result. If a customer has no matching record in the `orders` table, the `order_id` will be `NULL`. Filtering with `WHERE o.order_id IS NULL` returns only those customers who have not made any purchases.

## SQL Concepts Used
- `LEFT JOIN`
- `NULL` filtering (`IS NULL`)
