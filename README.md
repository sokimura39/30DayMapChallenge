# 30DayMapChallenge

This is my contribution to the #30DayMapChallenge for November 2023.\
About the #30DayMapChallenge , check out <https://30daymapchallenge.com/> !

## Introduction

### About me

I am a postgraduate student studying GIS and data science at UCL, trying to learn R, python, and making use of GitHub.\
Background in planning, new to London from Japan, some knowledge about QGIS, and interested in graphic design (trying to make the maps as aesthetic as possible!)

### This repository is:

-   where I will be uploading my maps!
-   where I will be uploading my code as well
-   my first public repository on GitHub
-   my first project using R and python

The data itself will not be uploaded due to limitations in file size, but I will try to be as reproducible as possible (but this might happen later.)

### My goals

Through the #30DayMapChallenge I want to: - be more familiar with R and python to draw maps using code. I will try to stay away from QGIS and Illustrator, although it is tempting to use them... - also be familiar with other software that I don't know. Blender might be one of them. - know more about London, the UK and Europe. The datasets will probably feature London and surrounding areas a lot. Some data might come from Japan. - know where to get data. Any recommendations are appreciated!

## The Maps

### Day 3: Polygons

![English Green Belts](Maps/Day03.png)

Polygons lets you do everything, so I chose this theme because wanted the geometry of the polygon to speak for itself.  
The Green Belts in England is definitely something that characterizes its urban structure, and I mapped it! I didn't know there are so many cities with green belts around them.  
I also tried out the ggplot2 package to map today. I found it difficult to show texts the way I want it to, but maybe practice makes better!

Sources: data.gov.uk, gadm.org


### Day 2: Lines

![London Bus Routes](Maps/Day02.png)

The map for lines - the routes for the iconic double-decker (and single-decker) bus routes in London!  
The shaded area show the area of the 33 London Boroughs.  
The vast network covers most of London, and some routes go beyond to Slough and Dorking as well.

Credits for Transport for London again!  

I wanted to make a route diagram of the whole bus network (something like the tube network map) with all the routes drawn explicitly, but couldn't find a way to deal with the overlaps. Still illustrates the complexity of the network!

Sources: TfL Unified API, London Datastore

### Day 1: Points

![Santander Cycle Docking Stations in London](Maps/Day01.png)

For the very first day of my very first #30DayMapChallenge, I have mapped the docking stations for the Santander Cycle, a bike-sharing scheme in London.  
The points are colored according to the area name within the docking station name.

Sources: TfL Unified API, OpenStreetMap 


