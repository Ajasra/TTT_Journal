#import "journal_template.typ": *
#set page(paper: "a5", margin: (inside: 9.8mm, outside: 7.35mm, top: 8.82mm, bottom: 8.82mm))
#set text(font: ("EB Garamond", "Liberation Serif", "Georgia", "serif"), size: 11.5pt, fill: rgb("#111111"))
#set block(spacing: 6pt)

#let test-daily-right() = {
  system-header("THE TEMPORAL SPLIT", "ASYMMETRIC PROCESSING FIELDS")
  v(2pt)
  
  grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    [
      #set text(size: 8.5pt)
      #raw("CHRONOS STRATUM (Striated Logistics / Scheduled Maintenance):")       #set text(size: 7pt, fill: rgb("#555555"))
      "Log linear tasks, server system updates, and clock-tied commitments."
      #v(1.5pt)
      #write-lines(5, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("AION CURRENT (Smooth Time / Studio Drift & Open Play):")       #set text(size: 7pt, fill: rgb("#555555"))
      "Track non-linear research, studio drifts, and spontaneous experiments."
      #v(1.5pt)
      #write-lines(5, height: 10pt)
    ]
  )
  
  v(3pt)
  [
    #set text(size: 8.5pt)
    #raw("INTENSIVE INK-TRACE (Un-stratified Associative Space):")     #set text(size: 7.5pt, fill: rgb("#555555"))
    "Raw field for fleeting citations, logs, sketches, and sensory metrics."
  ]
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 5pt, fill: rgb("#ffffff").lighten(50%))[
    #write-lines(8, height: 10pt)
  ]
  
  v(2pt)
  line(length: 100%, stroke: 0.5pt + rgb("#bbbbbb"))
  v(1pt)
  raw("RECURSIVE FOLD (Evening Reflection & Feedforward Link)")
  
  v(2pt)
  grid(
    columns: (1.2fr, 1fr),
    column-gutter: 10pt,
    [
      #set text(size: 8.5pt)
      #raw("1. STATE SPACE:")       #set text(size: 7pt, fill: rgb("#555555"))
      "Plot coordinate balancing Vitality/Joy and Exhaustion/Striation."
      #v(2pt)
      #align(center)[
        #rect(width: 80pt, height: 80pt, stroke: 0.5pt + rgb("#a1a1aa"), fill: rgb("#ffffff"), inset: 0pt)[
          #place(top + left)[#line(start: (0pt, 40pt), end: (80pt, 40pt), stroke: 0.25pt + rgb("#d4d4d8"))]
          #place(top + left)[#line(start: (40pt, 0pt), end: (40pt, 80pt), stroke: 0.25pt + rgb("#d4d4d8"))]
          #place(top + center, dy: 1.5pt)[#set text(size: 3.5pt); #raw("VITALITY / JOY")]
          #place(bottom + center, dy: -1.5pt)[#set text(size: 3.5pt); #raw("DRAIN / EXHAUST")]
          #place(left + horizon, dx: 1.5pt)[#set text(size: 3.5pt); #raw("SMOOTH / FLOW")]
          #place(right + horizon, dx: -1.5pt)[#set text(size: 3.5pt); #raw("STRIATED / ORDER")]
        ]
      ]
    ],
    [
      #set text(size: 8.5pt)
      #raw("2. CAPTURE AUDIT:")       #set text(size: 7pt, fill: rgb("#555555"))
      "Register interfaces, platforms, or habit loops that captured your agency today."
      #v(1.5pt)
      #write-lines(3, height: 10pt)
      
      #v(3pt)
      #raw("3. DIFFRACTION PATTERN:")       #set text(size: 7pt, fill: rgb("#555555"))
      "Map how actions ripple into constructive or destructive wave interferences."
      #v(1.5pt)
      #write-lines(3, height: 10pt)
    ]
  )
  
  v(3pt)
  [
    #set text(size: 8.5pt)
    #raw("THE RECURSIVE SEED:")     #set text(size: 7.5pt, fill: rgb("#555555"))
    "Formulate one instruction based on tonight's wave pattern. Copy it to tomorrow's threshold."
  ]
  v(1pt)
  rect(width: 100%, fill: rgb("#fafafa"), stroke: 0.5pt + rgb("#cccccc"), inset: 5pt)[
    #write-lines(2, height: 10pt)
  ]
}

#test-daily-right()
