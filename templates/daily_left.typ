#import "common.typ": *
#let daily-left-page(day) = {
  system-header("DAY [ " + day + " / ___ ]", "INITIAL CONFIGURATION (Morning Threshold)")
  v(2pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#444444"), inset: 6pt, radius: 2pt)[
    #set text(size: 8.5pt)
    #raw("> MATERIAL ALLIES:") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Inventory active physical tech and environments shaping your stance today."
    #v(1pt)
    #write-lines(3, height: 10pt)
    #v(2pt)
    #raw("> THE AGENTIAL CUT:") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Define your boundary for the next 12 hours: what is included and what is barred?"
    #v(1pt)
    #write-lines(3, height: 10pt)
  ]
  v(2pt)
  section-title("VECTOR FORCE MAPPING (Focus, Maintenance, Detours, Drag)")
  v(2pt)
  grid(
    columns: (1fr, 1fr),
    row-gutter: 4pt,
    column-gutter: 11pt,
    [
      #set text(size: 8.5pt)
      #raw("▲ ATTRACTOR (Focus Pull)") \
      #v(1pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("■ STABILIZER (Chassis Maintenance)") \
      #v(1pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("⤏ FLIGHT LINE (Spontaneous Detours)") \
      #v(1pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("▼ RESISTOR (Thermodynamic Friction)") \
      #v(1pt)
      #write-lines(2, height: 10pt)
    ]
  )
  v(2pt)
  [
    #set text(size: 8.5pt)
    #raw("TOPOLOGICAL RELATION:") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Trace the friction: Which vector parasitized the other today? Where did attention leak?"
    #v(1pt)
    #write-lines(2, height: 10pt)
  ]
  v(2pt)
  raw("INTENSIVE INK-TRACE (Morning Log / Drift Folds):")
  v(1pt)
  write-lines(13, height: 10pt)
}
