WITH cmc AS(
  select *
  from `final-347314.main.cmcap_api`
  where cmc_rank < 201
),

a AS(
SELECT bn.symbol AS ticker, cm.symbol AS coin, cm.name AS coin_fullname, cm.date_added, * EXCEPT(symbol, date_added, tags)
FROM `final-347314.main.binance_api` bn
LEFT JOIN cmc cm
ON bn.symbol LIKE CONCAT(cm.symbol, '%')
),

b AS(
SELECT a.*, gc.announcement, gc.category, gc.description, gc.subreddit, gc.tags, gc.technical_doc, gc.twitter, gc.website, gc.symbol as gc_symbol
FROM a
LEFT JOIN `final-347314.main.gcs_coins` gc
ON a.coin = gc.symbol
)


SELECT *
FROM b
LEFT JOIN `final-347314.main.dim_sentiment_data` sent
ON b.coin_fullname = sent.assc_coin
