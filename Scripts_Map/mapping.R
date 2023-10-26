
# change the bounding box of map into square
# zoom changes the margins around the map

square_bbox <- function(b_box,zoom=1){
  mid_x <- (b_box[1]+b_box[3])/2
  mid_y <- (b_box[2]+b_box[4])/2
  len_x <-  b_box[3] - b_box[1]
  len_y <-  b_box[4] - b_box[2]
  
  if(len_x > len_y){
    d <- (len_x * zoom - len_y)/2
    z <- len_x * (zoom - 1) / 2
    ymax <- b_box[4] + d
    ymin <- b_box[2] - d
    xmax <- b_box[3] + z
    xmin <- b_box[1] - z
  }else{
    d <- (len_y * zoom - len_x)/2
    z <- len_y * (zoom - 1) / 2
    xmax <- b_box[3] + d
    xmin <- b_box[1] - d
    ymax <- b_box[4] + z
    ymin <- b_box[2] - z
  }
  
  new_box <- st_bbox(c(xmin,ymin,xmax,ymax))
  return(new_box)
}

# move the map 
# v for vertical (positive numbers move the geometry up)
# h for horizontal (positive numbers move the geometry right)
# each value is defined by the ratio

move_bbox <- function(b_box, h, v){
  len_x <-  b_box[3] - b_box[1]
  len_y <-  b_box[4] - b_box[2]
  
  dist_x <- len_x * h
  dist_y <- len_y * v

  xmax <- b_box[3] + dist_x
  xmin <- b_box[1] + dist_x
  ymax <- b_box[4] + dist_y
  ymin <- b_box[2] + dist_y

  new_box <- st_bbox(c(xmin,ymin,xmax,ymax))
  return(new_box)  
    
}


