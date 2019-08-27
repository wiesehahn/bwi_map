#### tiles generated with

usePackage <- function(p) 
{
  if (!is.element(p, installed.packages()[,1]))
    install.packages(p, dep = TRUE)
  require(p, character.only = TRUE)
}

usePackage("tiler")
usePackage("raster")
usePackage("here")

# converted image from jpeg to png 

# where to save tiles
tile_dir <- file.path(here("output_data"), "tiles")
# open image
map <- (here("raw_data/bwi_map.png"))
# set path to OSGeo4W.bat manually on Wndows (see https://ropensci.github.io/tiler/articles/tiler.html)
tiler_options(osgeo4w = "C:/OSGeo4W/OSGeo4W.bat")
# tile image
tile(map, tile_dir, "0-6")

