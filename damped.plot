#Reference plot as seen in the following Wiki page (accessed on August 17th, 2021)
# https://commons.wikimedia.org/wiki/File:Mplwp_resonance_zeta_envelope.svg
# Author: Rajendra Adhikari
set term postscript enhanced color 'Helvetica-Bold,16'
set output 'damp.ps'

set xr [0:3.0]
set yr [0:6.0]
set xl 'eta'
set yl 'A/A_{stat}'
xi=0.10
set sample 600
damp(x)=1.0/sqrt((1.0-x*x)**2 + (2.0*x*xi)**2)
plot damp(x) w l ti 'xi=0.1'
xi=0.2
replot damp(x) w l ti 'xi=0.2'

set output
! ps2pdf damp.ps
! rm damp.ps
