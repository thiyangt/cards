devtools::install_github("koenderks/aRtsy")
library(aRtsy)
library(showtext)
library(ggplot2)

font_add_google("Dancing Script", "dancing") 
showtext_auto() 


set.seed(123)  
canvas <- canvas_flow(
  colors = c("#00B358", "red", "#7b1113"), 
  iterations = 1000,
  background = "#06402b",
  lines = 1000,
  polar = FALSE,
  stepmax = 0.05,
  lwd = 0.6
)


canvas <- canvas +
  annotate(
    "text",
    x = 0, y = 0,  # Center the text
    label = "Merry Christmas",
    color = "white",
    size = 25,  # Adjust size as needed
    family = "dancing",  # Use the fancy font
    fontface = "bold"
  ) +
  annotate(
    "text",
    x = 90, y = -100, 
    label = "Thiyanga S. Talagala",
    color = "black",
    size = 3,  

    fontface = "italic" 
  )


print(canvas)
