WITH a AS(
  SELECT assc_coin, pred, count(pred) num
  FROM `final-347314.main.rss_sentiment_pred`
  GROUP BY assc_coin, pred
),

b AS(
SELECT ROW_NUMBER() OVER (PARTITION BY a.assc_coin ORDER BY a.num DESC) as rn, assc_coin, pred, num
FROM a
)

SELECT assc_coin, pred
FROM b
WHERE rn = 1
