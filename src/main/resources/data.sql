-- MySQL dump 10.13
-- ※初期データを入れたいときはここにINSERT文を追加してください
-- INSERT IGNORE INTO ...でデータが存在するときのエラーを回避できます。

-- 取引先(companies)初期データ
LOCK TABLES `bugslife`.`companies` WRITE;
INSERT IGNORE INTO `bugslife`.`companies` VALUES
    (1,NOW(),NOW(),'アドレスレス','company@gmail.com','会社その１','08000000000','0000000')
;
UNLOCK TABLES;

-- 取引金額(transaction_amonuts ※related companies)初期データ
LOCK TABLES `bugslife`.`transaction_amounts` WRITE;
INSERT IGNORE INTO `bugslife`.`transaction_amounts` VALUES
    (1,NOW(),NOW(),1,'2023-06-01 00:00:00.000000',_binary '','入金確認済み',_binary '',1000),
    (2,NOW(),NOW(),1,'2023-06-15 00:00:00.000000',_binary '\0','期限までの支払いが必要',_binary '\0',100000)
;
UNLOCK TABLES;

-- tax_typesテーブル初期データ
LOCK TABLES `bugslife`.`tax_types` WRITE;
INSERT IGNORE INTO `bugslife`.`tax_types` VALUES
    (1,NOW(),NOW(), 0, 'Floor', 0),
    (2,NOW(),NOW(), 0, 'Round', 0),
    (3,NOW(),NOW(), 0, 'Ceil', 0),
    (4,NOW(),NOW(), 0, 'Floor', 1),
    (5,NOW(),NOW(), 0, 'Round', 1),
    (6,NOW(),NOW(), 0, 'Ceil', 1),
    (7,NOW(),NOW(), 8, 'Floor', 0),
    (8,NOW(),NOW(), 8, 'Round', 0),
    (9,NOW(),NOW(), 8, 'Ceil', 0),
    (10,NOW(),NOW(), 8, 'Floor', 1),
    (11,NOW(),NOW(), 8, 'Round', 1),
    (12,NOW(),NOW(), 8, 'Ceil', 1),
    (13,NOW(),NOW(), 10, 'Floor', 0),
    (14,NOW(),NOW(), 10, 'Round', 0),
    (15,NOW(),NOW(), 10, 'Ceil' , 0),
    (16,NOW(),NOW(), 10, 'Floor', 1),
    (17,NOW(),NOW(), 10, 'Round', 1),
    (18,NOW(),NOW(), 10, 'Ceil' , 1)
;
UNLOCK TABLES;

