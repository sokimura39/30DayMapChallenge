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

### Day 19: 5-minute map
![London Transport Networks](Maps/Day19.png)

London road and rail networks, filtered the main ones, plotted on QGIS, period.
It took 6 minutes and 24 seconds. I took too much time tweaking the aesthetics.

I'm not going to spend more time explaining the map than making it, but I am truly surprised you can make a decent map in this limited amount of time!

### Day 18: Atmosphere
![Temperature Range](Maps/Day18.png)

Atmosphere: I mapped the temperature range showing the annual temperature difference between the maximum and minimum.

Today's significance for me is creating a "legendgram", although this is just an inset density plot using the same dataset and coloring. Does this help understand the whole picture better?

### Day 17: Flow
![Santander Bike Flows](Maps/Day17.png)

For flows, I came back to the dataset that I used for Day 1 of the challenge: Santander Cycles. I really do think I've come very far!
One of my favorite visualisations is the map with airline routes, and I was thinking I could do something similar! I am so happy I managed to do so.

In addition to the point data that I mapped in day 1, TfL has loads of data for their bike share scheme, including journey details for every journey.
I have mapped some 10,000 trips made by the Santander Cycles in their latest dataset available, which accounts for roughly 1/3 of a day.

I did some basic analysis to their data today.
Their journey data did not include any spatial data, only the name and the ID of their start and end points. I joined this with the spatial data with the points to draw the line, and calculated the speed for each trip. 
I added a [Scripts_Data](https://github.com/sokimura39/30DayMapChallenge/tree/master/Scripts_Data) folder to save the Jupiter Notebook I have worked on for today's (and Day 1's) data wrangling.
I stopped here today, but am thinking about further analysis on this to see if any interesting data pops out!


### Day 16: Oceania
![Average Temperature in Oceania](Maps/Day16.png)

The first day of the second half: Oceania! This was a difficult area to map.

I ended up with a simple map of the annual average temperature in Australia, hence I couldn't quite manage to do the following:
- Precisely extract all the countries and territories that are recognized as "Oceania"
- Find a way to map areas too small if you just mapped the rasters
- Find a nice way to center around the International Date Line, not the Prime Meridian

I couldn't manage to change the font for the labels, which is very annoying.

Still, it's interesting to find how cold Australia actually is. My northern hemisphere self refuses to recognize that a country in the south is much colder than where I come from.

Sources: WorldClim, ArcHub

### Day 15: OpenStreetMap
![Surveillance Camera Clusters in London](Maps/Day15.png)

Halfway through the #30DayMapChallenge !

OpenStreetMap has a lot of points of interests in their data, and I found one that interested me: surveillance cameras. (I personally won't define this as a point of interes, though.)
Today, I used the DBSCAN analysis to find out whether there are any notable clusters that appear in the London area.

- Central London: Well, everything is clustered here. No surprise.
- Around Heathrow and the RAF: this makes sense to me as well.
- Wembley: Is this because of the stadium?
- Wimbledon: Is this too? Although the tennis courts seem to be apart from the station.
- Twickenham, Brentford, Wandsworth, and some other neighborhoods in the south: Is there a particular reason?

Please let me know if you have any thoughts!

### Day 14: Europe
![Fires in London Boroughs in 2022](Maps/Day14.png)

Europe. I probably should have mapped something more European, but the fire alarm that rang last Sunday night was so irritating I decided to search how often this kind of event occurs.  

Found a data on London Data Store on fires by borough, mapping it, voila!  
......would have been too easy.
I wanted to try the 3D rendering made available by the Rayshader package.

Today's map is my first 3D version, featuring my home borough of Camden successfully hiding itself behind the fire-filled City of Westminster. Okay, at least it's good to know I don't need to expect too many weekend evenings disturbed!


### Day 13: Choropleth
![Tri-variant Choropleth of disasters, precipitation and GDP](Maps/Day13.png)

Choropleths are the most basic of maps, and now they're starting to get bivariate.  
How about a trivariate map?

I mapped each country's GDP, annual precipitation and the occurances of hydrological disasters per area. (The latter two might have made a better map, but I wanted to give it a shot.)
It was too difficult to code the whole thing; data-wrangling in R and edited on QGIS.

The data for the disasters are acquired from [EM-DAT](https://www.emdat.be/), an international database for disasters worldwide. They have data for all sorts of disasters, and I decided to filter with hydrological ones, which I expected a correlation with precipitation. I have counted on a country-basis and standardised it by the area.

From the map, I was suprised you can actually sort of see the green areas with high precipitation, the yellow countries with high GDPs, the purple (relatively small) countries having a lot of disasters.
The correlations are difficult to make out, but comparing Europe and Asia, there seems to be a different trend already.

Source: World Bank, EM-DAT.

### Day 12: South America
![Precipitation in South America](Maps/Day12.png)

South America is the continent that observes the highest annual precipitation. This is a map of where the precipitation occurs in this area.  

I was quite surprised to see two things from the map I made:
1. The continent does rain a lot. Even the light-colored areas see around 2,000 mm of precipitation per year, which is almost triple of that of the UK. (Japan has an average of 1,700 mm which is still a lot, but the continent as a whole having this much is impressive.)
2. The extremes are really extreme. Although I was prepared when  [Wikipedia](https://en.wikipedia.org/wiki/List_of_countries_by_average_annual_precipitation) told me Colombia has an average of 3,200 mm, I did not expect over 7,000 mm in certain areas. I also expected the highest point will be somewhere in the Amazon!  

It is Day 12 already, and noticed I was not using raster data at all! For me this is a practice making use of raster data as well. I'm unsure whether tidyterra is the way to go, but at least it worked for me.  

Source: WorldClim

### Day 11: Retro
![London Bus Routes Retro Version](Maps/Day11.png)

For retro, I remade the map I made in Day 2: with aesthetics in retro style.  
That is to say, I just changed the colors and the font from what I did earlier.  

Which, still makes a big difference!  
Doing things completely in code makes these adjustments so easy; I don't want to imagine if I had a more complex map to change the aesthetics...

Sources: TfL Unified API, London Datastore

### Day 10: North America
![Traffic Direction in NYC](Maps/Day10.png)

When I was in elementary school, I used to live in Westchester County just north of New York City. Back then I didn't know about this field of GIS or geography (well I did spend some time playing SimCity, if that counts), so I decided to revisit New York with a geospatial lens!

The grid in Manhattan is famous for its one-way throughfare, and I mapped the rare exceptions that did carry both ways of traffic. (Yes I did not drive back then as well.)

Seems like NYC has a decent set of open geospatial data to explore...

Sources: NYC Open Data


### Day 9: Hexagons
![AirBNBs in London](Maps/Day09.png)

Analysis using hexagons is totally new to me. When I was doing my undergraduate in Japan, the only grids we used were the square ones.  
As explained [here](https://pro.arcgis.com/en/pro-app/latest/tool-reference/spatial-statistics/h-whyhexagons.htm) there seems to be advantages, so I decided to give a shot.  

I mapped the number of AirBNBs in each hexagonal grid of 350 meters across.
Did some basic spatial joins, but did not expect over 200 listings in a single cell!  

Just having a dark background makes the maps a lot cooler, but my interest toward graphic design makes me want to make cool maps using a lighter theme....

Sources: London Datastore, AirBNB


### Day 8: Africa

![African Cities by Population](Maps/Day08.png)

I have never engaged with African Geospatial Data before, so I tried mapping the population of major African cities.  
ArcGIS Hub does have a lot of data, which is appreciated a lot!

Now that I have a full week of mapping code ready, it is starting to get easier to create maps using the data I already have. Now this is reproducibility!

Sources: ArcGIS Hub

### Day 7: Navigation

![Cycle Navigation](Maps/Day07.png)

Wayfinding was always my interest, and this seemed like a perfect time to try!  
I have created my version of the [Legible London](https://tfl.gov.uk/info-for/boroughs-and-communities/legible-london) signs with a focus on cycle maps!  

I have made this map with QGIS for the first time in this challenge. (No codes today!)
After a week of tackling data with R, I now really appreciate the GUI of QGIS.  
(Even simple things like rotating views was hard to figure out in R.)  
I also tried a new basemap: Carto tiles!

Sources: TfL, CartoDB

### Day 6: Asia

![Airports in Asia](Maps/Day06.png)

When I think about Asia, what comes to my mind are the huge airports competing against each other for size, efficiency, and the status as the world hub.  
I have mapped the 50 largest airport by annual passengers, with labeling the top 5.  
Dealing with text using ggplot2 is still difficult for me.  

I sourced Wikipedia since no others came handy, but felt like I was betraying all my past teachers! Sorry prof!

Sources: Wikipedia, World Bank


### Day 5: Analog Map

![Mental Map of London](Maps/Day05.png)

For an analog map, I made a map of London - in a way I understand it!  
Inspired by **"The Image of the City"** I tried to draw what I know about the city, and how each component affects how I perceive it.  
Few things I noticed:
- Inside or outside of the Ring Road is a big deal to me, crossing it is another big deal (every day I do!)
- The roads and rail do help me a lot when it comes to recognition
- Cycling around the city did help me a lot!
- I know too little about the east
- I know too little about the south

I hope I get to know this city a little better in the near future!

Source: Me!

### Day 4: A Bad Map

![Imaginary London Sites](Maps/Day04.png)

Okay, a bad map.  
I decided to make a map with the wrong information: fake must-see spots within London!  
I asked ChatGPt to make up some spots to recommend to an innocent tourist!
It must believe that steampunk is something really big in London.
ChatGPT has made up a description for me as well. Everything is so WRONG!  
Enjoy your time in imaginary London!

Sources: ChatGPT, OpenStreetMap

#### Points of Interests

Keep in mind, this is imaginary!

##### Entertainment

| **Name**               | **Description**                                                                                                                                                         |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Chrono Square          | A mysterious square near the River Thames, where time seems to stand still, and every clock displays a different era.                                                   |
| Luminous Alley         | A narrow, cobblestone alley in Soho that glows softly at night, rumored to be haunted by friendly ghosts that guide lost travelers.                                     |
| Mystic Bazaar          | A bustling market in Camden, where travelers can find exotic artifacts, magical trinkets, and fortune tellers predicting the future.                                    |
| Steampunk Square       | A square in Greenwich adorned with intricate steampunk sculptures and gadgets, reminiscent of a bygone industrial era.                                                  |
| Moonlit Masquerade     | An elegant ballroom in Westminster, hosting enchanting masquerade parties, live orchestras, and dance performances under the shimmering moonlight.                      |
| Theater of Legends     | A historic theater in Camden, where legendary performances from Shakespearean plays to modern dramas captivate audiences, preserving the city's theatrical heritage.    |
| Steampunk Emporium     | A steampunk-themed marketplace in Westminster, showcasing intricate gadgets, retro-futuristic fashion, and unique artifacts from the Victorian era.                     |
| The Whimsical Workshop | An imaginative workshop in Soho, where artists, inventors, and dreamers collaborate to create fantastical sculptures, whimsical gadgets, and interactive installations. |

##### Nature & Relaxation

| **Name**                 | **Description**                                                                                                                                              |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Ethereal Gardens         | A magical garden hidden behind the façade of an old bookstore in the heart of Covent Garden, where rare and mythical plants flourish.                        |
| Aquaville                | An underwater city beneath the Thames, accessible only through secret tunnels, where merfolk and humans coexist in harmony.                                  |
| Whispering Willow Park   | A secluded park in Kensington where the wind whispers secrets to those who sit beneath the ancient willow tree.                                              |
| Verdant Vale Gardens     | A lush garden oasis in Wandsworth, where rare plants, cascading waterfalls, and colorful butterflies create a picturesque natural retreat.                   |
| Elysian Park             | A serene park in Lambeth, known for its blooming flowers, tranquil ponds, and a statue of a mythical goddess, creating an idyllic atmosphere.                |
| Glowing Lotus Garden     | A serene garden in Lambeth illuminated by radiant lotus flowers at night, offering a meditative atmosphere for quiet reflection and contemplation.           |
| Tranquil Treetop Retreat | A secluded treetop sanctuary in Greenwich, featuring cozy treehouse cabins, hammocks, and meditation areas, offering a peaceful escape amidst nature.        |
| Enchanted Forest         | A magical forest in Southwark, home to mythical creatures, sparkling waterfalls, and ancient ruins, inviting visitors on a whimsical adventure.              |
| Royal Rose Gardens       | A regal garden in Kensington, adorned with blooming roses of various colors, where visitors can indulge in afternoon tea and enjoy classical music concerts. |

##### Historic

| **Name**               | **Description**                                                                                                                                   |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| Time Traveler's Tavern | A historic tavern in Islington, where time travelers from different eras gather, sharing stories over ale and traditional British fare.           |
| Historical Harbor      | A historic harbor in Tower Hamlets, once bustling with trade ships and pirate legends, now transformed into a museum preserving maritime history. |
| Theater of Legends     | A historic theater in Camden, where legendary performances from Shakespearean plays to modern dramas captivate audiences, preserving the city's theatrical heritage. |

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


