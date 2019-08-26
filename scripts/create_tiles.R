
# tiles generate with
library("tiler")
library("raster")
library("here")

#converted image manually from jpeg to png
tile_dir <- file.path(here("output_data"), "tiles")
map <- (here("raw_data/bwi_map.png"))
tiler_options(osgeo4w = "C:/OSGeo4W/OSGeo4W.bat")
tile(map, tile_dir, "0-7")




tiles <- here("output_data/tiles/{z}/{x}/{y}.png")

leaflet(options = leafletOptions(crs = leafletCRS("L.CRS.Simple"), minZoom = 0, 
                                 maxZoom = 7, attributionControl = FALSE)) %>% 
  addTiles(tiles) %>% 
  setView(4000, 5000, 2)
