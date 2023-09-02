ALTER TABLE `kabu`.`symbols` 
ADD COLUMN `total_market_value` DOUBLE NULL DEFAULT NULL COMMENT '時価総額' AFTER `bis_category_code`;
