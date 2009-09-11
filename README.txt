Covered Call
	by Wes Devauld
	http://devauld.ca

== DESCRIPTION:

Command line script that will generate a chain of returns for a given equities call option chain and current price.  In no way is this script an endorsement to buy or sell any equity, or to perform any option trading.  As with all investing, due your own due diligence

== SYNOPSIS:

The ticker needs to be a valid Yahoo Ticker, and a date of the format YYYY-MM.  If no date is provided, then the front month is used.  Percentages are first as a function of price to underlying share cost, the second is annualized based on the days until expiration.

[wdevauld:covered-call]$ covered-call -h 

Help for commands:
  -f          (Optional, takes 1 argument)
                  Format (csv,human) default: human
  -t          (Required, takes 1 argument)
                  The underlying equity's ticker
  -h          (Optional, takes 0 arguments)
                  Help
  -e          (Optional, takes 1 argument)
                  The expiration month [eg: 2010-02] default: next expiration

[wdevauld:covered-call]$ covered_call -t AAPL -e 2010-01 
Current Price: 172.06
Days until expiration: 126
AAPL@140.0 Midpoint: 36.03      Call Sale: 3602.50 (20.94% | 73.45%)    Stock Sale: -3206.00 (-18.63% | -44.97%)        Total: 396.50 (2.30% | 6.82%)
AAPL@145.0 Midpoint: 31.97      Call Sale: 3197.50 (18.58% | 63.85%)    Stock Sale: -2706.00 (-15.73% | -39.08%)        Total: 491.50 (2.86% | 8.50%)
AAPL@150.0 Midpoint: 28.12      Call Sale: 2812.50 (16.35% | 55.05%)    Stock Sale: -2206.00 (-12.82% | -32.80%)        Total: 606.50 (3.52% | 10.56%)
AAPL@155.0 Midpoint: 24.50      Call Sale: 2450.00 (14.24% | 47.06%)    Stock Sale: -1706.00 (-9.92% | -26.10%) Total: 744.00 (4.32% | 13.05%)
AAPL@160.0 Midpoint: 21.18      Call Sale: 2117.50 (12.31% | 39.96%)    Stock Sale: -1206.00 (-7.01% | -18.98%) Total: 911.50 (5.30% | 16.13%)
AAPL@165.0 Midpoint: 18.05      Call Sale: 1805.00 (10.49% | 33.51%)    Stock Sale: -706.00 (-4.10% | -11.43%)  Total: 1099.00 (6.39% | 19.65%)
AAPL@170.0 Midpoint: 15.32      Call Sale: 1532.50 (8.91% | 28.04%)     Stock Sale: -206.00 (-1.20% | -3.43%)   Total: 1326.50 (7.71% | 24.00%)
AAPL@175.0 Midpoint: 12.82      Call Sale: 1282.50 (7.45% | 23.15%)     Stock Sale: 294.00 (1.71% | 5.03%)      Total: 1576.50 (9.16% | 28.91%)
AAPL@180.0 Midpoint: 10.60      Call Sale: 1060.00 (6.16% | 18.91%)     Stock Sale: 794.00 (4.61% | 13.96%)     Total: 1854.00 (10.78% | 34.51%)
AAPL@185.0 Midpoint: 8.70       Call Sale: 870.00 (5.06% | 15.36%)      Stock Sale: 1294.00 (7.52% | 23.37%)    Total: 2164.00 (12.58% | 40.94%)
AAPL@190.0 Midpoint: 7.05       Call Sale: 705.00 (4.10% | 12.34%)      Stock Sale: 1794.00 (10.43% | 33.28%)   Total: 2499.00 (14.52% | 48.12%)
AAPL@195.0 Midpoint: 5.75       Call Sale: 575.00 (3.34% | 9.99%)       Stock Sale: 2294.00 (13.33% | 43.70%)   Total: 2869.00 (16.67% | 56.32%)
AAPL@200.0 Midpoint: 4.60       Call Sale: 460.00 (2.67% | 7.94%)       Stock Sale: 2794.00 (16.24% | 54.63%)   Total: 3254.00 (18.91% | 65.16%)
AAPL@210.0 Midpoint: 2.88       Call Sale: 288.00 (1.67% | 4.93%)       Stock Sale: 3794.00 (22.05% | 78.11%)   Total: 4082.00 (23.72% | 85.28%)

The first column is the Ticker, and the strike price.  The second column is the return you would receive selling a call option half way between the bid and the ask.  The third column is return/loss on 100 shares of the equity IF IT IS CALLED AWAY FROM YOU.  The final column is the total return based on the equity amount.

MIT License
