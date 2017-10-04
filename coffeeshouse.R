install.packages("leaflet")
library(leaflet)
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-3.191, lat=55.947, popup="The Elephant Room | Where JKR initially wrote Harry Potter")
m  # Print the map

#the %>% is called "piping" 

#cloud atlas
leaflet(data = Cloud_Atlas) %>% addTiles() %>%
  addMarkers(Cloud_Atlas$Long, Cloud_Atlas$Lat, popup = as.character(Cloud_Atlas$Person))



#coffeeshops 
library(leaflet)

coffee_popup <- paste0("<strong>Name: </strong>", 
                      coffeeshops$name, 
                      "<br><strong>Area: </strong>",
                      coffeshops$area)

leaflet(coffeeshops) %>% addProviderTiles("CartoDB.Positron") %>% 
  addMarkers(coffeeshops$Longitude,coffeeshops$Latitude, popup = coffee_popup, clusterOptions = markerClusterOptions()) 

install.packages("shiny")
library(shiny)
ui <- fluidPage()
server <- function(input, output, session) {}
shinyApp(ui = ui, server = server)

