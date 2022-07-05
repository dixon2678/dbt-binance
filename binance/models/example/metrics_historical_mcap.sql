SELECT * 
FROM `final-347314.main.gcs_coins` coins
INNER JOIN `final-347314.main.gcs_mcapcsv` mcap 
ON coins.id = mcap.coin_id
