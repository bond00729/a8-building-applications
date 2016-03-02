build_visual <- function(df) {
  plot_ly(df, x = Petal.Width, y = Petal.Length, mode = "markers", color = Species)
}