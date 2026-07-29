


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




# Problem 2: Find Customers Who Purchased More Than the Average Number of Orders

## Business Scenario
> "Identify highly engaged customers."

## SQL Query

```sql
SELECT
    customer_id,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) >
(
    SELECT AVG(order_count)
    FROM
    (
        SELECT COUNT(*) AS order_count
        FROM orders
        GROUP BY customer_id
    ) x
);
```

## Explanation
This query identifies customers who have placed **more orders than the average customer**. First, the inner subquery counts the number of orders for each customer. The outer subquery then calculates the average of these order counts. Finally, the main query groups orders by `customer_id` and uses the `HAVING` clause to return only those customers whose total orders exceed the calculated average.

## SQL Concepts Used
- `GROUP BY`
- `COUNT()`
- `Subquery`
- `Aggregate Function (AVG)`
- `HAVING`
