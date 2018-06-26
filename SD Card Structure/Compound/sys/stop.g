; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)

M83 ; relative extruder moves
G1 E-20 F3600 ; for compound retract 10mm of filament
G91 ; relative positioning
G1 Z5 S1 F360 ; lower Z by 5mm, or until Z-limit is reached
G90 ; absolute positioning
G1 X350 Y350 F3000 ; go to X=350 Y=350 to move head out of the way (usually)

; Turn off systems
G10 P0 S0
G10 P1 S0
G10 P2 S0
M106 S0


