WITH a AS(
SELECT *, cm.symbol AS coin, cm.name AS coin_fullname
FROM `final-347314.main.binance_api` bn
LEFT JOIN `final-347314.main.cmcap_api` cm
ON bn.symbol LIKE CONCAT(cm.symbol, '%')
),

b AS(
SELECT a.*, gc.announcement, gc.category, gc.date_added, gc.description, gc.subreddit, gc.tags, gc.technical_doc, gc.twitter, gc.website
FROM a
LEFT JOIN `final-347314.main.gcs_coins` gc
ON a.coin = gc.symbol
)


SELECT *
FROM b
LEFT JOIN `final-347314.main.dim_sentiment_data` sent
ON b.coin_fullname = sent.assc_coin
WHERE coin = 'DOT'
