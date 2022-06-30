

WITH maxdate AS
(
  SELECT symbol, MAX(datetime)
  FROM `final-347314.main.binance_api` a
  GROUP BY symbol
)

SELECT symbol,
  CASE
  WHEN symbol LIKE 'BTC%' THEN 'Bitcoin'
  WHEN symbol LIKE 'ETH%' THEN 'Ethereum'
  WHEN symbol LIKE 'SOL%' THEN 'Solana'
  WHEN symbol LIKE 'BNB%' THEN 'BNB'
  WHEN symbol LIKE 'XRP%' THEN 'Ripple'
  WHEN symbol LIKE 'DOGE%' THEN 'Dogecoin'
  WHEN symbol LIKE 'DOT%' THEN 'Polkadot'
  WHEN symbol LIKE 'SHIB%' THEN 'Shiba'
  WHEN symbol LIKE 'LTC%' THEN 'Litecoin'
  WHEN symbol LIKE 'XLM%' THEN 'Stellar'
  WHEN symbol LIKE 'XMR%' THEN 'Monero'
  WHEN symbol LIKE 'BCH%' THEN 'Bitcoin Cash'
  WHEN symbol LIKE 'MANA%' THEN 'Decentraland'
  WHEN symbol LIKE 'AXS%' THEN 'Axie Infinity'
  END AS coin_name,

  CASE
  WHEN symbol LIKE 'BTC%' THEN 'BTC'
  WHEN symbol LIKE 'ETH%' THEN 'ETH'
  WHEN symbol LIKE 'SOL%' THEN 'SOL'
  WHEN symbol LIKE 'BNB%' THEN 'BNB'
  WHEN symbol LIKE 'XRP%' THEN 'XRP'
  WHEN symbol LIKE 'DOGE%' THEN 'DOGE'
  WHEN symbol LIKE 'DOT%' THEN 'DOT'
  WHEN symbol LIKE 'SHIB%' THEN 'SHIB'
  WHEN symbol LIKE 'LTC%' THEN 'LTC'
  WHEN symbol LIKE 'XLM%' THEN 'XLM'
  WHEN symbol LIKE 'XMR%' THEN 'XMR'
  WHEN symbol LIKE 'BCH%' THEN 'BCH'
  WHEN symbol LIKE 'MANA%' THEN 'MANA'
  WHEN symbol LIKE 'AXS%' THEN 'AXS'
  END AS coin_abb
  
FROM maxdate
