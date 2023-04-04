# Data Hackathon: Cherry Tree Flowers

![cherry tree flowers](cherry-blossom-festival-sydney.jpg)

## The Data

The original data can be found [here](http://atmenv.envi.osakafu-u.ac.jp/aono/kyophenotemp4/) together with information on how the data was collected.

I also provided a pre-cleaned version of the data [here](data/cleaned_data.csv).

The data contains the following columns:

- AD: the year
- Full-flowering date
  - DOY encoded as the day of the year (e.g. day 89 is April 1)
  - as date where 401 encodes April 1
- source code: which scientific paper first reported the data point? Encoded as integers 1 to 8
- data type code: which source was used to deduce the date? (e.g. diary, newspaper etc). Encoded as integers 0 to 9
- reference name: Name of the historic document

Together with the time of cherry tree blossom time, the original paper also collected and estimated (average) temperature in March.
The temperature data has the following collumns:

- AD: the year
- estimated temperature: an estimated temperature (either smoothed or non-smoothed)
- observed temperature
- upper/lower limit: (only for the smoothed estimate) limits of the 95% confidence interval in smoothing procedure
- urban bias (hikone/kameoka weather station): urban bias was substracted

For more details on the columns, please refer to the original [paper](http://atmenv.envi.osakafu-u.ac.jp/aono/kyophenotemp4/)



## Data Questions

Some ideas for interesting questions to explore with this data:

### Forecasting and Predicting
The data only contains the dates/temperature until 2015 and has many years without any data. 

__Forecast flower date and temperature__

- Can we extrapolate the flowering date and temperature for the years after? 
- Finding the missing data from the last years, how do predictions from this data compare to the actual flowering dates and temperature?
- What does the data forecast for the next years?

__Predicting temperature__

- Using only the flowering dates and the observed temperature, can we predict the temperature?
- How does our result compare to the estimated temperature provided in the data?

__Imputing and Interpolating__

- Can we impute the missing data for the years without data?

Useful resources for forecasting timeseries:

- Book on timeseries [Forecasting. Principles and Practise](https://otexts.com/fpp2/) (uses R), e.g. chapter 5, 7, 8
- The book [Statistical Rethinking](https://xcelab.net/rm/statistical-rethinking/), Chapter 4, uses splines to estimate the flowering dates (also R, but Python ports)
- [Splines in Python](https://www.kirenz.com/post/2021-12-06-regression-splines-in-python/regression-splines-in-python/)
- [Timeseries Forecasting Methods in Python- Cheat Sheet](https://machinelearningmastery.com/time-series-forecasting-methods-in-python-cheat-sheet/)
- [Regression in scikit-learn](https://scikit-learn.org/stable/supervised_learning.html#supervised-learning)


### Visualization
The data lends itself well to some flowery visualizations:

- [Some twitter user](https://twitter.com/RobinRohwer/status/1639097356657512449)) (with R code!)
- [The Economist](https://www.economist.com/graphic-detail/2017/04/07/japans-cherry-blossoms-are-emerging-increasingly-early)
- [BBC](https://www.bbc.com/news/world-asia-56574142)
- [Viz of Washington cherry trees](https://datainnovation.org/2023/03/visualizing-cherry-blossoms-blooming-periods/)


A fun exercise can be to try to replicate some of these visualizations with your favorite plotting tool as good as you can.

Plotting Tutorials:

- [Ggplot](https://www.cedricscherer.com/2019/08/05/a-ggplot2-tutorial-for-beautiful-plotting-in-r/)
- [Ggplot graph gallery](https://r-graph-gallery.com/?utm_content=cmp-true)
- [Python graph gallery](https://www.python-graph-gallery.com) has code for Matplotlib, Seaborn and plotly.
- [Seaborn](https://seaborn.pydata.org/tutorial.html)
- [Plotnine](https://plotnine.readthedocs.io/en/stable/) (port of ggplot, so the ggplot tutorial should work with some minor tweaking)

