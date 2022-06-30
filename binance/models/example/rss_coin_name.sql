SELECT DISTINCT title, date, IFNULL(coin_name, 'General') assc_coin, datetime
FROM `final-347314.main.rss-feed` a
LEFT JOIN `final-347314.main.dim_symbolcoinname` b 
ON a.title LIKE CONCAT('%', CONCAT(b.coin_name, '%'))
