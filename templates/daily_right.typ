#import "common.typ": *
#let daily-right-page() = {
  system-header("THE TEMPORAL SPLIT", "ASYMMETRIC PROCESSING FIELDS")
  v(2pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    [
      #set text(size: 8.5pt)
      #raw("CHRONOS STRATUM (Striated Logistics / Scheduled Maintenance):") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Log linear tasks, server system updates, and clock-tied commitments."
      #v(1.5pt)
      #write-lines(5, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("AION CURRENT (Smooth Time / Studio Drift & Open Play):") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Track non-linear research, studio drifts, and spontaneous experiments."
      #v(1.5pt)
      #write-lines(5, height: 10pt)
    ]
  )
  v(3pt)
  [
    #set text(size: 8.5pt)
    #raw("INTENSIVE INK-TRACE (Un-stratified Associative Space):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Raw field for fleeting citations, logs, sketches, and sensory metrics."
  ]
  v(1pt)
  write-lines(9, height: 10pt)
  v(3pt)
  raw("RECURSIVE FOLD (Evening Reflection & Feedforward Link)")
  v(2pt)
  grid(
    columns: (0.8fr, 1.2fr),
    column-gutter: 10pt,
    [
      #set text(size: 8.5pt)
      #raw("1. STATE SPACE:") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Plot coordinate balancing Vitality/Joy and Exhaustion/Striation."
      #v(2pt)
      #align(center)[
        #rect(width: 110pt, height: 110pt, stroke: 0.5pt + rgb("#a1a1aa"), fill: rgb("#ffffff"), inset: 0pt)[
          #place(top + left)[#line(start: (0pt, 55pt), end: (110pt, 55pt), stroke: 0.25pt + rgb("#d4d4d8"))]
          #place(top + left)[#line(start: (55pt, 0pt), end: (55pt, 110pt), stroke: 0.25pt + rgb("#d4d4d8"))]
          #place(top + center, dy: 1.5pt)[#set text(size: 6pt); #raw("VITALITY / JOY")]
          #place(bottom + center, dy: -1.5pt)[#set text(size: 6pt); #raw("DRAIN / EXHAUST")]
          #place(left + horizon, dx: 1.5pt)[#set text(size: 6pt); #raw("SMOOTH / FLOW")]
          #place(right + horizon, dx: -1.5pt)[#set text(size: 6pt); #raw("STRIATED / ORDER")]
        ]
      ]
    ],
    [
      #set text(size: 8.5pt)
      #raw("2. CAPTURE AUDIT:") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Register interfaces, platforms, or habit loops that captured your agency today."
      #v(1.5pt)
      #write-lines(3, height: 10pt)
      #v(3pt)
      #raw("3. DIFFRACTION PATTERN:") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Map how actions ripple into constructive or destructive wave interferences."
      #v(1.5pt)
      #write-lines(3, height: 10pt)
    ]
  )
  v(3pt)
  [
    #set text(size: 8.5pt)
    #raw("THE RECURSIVE SEED:") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Formulate one instruction based on tonight's wave pattern. Copy it to tomorrow's threshold."
  ]
  v(1pt)
  write-lines(2, height: 10pt)
}
