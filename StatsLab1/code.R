library(tidyverse)
library(scales)
library(patchwork)
library(httpgd)
library(jmv)

animeData <- read_csv(file="c:\\Users\\pavel\\Downloads\\Software for Data Science\\StatsLab1\\anime_data.csv")
print("Data tyding:")
print("Removing unneccessary data")
animeData <- animeData %>% select(-c(title_synonyms,synopsis,background,related,genre,studio,producers))
# View(animeData)
print("Removing duplicates (they exist, because anime categorized by genres, and it can have multiple)")
uniqueAnime <- animeData %>% distinct() %>% filter(!is.na(title_english))
# View(uniqueAnime)
print("Let's select only shows with type 'TV'")
tvAnime <- uniqueAnime%>%filter(type=="TV")
print(count(tvAnime))
print(summary(tvAnime))
# View(tvAnime)
print(descriptives(
  data = tvAnime,
  vars = c('episodes', 'score', 'scored_by', 'popularity', 'rank',
           'members', 'favorites'),
  dens = TRUE,
  freq = TRUE,
  hist = TRUE,
  sd = TRUE,
  variance = TRUE,
  range = TRUE,
  se = TRUE,
  skew = TRUE,
  kurt = TRUE,
  pcEqGr = TRUE,
  pcNEqGr = 10
))