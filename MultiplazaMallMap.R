library(leaflet)

mapDF <- data.frame(
  name = c("Nikeshop", "Adidas", "Sportline"),
  lat = c(8.985309, 8.986343, 8.986165),
  lng = c(-79.511173, -79.510798, -79.511680),
  popup = c("Cool shoes!", "Boring apparel...", "A little of everything :-|"),
  equity = c(60, 20, 40),
  url = c("www.nike.com", "adidas.com", "sportline.com.pa"),
  color = c("red", "black", "blue")
)

myMap <- leaflet(data = mapDF) %>%
  addTiles() %>%
  addMarkers(popup = paste(mapDF$name, "<br>", mapDF$popup, "<br>", "<a href=>", mapDF$url, "</a>")) %>%
  addCircleMarkers(radius = mapDF$equity, col = mapDF$color) %>%
  setView(-79.511173, 8.985309, zoom = 18)
myMap