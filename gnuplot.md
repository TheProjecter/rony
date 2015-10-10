| **command** | **arguments** | **description** |
|:------------|:--------------|:----------------|
| angles      | degrees | radians | unit of angles  |
```
arrow { tag } {from pos } {to pos n} { head | nohead }
{ls style} {lt type} {lw width}	 draw an arbitrary arrow
autoscale  x|y|z|x2|y2|xy {min|max}              # axis whose scale is automatically determined
bar        small|large|size                      # a small bar on the top of error-bars
border     num {ls style} {lt type} {lw width}   # border lines (frame, axis)
boxwidth   width                                 # bar width for box-style
clabel     'format'                              # format of contour lines in legend
clip       points|one|two                        # data clipping near border
cntrparam	 {linear | cubicspline | bspline} 
{points n } 
{order n } 
{levels { n 
| auto { n }
| discrete z1 {, z2 ,... }
| incremental start,incr,end }	 control contour map
contour	{base | surface | both}	 display contour lines
data	 style style	 default style for data plot
dgrid3d	 { row, col, norm }	 convert 3D data into grid data
dummy	 var, var	 convert variables into others
encoding	 value	 change character-set encoding
format	 x|y|z|x2|y2|xy 'format'	 format of numeric label on axes
function	 style style	 default style for function plot
grid	{{m}xtics {m}ytics ....} 
{polar {angle}}
{ls style} {lt type} {lw width}	 draw grid
hidden3d	 {offset num ...}
{trianglepattern num} 
{{undefined level} | {noundefined}}
{altdiagonal | noaltdiagonal}
{bentover | nobentover}	 do hidden line removal
isosamples	iso_1 {,iso_2}	 number of curves for function plot in 3D mode
key	 left | right | top | bottom | outside | below 
{Left | Right} 
{reverse | noreverse} 
{samplen length } 
{spacing spacing } 
{width width_increment} 
{title "text"}
{box | nobox} {ls style} {lt type} {lw width}	 control legend
label	tag "string" at pos 
{left | right | center} 
{rotate | norotate} 
{font "name,size"}	 write arbitrary text in figure
linestyle	 index {lt line_type }
{lw width }
{pt point_type } 
{ps point_size }	 definition of line and symbols
locale	 "locale"	 locale
logscale	 {x|y|z|x2|y2|xy} { base }	 log-scale
mapping	 {cartesian | spherical | cylindrical}	 coordinate of 3D data
margin 
bmargin 
lmargin 
rmargin 
tmargin	 margin	 margins outside the border
missing	 "character"	 define a letter which is treated as a missing point in a data file
multiplot	 -	 enter a multi-plot mode
offsets	 left, right, top, bottom	 margin between the curve and borders at autoscaling
origin	 x_orig, y_orig	 origin of the graph
output	 "file_name"	 device name for output
parametric	 -	 use parameters for function plot
pointsize	 num	 default symbol size
polar	 -	 polar coordinate
samples	samples_1 {,samples_2}	 sampling rate for function plot
size	{square | ratio r} 
{ xscale,yscale}	 figure size
surface	 -	 show 3D surface
term 
terminal	 terminal-type	 terminal name
tics	 in | out	 direction of tics
ticscale	major_scale {minor_scale }}	 length of tics
ticslevel	 level	 distance between Z-axis and XY-plane
time 
timestamp	 "format" 
{top|bottom} {rotate|norotate} 
{x_offset}{,y_offset}
{"font"}	 display the date
timefmt	 "format"	 date/time format in a data file
title	"text" 
{x_offset}{,y_offset}
{"font"}	 figure title
view	rot_x {,rot_z}
{,{scale} {, scale_z }}	 view point in the 3D plot
xdata 
ydata 
zdata 
x2data 
y2data	 {time}	 if date/time data
xlabel 
ylabel 
zlabel 
x2label 
y2label	"label" 
{x_offset}{,y_offset}
{"font"}	 axis label
xrange 
yrange 
zrange 
x2range 
y2range 
rrange 
trange 
urange 
vrange	 [min:max] 
{reverse | noreverse} {writeback | nowriteback}	 max/min values of axes
xdtics 
ydtics 
zdtics 
x2dtics 
y2dtics	 -	 convert numbers into day
xmtics 
ymtics 
zmtics 
x2mtics 
y2mtics	 -	 convert numbers into month
xtics 
ytics 
ztics 
x2tics 
y2tics	 {axis | border}
{mirror | nomirror}
{rotate | norotate}
{autofreq 
| incr 
| start,incr,end | ( "label" pos, ...) }	 control major tics

mxtics 
mytics 
mztics 
mx2tics 
my2tics	 { num | default}	 control minor tics

xzeroaxis 
yzeroaxis 
x2zeroaxis 
y2zeroaxis 
zeroaxis	{ls style} {lt type} {lw width}	 display zero-axis
zero	number	 threshold for zero
```