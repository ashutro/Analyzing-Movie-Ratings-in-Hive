# Analyzing-Movie-Ratings-in-Hive
The "Analyzing Movie Ratings" project uses Apache Hive to manage and analyze movie rating data. Hive, built on Hadoop, allows querying and analysis of large datasets in Hadoop's HDFS. This project sets up Hive, creates tables, loads data, and runs analytical queries to gain insights from movie ratings.


#Objectives
The main objectives of this project are:

Set up and configure Hive on a Hadoop ecosystem.
Create Hive tables for storing movie and rating data.
Load data into Hive tables from CSV files.
Perform data analysis using HiveQL (Hive Query Language) to extract meaningful insights from the dataset.
Dataset
We use two primary datasets for this project: movies.csv and ratings.csv.

#movies.csv contains information about movies:

movieId: Unique identifier for each movie.
title: Title of the movie.
genres: Genres associated with the movie.
ratings.csv contains user ratings for movies:

userId: Unique identifier for each user.
movieId: Unique identifier for each movie (foreign key referencing movies.csv).
rating: Rating given by the user (a float value).
timestamp: Time when the rating was given.
