# function to obtain the color palete
# parameters:
# color: which color is used
# tpye: colour / fill, depending if the colour is going to be used as colour or fill

getColors <- function(color = "blue", type = "colour"){

  if (color ==  "blue"){
    bgcolor <- colorRampPalette(c("#2171b5", "#bdd7e7"))
    fillcolor <- colorRampPalette(c("#6baed6", "#eff3ff"))
  } else if (color == "red"){
    bgcolor <- colorRampPalette(c("#cb181d", "#fcae91"))
    fillcolor <- colorRampPalette(c("#fb6a4a", "#fee5d9"))
  } else if(color == "orange"){
    bgcolor <- colorRampPalette(c("#d94701", "#fdbe85"))
    fillcolor <- colorRampPalette(c("#fd8d3c", "#feedde"))
  }

  # Return according to the type
  if(type == "colour"){
    return(bgcolor)
  }else if (type == "fill"){
    return(fillcolor)
  }
}
