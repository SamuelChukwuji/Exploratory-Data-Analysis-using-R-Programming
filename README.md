
# Exploratory Data Analysis using R Programming

## Table of Content
- [Project Overview](#project-overview)
- [Data Source](#data-source)
- [Tools](#tools)
- [Libraries](#libraries)
- [Data Preparation](#data-preparation)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Data Analysis and Visualization](#data-analysis-and-visualization)
- [Conclusion and Recommendations](#conclusion-and-recommendations)
- [Reference](#reference)

### Project Overview
This project gives an understanding of the IMDB top 1000 movies.

### Data Source
The dataset used for this analysis is "imdb_top_1000.csv" containing information about:
- Poster_Link - Link of the poster that imdb using
- Series_Title - Name of the movie
- Released_Year - Year at which that movie released
- Certificate - Certificate earned by that movie
- Runtime - Total runtime of the movie
- Genre - Genre of the movie
- IMDB_Rating - Rating of the movie at IMDB site
- Overview - Mini story/ summary
- Meta_score - Score earned by the movie
- Director - Name of the Director
- Star1 - Name of the Stars 1
- Star2 - Name of the Stars 2
- Star3 - Name of the Stars 3
- Star4 - Name of the Stars 4
- No of votes - Total number of votes
- Gross - Money earned by that movie

### Tools
1. Excel[Download here](https://github.com/SamuelChukwuji/Exploratory-Data-Analysis-using-R-Programming/blob/main/imdb_top_1000.csv)
2. RStudio[Download here](https://github.com/SamuelChukwuji/Exploratory-Data-Analysis-using-R-Programming/blob/main/Top%20gross%20earning%20movies.R)

### Libraries
ggplot2, tidyverse and scales
### Data Preparation
- Data Import
- Data Inspection
- Data Cleansing & Coercions
- Missing value check 

### Exploratory Data Analysis
This involves exploring the dataset to answer key questions like:
- Which movies have the highest gross?
- which movies have the highest ratings?
- Which factors actually contribute to high gross and ratings?

### Data Analysis and Visualization

```ggplot(top5_gross,aes(x=Gross,y=reorder(Series_Title,Gross))) +
  geom_col(aes(fill=Gross),show.legend = T) +
  labs(title = "Top 5 Movies based on Gross Revenue",x="Gross Revenue",y= NULL)+
  geom_label(aes(label=comma(Gross)),hjust=1.5)+
  scale_fill_gradient(low = "red",high = "black")+
  theme_minimal()
```

<img width="431" alt="top 5 on gross rev" src="https://github.com/SamuelChukwuji/Exploratory-Data-Analysis-using-R-Programming/assets/159860622/afbd8572-15ca-4378-a7a1-b253c1183da4">

```
ggplot(top5_rating,aes(x=IMDB_Rating,y=reorder(Series_Title,IMDB_Rating))) +
  geom_col(aes(fill=IMDB_Rating),show.legend = T) +
  labs(title = "Top 5 Movies based on Rating",x="IMDB_Rating",y= NULL)+
  geom_label(aes(label= IMDB_Rating),hjust=1.1)+
  scale_fill_gradient(low = "red",high = "black")+
  theme_minimal()
```

<img width="431" alt="top 5 on rating" src="https://github.com/SamuelChukwuji/Exploratory-Data-Analysis-using-R-Programming/assets/159860622/2f2ff688-097f-4170-b598-57da0a930c8f">

```ggplot(imdb_top5,aes(x=Gross,y=reorder(Series_Title,Gross))) +
  geom_col(aes(fill=Gross),show.legend = T) +
  labs(title = "Top 5 Movies based on Rating & Gross",x="Gross Revenue",y= NULL)+
  geom_label(aes(label= comma(Gross)),hjust=1.1)+
  scale_fill_gradient(low = "red",high = "black")+
  theme_minimal()
```

<img width="450" alt="Top 5 on rating n gross" src="https://github.com/SamuelChukwuji/Exploratory-Data-Analysis-using-R-Programming/assets/159860622/b702544e-b84f-406a-907f-7e95e69d4534">

From the visualization we will find out about the following:
- The top 5 High Gross Movies have an average gross of $778,736,742, with an average rating of 8.06
-  Star Wars has the highest gross at $936,662,225
-   3 out of 5 films are franchise or series films (Star Wars, and Marvel's Avengers). In general, franchises film have a large number of communities and fan base, so that can be a high contribution to the gross
- With the exception of Titanic, all films were released after 2000, where the number of cinemas and access to films is increasing every year. This is also a factor in the high gross amount.
-  Top 5 High Rated Movies have an average gross of $151,965,265, with an average rating of 9.1.
-  The Shawshank Redemption has the highest Rating at 9.3
-  Unlike Top 5 High Gross, almost all films with the top 5 ratings were released in the year under 2000.  film review sites such as IMDB were only launched in 1993, and were popular in 1996 and above, so before that the spectrum of reviews for films was very limited.
-  5 top movies with highest rating and gross amount have an average gross of $372,675,332, with an average rating of 8.84.
-  The Dark Knight (Batman Franchise) has the highest rating and gross.
-  The genre of top 5 rating and gross films is Action.
- Star Wars and Avengers franchises don’t make the top 5 ratings & gross. Although they have high gross, it turns out that the films did not get good reviews.
-  Animation and CGI don’t seem to be enough to get high ratings, a film needs a rich plot and 
a lot of character development.


### Conclusion and Recommendations
- While some of the success factors of the five films can come from the actors, and directors  Another factor that is no less important is the story line and character development as done by The Lord of The Rings. Although it doesn’t have a bigger gross than the Star Wars or Avengers films, The Lord of The Rings was able to prove its popularity by entering 3 of the top 5 films with the highest rating and gross.
- Film analysis can be done for genres other than Action Films. Otherwise all other genres will continue to disappear under the shadow of action films.


### Reference
[Kaggle](https://www.kaggle.com/datasets/harshitshankhdhar/imdb-dataset-of-top-1000-movies-and-tv-shows?resource=download)










