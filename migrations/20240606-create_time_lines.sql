CREATE TABLE `kabu`.`top_line` (
  `opening_date` DATE NOT NULL COMMENT '開場日',
  `symbol_code` VARCHAR(4) NOT NULL COMMENT '銘柄コード',
  `current_datetime` TIMESTAMP NOT NULL COMMENT '現在時刻',
  `current_price` FLOAT NULL DEFAULT NULL COMMENT '現値',
  `previous_close_price` FLOAT NULL COMMENT '前日終値',
  `opening_price` FLOAT NULL COMMENT '当日始値',
  `vwap` FLOAT NULL COMMENT '出来高加重平均値',
  `trading_value` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '当日売買代金',
  `recent_value` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '直近売買代金',
  `bid_sign` VARCHAR(4) NULL COMMENT '売気配',
  `ask_sign` VARCHAR(4) NULL COMMENT '買気配',
  PRIMARY KEY (`opening_date`, `symbol_code`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE `kabu`.`time_lines` (
  `opening_date` DATE NOT NULL COMMENT '開場日',
  `symbol_code` VARCHAR(4) NOT NULL COMMENT '銘柄コード',
  `tick_time` TIME NOT NULL COMMENT 'ティック時間',
  `opening_price` FLOAT NULL COMMENT '始値',
  `high_price` FLOAT NULL COMMENT '高値',
  `low_price` FLOAT NULL COMMENT '安値',
  `close_price` FLOAT NULL COMMENT '終値',
  `vwap` FLOAT NULL COMMENT '売買高加重平均値',
  `large_buy_value` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '大口買代金',
  `middle_buy_value` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '中口買代金',
  `small_buy_value` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '小口買代金',
  `large_sell_value` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '大口売代金',
  `middle_sell_value` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '中口売代金',
  `small_sell_value` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '小口売代金',
  `bid_limit_order` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '売指値注文数量',
  `ask_limit_order` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '買指値注文数量',
  `bid_market_order` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '売成行注文数量',
  `ask_market_order` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '買成行注文数量',
  `bid_over_order` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '売OVER注文数量',
  `ask_under_order` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '買UNDER注文数量',
  PRIMARY KEY (`opening_date`, `symbol_code`, `tick_time`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

