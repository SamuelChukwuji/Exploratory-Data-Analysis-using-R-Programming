#exploratory data analysis

imdb<-read.csv(file.choose())
head(imdb)
imdb= subset(imdb,select = -c(Poster_Link,Overview)) #drops poster link &overview column


#data inspection
str(imdb) #this will check the structure i.e datatype of each column
colSums(is.na(imdb)) # checks no of missing value of each column

#I need to drop the comma symbol by using gsub() and change the gross datatype to numeric
imdb$Gross= as.numeric(gsub(",","",imdb$Gross))
str(imdb)
colSums(is.na(imdb)) #check for missing values again

#gross returns with missing values this time because the null objects were previously counted as characters.
#Because we cannot analyze films without gross, we need to find the missing values &eliminate it from the dataframe using -which()
head(imdb)
imdb=imdb[-which(is.na(imdb$Gross)),]
str(imdb)
colSums(is.na(imdb)) #check if there is still any missing values.


#5top movies are getting are getting highest gross amount

top5_gross=imdb[order(imdb$Gross,decreasing = T),][1:5,]
top5_gross
summary(top5_gross)
dim(imdb)  #to check the dimension(nu of cols & rows in the dataframe)

install.packages("ggplot2")
library(tidyverse)
library(ggplot2)
install.packages("scales")
library(scales)

#Data Visualization 
ggplot(top5_gross,aes(x=Gross,y=reorder(Series_Title,Gross))) +
  geom_col(aes(fill=Gross),show.legend = T) +
  labs(title = "Top 5 Movies based on Gross Revenue",x="Gross Revenue",y= NULL)+
  geom_label(aes(label=comma(Gross)),hjust=1.5)+
  scale_fill_gradient(low = "red",high = "black")+
  theme_minimal()



#from the visualization
#the top 5 high grossing movies have an average gross of $778,736,742
#Star Wars has the highest gross at $936,662,225

top5_rating=imdb[order(imdb$IMDB_Rating,decreasing = T),][1:5,]
top5_rating
summary(top5_rating)

ggplot(top5_rating,aes(x=IMDB_Rating,y=reorder(Series_Title,IMDB_Rating))) +
  geom_col(aes(fill=IMDB_Rating),show.legend = T) +
  labs(title = "Top 5 Movies based on Rating",x="IMDB_Rating",y= NULL)+
  geom_label(aes(label= IMDB_Rating),hjust=1.1)+
  scale_fill_gradient(low = "red",high = "black")+
  theme_minimal()


imdb_slice <- imdb[imdb$Released_Year>1996 ,]
imdb_slice
head(imdb_slice)
unique(imdb_slice$IMDB_Rating)


imdb_rate=imdb_slice[imdb_slice$IMDB_Rating >8.5 ,];imdb_rate

imdb_top5=imdb_rate[order(imdb_rate$Gross,decreasing = T),][1:5,];imdb_top5
summary(imdb_top5)


ggplot(imdb_top5,aes(x=Gross,y=reorder(Series_Title,Gross))) +
  geom_col(aes(fill=Gross),show.legend = T) +
  labs(title = "Top 5 Movies based on Rating & Gross",x="Gross Revenue",y= NULL)+
  geom_label(aes(label= comma(Gross)),hjust=1.1)+
  scale_fill_gradient(low = "red",high = "black")+
  theme_minimal()