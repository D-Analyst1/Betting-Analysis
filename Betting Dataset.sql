CREATE DATABASE bet

SELECT *
FROM bet

ALTER TABLE bet
ADD 
    month_name VARCHAR(20),
    day_name VARCHAR(20),
    day_type VARCHAR(10);

	UPDATE bet
SET 
    month_name = DATENAME(MONTH, bet_date),
    day_name = DATENAME(WEEKDAY, bet_date),
    day_type = CASE 
        WHEN DATENAME(WEEKDAY, bet_date) IN ('Saturday', 'Sunday') 
        THEN 'Weekend'
        ELSE 'Weekday'
    END;

------BASIC EXPLORATION
-- Total number of bets
SELECT COUNT(*) AS total_bet FROM bet;

-- Number of unique users
SELECT COUNT(DISTINCT user_id) AS total_users FROM bet;

------CORE BUSINESS METRICS
-- Total stake (money wagered)
SELECT SUM(stake) AS total_stake FROM bet;

-- Total payout
SELECT SUM(payout) AS total_payout FROM bet;

-- Total profit (company perspective)
SELECT SUM(profit) AS total_profit FROM bet;


------USER ANALYSIS
-- Total bets per user
SELECT user_id, COUNT(*) AS total_bets
FROM bet
GROUP BY user_id
ORDER BY total_bets DESC;

-- Total stake per user
SELECT user_id, SUM(stake) AS total_stake
FROM bet
GROUP BY user_id
ORDER BY total_stake DESC;


-- Win rate per user
SELECT 
    user_id,
    COUNT(*) AS total_bets,
    SUM(CASE WHEN outcome = 'Win' THEN 1 ELSE 0 END) AS wins,
    ROUND(
        SUM(CASE WHEN outcome = 'Win' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS win_rate
FROM bet
GROUP BY user_id
ORDER BY win_rate DESC;


------PROFITABILITY ANALYSIS
-- Profit per user (company view)
SELECT 
    user_id,
    SUM(profit) AS total_profit
FROM bet
GROUP BY user_id
ORDER BY total_profit DESC;

-- Most profitable sport
SELECT 
    sport,
    SUM(profit) AS total_profit
FROM bet
GROUP BY sport
ORDER BY total_profit DESC;

-----BETTING BEHAVIOR INSIGHTS
-- Average stake by bet type
SELECT 
    bet_type,
    AVG(stake) AS avg_stake
FROM bet
GROUP BY bet_type;

-- Win rate by bet type
SELECT 
    bet_type,
    ROUND(
        SUM(CASE WHEN outcome = 'Win' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS win_rate
FROM bet
GROUP BY bet_type;

----TIME-BASED ANALYSIS
-- Bets per day
SELECT 
    CAST(bet_date AS DATE) AS bet_day,
    COUNT(*) AS total_bets
FROM bet
GROUP BY CAST(bet_date AS DATE)
ORDER BY bet_day;

-- Profit by day
SELECT 
    day_name,
    SUM(profit) AS daily_profit
FROM bet
GROUP BY day_name;

----USER SEGMENTATION
-- Classify users into risk categories
SELECT 
    user_id,
    SUM(stake) AS total_stake,
    COUNT(*) AS total_bets,
    CASE 
        WHEN SUM(stake) > 50000 THEN 'High Roller'
        WHEN COUNT(*) > 50 THEN 'Frequent Bettor'
        ELSE 'Casual User'
    END AS user_segment
FROM bet
GROUP BY user_id;



----RANKING USERS
-- Top bettors by stake
SELECT 
    user_id,
    SUM(stake) AS total_stake,
    RANK() OVER (ORDER BY SUM(stake) DESC) AS rank_position
FROM bet
GROUP BY user_id;


-- Detect previous outcome (LAG)
SELECT 
    user_id,
    bet_date,
    outcome,
    LAG(outcome) OVER (PARTITION BY user_id ORDER BY bet_date) AS previous_outcome
FROM bet;

----CHURN / ACTIVITY ANALYSIS
-- Last activity per user
SELECT 
    user_id,
    MAX(bet_date) AS last_bet
FROM bet
GROUP BY user_id;

-- ROI per user
SELECT 
    user_id,
    SUM(payout) / SUM(stake) AS roi
FROM bet
GROUP BY user_id;

-- Average odds for winning bets
SELECT 
    AVG(odds) AS avg_winning_odds
FROM bet
WHERE outcome = 'Win';