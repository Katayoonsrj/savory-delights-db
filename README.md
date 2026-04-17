# Savory Delights — Relational Database Design

**CS 325 · Database Design · Cal Poly Humboldt · Fall 2025**

---

## Overview

A fully implemented relational database for **Savory Delights**, a catering and personalized meal delivery company that specializes in customizable menus, locally sourced ingredients, and dietary-restriction-friendly options.

The database was designed from scratch — from a written business scenario through entity-relationship modeling, schema normalization, population with realistic sample data, analytical queries, formatted business reports, and automated PL/SQL triggers.

---

## Features

- **33-table schema** normalized to Third Normal Form (3NF)
- **Full ER diagram** and schema documentation
- **29 analytical SQL queries** — joins, nested subqueries, aggregates, GROUP BY, compound WHERE conditions
- **7 formatted business reports** — staff rosters, certification compliance, order cost analysis, ingredient sourcing, and more
- **PL/SQL triggers** automatically enforcing key business rules
- **2,300+ rows** of realistic sample data across all tables

---

## Tech Stack

`Oracle SQL` · `PL/SQL` · `SQL*Plus` · `Linux / SSH`

---

## Database Schema Highlights

The schema models the full operations of a catering and meal delivery business:

| Domain | Tables |
|--------|--------|
| Clients & Orders | `client`, `client_allergies`, `orders`, `package`, `meal_delivery`, `order_items` |
| Staff & Scheduling | `event_staff`, `chefs`, `other_staff`, `chef_cuisines`, `work_assignment`, `employee_certifications` |
| Menu & Ingredients | `menu_item`, `menu_item_ingredient`, `menu_item_dietary_tags`, `menu_item_allergen_tags`, `main_course`, `dessert`, `beverage`, `item_cuisine` |
| Suppliers | `supplier`, `local_farmer`, `other_supplier`, `supply_order`, `supply_order_item` |
| Logistics | `cars`, `car_allowed_uses`, `car_registration`, `car_assignment`, `equipment`, `equipment_assignment` |

---

## Business Rules Enforced by Triggers

| Trigger | Rule |
|---------|------|
| `trg_car7_restriction` | Van CA07 is restricted exclusively to meal delivery orders — any attempt to assign it to an event package raises an application error |
| `trg_order_actual_cost` | Actual order cost auto-recalculates whenever items are added, updated, or removed from an order |

---

## Files

| File | Description |
|------|-------------|
| `325design.sql` | All table definitions, primary/foreign key constraints, and check constraints |
| `325triggers.sql` | PL/SQL triggers enforcing business rules |
| `325queries.sql` | 29 representative analytical queries with prompts explaining each |
| `325query-results.txt` | Output from running all queries against the populated database |
| `325populate.sql` | Full sample data population script (2,300+ rows) |
| `325show-contents.sql` | Displays contents of every table for verification |
| `325result-contents.txt` | Output of show-contents script |
| `325report1.sql` – `325report7.sql` | Seven formatted business reports |
| `325report1-results.txt` – `325report7-results.txt` | Output from each report |
| `325design-rs.txt` | Relational schema in text format |
| `325model.pdf` | Entity-relationship diagram |
| `325scenario.pdf` | Business scenario, requirements, and business rules |
| `325biz-rules.pdf` | Detailed business rules documentation |
| `325discussion.pdf` | Discussion of how the database supports real-world operations |
| `325readme.pdf` | Original project README with setup instructions |
| `325misc.pdf` | Additional features and enhancements beyond project requirements |

---

## How to Set Up the Database

> Requires access to an Oracle SQL environment (e.g., Oracle SQL*Plus or SQL Developer).

```sql
-- Step 1: Create all tables and constraints
@325design.sql

-- Step 2: Create PL/SQL triggers
@325triggers.sql

-- Step 3: Populate with sample data
@325populate.sql

-- Step 4: Verify all tables loaded correctly
@325show-contents.sql

-- Step 5: Run example queries
@325queries.sql

-- Step 6: Run business reports
@325report1.sql
@325report2.sql
-- ... through report7
```

---

## Sample Queries

The query file covers a wide range of analytical needs, including:

- Which chef has the most orders?
- What dishes are available for a given dietary restriction?
- Which supplier do we order the most ingredients from?
- What is the quoted vs. actual cost difference per order?
- Which staff certifications expire before upcoming event dates?
- What are the most popular menu items by cuisine type?

---

## Authors

Katayoon Seraji Nezhad · Maxine Mota
Cal Poly Humboldt — CS 325, Fall 2025
