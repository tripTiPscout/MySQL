#Lab
#Task 1
CREATE TABLE `mountains` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL
);

CREATE TABLE `peaks` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `mountain_id` INT NOT NULL,
    CONSTRAINT `fk_peak_mountains` FOREIGN KEY (`mountain_id`)
        REFERENCES `mountains` (`id`)
);


#Task 2
SELECT 
    v.`driver_id`,
    v.`vehicle_type`,
    CONCAT_WS(' ', c.`first_name`, c.`last_name`) AS 'driver_name'
FROM
    `vehicles` AS v
        JOIN
    `campers` AS c ON v.`driver_id` = c.`id`;


#Task 3 
SELECT 
    starting_point AS 'route_starting_point',
    end_point AS 'route_ending_point',
    leader_id,
    CONCAT_WS(' ', c.first_name, c.last_name) AS 'leader_name'
FROM
    routes AS r
        JOIN
    campers AS c ON r.leader_id = c.id;
    
    
#Task 4
CREATE TABLE mountains (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45));
    
    create table peaks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    mountain_id INT,
    CONSTRAINT fk_peaks_mountains FOREIGN KEY (mountain_id)
        REFERENCES mountains (id)
        ON DELETE CASCADE
);











