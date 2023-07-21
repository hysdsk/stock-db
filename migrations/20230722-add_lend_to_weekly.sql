ALTER TABLE `kabu`.`symbol_weekly_info` 
ADD COLUMN `lend_balance` INT NULL DEFAULT NULL COMMENT '貸付残高数量' AFTER `buy_balance_system_credit_per`,
ADD COLUMN `lend_balance_value` INT NULL DEFAULT NULL COMMENT '貸付残高金額' AFTER `lend_balance`,
ADD COLUMN `borrow_balance_self` INT NULL DEFAULT NULL COMMENT '借入残高（自己）数量' AFTER `lend_balance_value`,
ADD COLUMN `borrow_balance_self_value` INT NULL DEFAULT NULL COMMENT '借入残高（自己）金額' AFTER `borrow_balance_self`,
ADD COLUMN `borrow_balance_sublease` INT NULL DEFAULT NULL COMMENT '借入残高（転貸）数量' AFTER `borrow_balance_self_value`,
ADD COLUMN `borrow_balance_sublease_value` INT NULL DEFAULT NULL COMMENT '借入残高（転貸）金額' AFTER `borrow_balance_sublease`,
ADD COLUMN `lend_contract` INT NULL DEFAULT NULL COMMENT '新規貸付成約高数量' AFTER `borrow_balance_sublease_value`,
ADD COLUMN `lend_contract_value` INT NULL DEFAULT NULL COMMENT '新規貸付成約高金額' AFTER `lend_contract`,
ADD COLUMN `borrow_contract_self` INT NULL DEFAULT NULL COMMENT '新規借入成約高（自己）数量' AFTER `lend_contract_value`,
ADD COLUMN `borrow_contract_self_value` INT NULL DEFAULT NULL COMMENT '新規借入成約高（自己）金額' AFTER `borrow_contract_self`,
ADD COLUMN `borrow_contract_sublease` INT NULL DEFAULT NULL COMMENT '新規借入成約高（転貸）数量' AFTER `borrow_contract_self_value`,
ADD COLUMN `borrow_contract_sublease_value` INT NULL DEFAULT NULL COMMENT '新規借入成約高（転貸）金額' AFTER `borrow_contract_sublease`;

