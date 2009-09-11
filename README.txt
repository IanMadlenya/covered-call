Covered Call
	by Wes Devauld
	http://devauld.ca

== DESCRIPTION:

Command line script that will generate a chain of returns for a given equities call option chain and current price.  In no way is this script an endorsement to buy or sell any equity, or to perform any option trading.  As with all investing, due your own due diligence

== SYNOPSIS:

The ticker needs to be a valid Yahoo Ticker, and a date of the format YYYY-MM.  If no date is provided, then the front month is used.

[wdevauld:covered-call]$ ./covered_call AAPL 2009-07
Current Price: 90.58
AAPL@17.5(73.55)	Call Sale: 7355.00 (81.20%)	Stock Sale: -7308.00 (-80.68%)	Total: 47.00 (0.52%)
AAPL@20.0(71.15)	Call Sale: 7115.00 (78.55%)	Stock Sale: -7058.00 (-77.92%)	Total: 57.00 (0.63%)
AAPL@22.5(68.70)	Call Sale: 6870.00 (75.84%)	Stock Sale: -6808.00 (-75.16%)	Total: 62.00 (0.68%)
AAPL@25.0(66.22)	Call Sale: 6622.50 (73.11%)	Stock Sale: -6558.00 (-72.40%)	Total: 64.50 (0.71%)
AAPL@30.0(60.90)	Call Sale: 6090.00 (67.23%)	Stock Sale: -6058.00 (-66.88%)	Total: 32.00 (0.35%)
AAPL@35.0(56.12)	Call Sale: 5612.50 (61.96%)	Stock Sale: -5558.00 (-61.36%)	Total: 54.50 (0.60%)
AAPL@40.0(51.48)	Call Sale: 5147.50 (56.83%)	Stock Sale: -5058.00 (-55.84%)	Total: 89.50 (0.99%)
AAPL@45.0(46.98)	Call Sale: 4697.50 (51.86%)	Stock Sale: -4558.00 (-50.32%)	Total: 139.50 (1.54%)
AAPL@50.0(42.55)	Call Sale: 4255.00 (46.98%)	Stock Sale: -4058.00 (-44.80%)	Total: 197.00 (2.17%)
AAPL@55.0(38.35)	Call Sale: 3835.00 (42.34%)	Stock Sale: -3558.00 (-39.28%)	Total: 277.00 (3.06%)
AAPL@60.0(34.30)	Call Sale: 3430.00 (37.87%)	Stock Sale: -3058.00 (-33.76%)	Total: 372.00 (4.11%)
AAPL@65.0(30.45)	Call Sale: 3045.00 (33.62%)	Stock Sale: -2558.00 (-28.24%)	Total: 487.00 (5.38%)
AAPL@70.0(26.82)	Call Sale: 2682.50 (29.61%)	Stock Sale: -2058.00 (-22.72%)	Total: 624.50 (6.89%)
AAPL@75.0(23.48)	Call Sale: 2347.50 (25.92%)	Stock Sale: -1558.00 (-17.20%)	Total: 789.50 (8.72%)
AAPL@80.0(20.38)	Call Sale: 2037.50 (22.49%)	Stock Sale: -1058.00 (-11.68%)	Total: 979.50 (10.81%)
AAPL@85.0(17.50)	Call Sale: 1750.00 (19.32%)	Stock Sale: -558.00 (-6.16%)	Total: 1192.00 (13.16%)
AAPL@90.0(15.00)	Call Sale: 1500.00 (16.56%)	Stock Sale: -58.00 (-0.64%)	Total: 1442.00 (15.92%)
AAPL@95.0(12.73)	Call Sale: 1272.50 (14.05%)	Stock Sale: 442.00 (4.88%)	Total: 1714.50 (18.93%)
AAPL@100.0(10.70)	Call Sale: 1070.00 (11.81%)	Stock Sale: 942.00 (10.40%)	Total: 2012.00 (22.21%)
AAPL@105.0(8.88)	Call Sale: 887.50 (9.80%)	Stock Sale: 1442.00 (15.92%)	Total: 2329.50 (25.72%)
AAPL@110.0(7.33)	Call Sale: 732.50 (8.09%)	Stock Sale: 1942.00 (21.44%)	Total: 2674.50 (29.53%)
AAPL@115.0(6.03)	Call Sale: 602.50 (6.65%)	Stock Sale: 2442.00 (26.96%)	Total: 3044.50 (33.61%)
AAPL@120.0(4.88)	Call Sale: 487.50 (5.38%)	Stock Sale: 2942.00 (32.48%)	Total: 3429.50 (37.86%)
AAPL@125.0(3.92)	Call Sale: 392.50 (4.33%)	Stock Sale: 3442.00 (38.00%)	Total: 3834.50 (42.33%)
AAPL@130.0(3.15)	Call Sale: 315.00 (3.48%)	Stock Sale: 3942.00 (43.52%)	Total: 4257.00 (47.00%)
AAPL@135.0(2.50)	Call Sale: 249.50 (2.75%)	Stock Sale: 4442.00 (49.04%)	Total: 4691.50 (51.79%)
AAPL@140.0(1.97)	Call Sale: 197.00 (2.17%)	Stock Sale: 4942.00 (54.56%)	Total: 5139.00 (56.73%)
AAPL@145.0(1.54)	Call Sale: 153.50 (1.69%)	Stock Sale: 5442.00 (60.08%)	Total: 5595.50 (61.77%)
AAPL@150.0(1.19)	Call Sale: 119.00 (1.31%)	Stock Sale: 5942.00 (65.60%)	Total: 6061.00 (66.91%)
AAPL@155.0(0.91)	Call Sale: 91.00 (1.00%)	Stock Sale: 6442.00 (71.12%)	Total: 6533.00 (72.12%)
AAPL@160.0(0.71)	Call Sale: 71.50 (0.79%)	Stock Sale: 6942.00 (76.64%)	Total: 7013.50 (77.43%)
AAPL@165.0(0.55)	Call Sale: 55.50 (0.61%)	Stock Sale: 7442.00 (82.16%)	Total: 7497.50 (82.77%)
AAPL@170.0(0.42)	Call Sale: 42.00 (0.46%)	Stock Sale: 7942.00 (87.68%)	Total: 7984.00 (88.14%)
AAPL@175.0(0.33)	Call Sale: 33.50 (0.37%)	Stock Sale: 8442.00 (93.20%)	Total: 8475.50 (93.57%)
AAPL@180.0(0.26)	Call Sale: 26.00 (0.29%)	Stock Sale: 8942.00 (98.72%)	Total: 8968.00 (99.01%)
AAPL@185.0(0.20)	Call Sale: 19.50 (0.22%)	Stock Sale: 9442.00 (104.24%)	Total: 9461.50 (104.45%)
AAPL@190.0(0.15)	Call Sale: 15.00 (0.17%)	Stock Sale: 9942.00 (109.76%)	Total: 9957.00 (109.92%)


The first column is the Ticker, and the strike price.  The second column is the return you would receive selling a call option half way between the bid and the ask.  The third column is return/loss on 100 shares of the equity IF IT IS CALLED AWAY FROM YOU.  The final column is the total return based on the equity amount.

MIT License