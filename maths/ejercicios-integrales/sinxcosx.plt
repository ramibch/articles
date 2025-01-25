set terminal png
set output ARG0.".png"

set title "Area bajo la curva" font ",20"
set key left box
set samples 100
set style data points
plot [pi/2:pi] sin(x)*cos(x) with filledcurves y1=0 lc "red"