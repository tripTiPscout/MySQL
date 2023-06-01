#Task 1
SELECT d.`manager_id` as `employee_id`,
CONCAT_WS(' ', e.`first_name`, e.`last_name`) as `full_name`,
d.`department_id`, d.`name` as `department_name`
FROM `departments` as d
JOIN `employees`as e 
ON d.`manager_id` = e.`employee_id`
ORDER BY e.`employee_id`
LIMIT 5;


#Task 2
SELECT t.`town_id`, 
t.`name` as `town_name`,
a.`address_text`  
FROM
`addresses` as a
JOIN `towns` as t
ON a.`town_id` = t.`town_id`
WHERE a.`town_id` IN (9, 15, 32) 
ORDER BY a.`town_id`, a.`address_id`;



#Task 3
SELECT 
`employee_id`,
`first_name`,
`last_name`,
`department_id`,
`salary`
FROM `employees`
WHERE `manager_id` IS NULL; 



#Task 4
SELECT 
COUNT(*) AS `count`
FROM
`employees` AS e
WHERE
e.`salary` > 
(SELECT AVG(e1.`salary`)
FROM `employees` AS e1);
