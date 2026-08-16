-- Google Fiber Repeat Calls Analysis
-- Data Pipeline: Market Consolidation
-- Tool: Google BigQuery
--
-- Purpose:
-- Combine customer support records from three markets into
-- a single target table for downstream analysis in Tableau.


CREATE OR REPLACE TABLE
  `project-9f62eb2a-b23d-4909-ae3.fiber.fiber_target` AS

-- Market 1
SELECT *
FROM `project-9f62eb2a-b23d-4909-ae3.fiber.market1`

UNION ALL

-- Market 2
SELECT *
FROM `project-9f62eb2a-b23d-4909-ae3.fiber.market2`

UNION ALL

-- Market 3
SELECT *
FROM `project-9f62eb2a-b23d-4909-ae3.fiber.market3`;
