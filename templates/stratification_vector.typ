#import "common.typ": *
#let stratification-vector-page() = {
  system-header("THE INITIAL VECTOR SPACE", "SYSTEM ATTUNEMENT // PRE-CYCLE 3/4")
  v(6pt)
  set text(size: 8.5pt)
  [Plot your initial 8-coordinate vector space signature on the grid below. Set baseline positions for your Attractors (*A1*), Stabilizers (*S1*), Flight Lines (*F1*), and Resistors (*R1*), alongside your initial readings for Vitality (*V1*), Diffraction (*D1*), Chronos (*C1*), and Aion (*A2*) based on your typical baseline week.]
  v(10pt)
  align(center)[
    #rect(width: 300pt, height: 300pt, stroke: 0.5pt + rgb("#aaaaaa"), fill: rgb("#ffffff"))[
      #place(center + horizon)[#circle(radius: 130pt, stroke: 0.25pt + rgb("#dddddd"))]
      #place(center + horizon)[#circle(radius: 98pt, stroke: 0.25pt + rgb("#cccccc"))]
      #place(center + horizon)[#circle(radius: 74pt, stroke: 0.25pt + rgb("#dddddd"))]
      #place(center + horizon)[#circle(radius: 52pt, stroke: 0.25pt + rgb("#eeeeee"))]
      #place(center + horizon)[#circle(radius: 26pt, stroke: 0.25pt + rgb("#f4f4f4"))]
      #place(center + horizon, dx: 3pt, dy: -26pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("2")]
      #place(center + horizon, dx: 3pt, dy: -52pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("4")]
      #place(center + horizon, dx: 3pt, dy: -74pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("6")]
      #place(center + horizon, dx: 3pt, dy: -98pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("8")]
      #place(center + horizon, dx: 3pt, dy: -130pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("10")]
      #place(top + left)[#line(start: (0pt, 145pt), end: (290pt, 145pt), stroke: 0.25pt + rgb("#dddddd"))]
      #place(top + left)[#line(start: (145pt, 0pt), end: (145pt, 290pt), stroke: 0.25pt + rgb("#dddddd"))]
      #place(top + left)[#line(start: (0pt, 0pt), end: (290pt, 290pt), stroke: 0.25pt + rgb("#dddddd"))]
      #place(top + left)[#line(start: (0pt, 290pt), end: (290pt, 0pt), stroke: 0.25pt + rgb("#dddddd"))]
      #place(top + center, dy: 4pt)[#set text(size: 6pt); #raw("A1 (ATTRACTOR)")]
      #place(bottom + center, dy: -4pt)[#set text(size: 6pt); #raw("R1 (RESISTOR)")]
      #place(left + horizon, dx: 4pt)[#set text(size: 6pt); #raw("S1 (STABILIZER)")]
      #place(right + horizon, dx: -4pt)[#set text(size: 6pt); #raw("F1 (FLIGHT)")]
      #place(top + left, dx: 14pt, dy: 14pt)[#set text(size: 5.5pt); #raw("V1 (VITALITY)")]
      #place(bottom + right, dx: -14pt, dy: -14pt)[#set text(size: 5.5pt); #raw("D1 (DIFFRACTION)")]
      #place(top + right, dx: -14pt, dy: 14pt)[#set text(size: 5.5pt); #raw("C1 (CHRONOS)")]
      #place(bottom + left, dx: 14pt, dy: -14pt)[#set text(size: 5.5pt); #raw("A2 (AION)")]
    ]
  ]
  v(8pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#111111"), inset: 8pt, fill: rgb("#f4f4f5"))[
    #grid(
      columns: (1fr, auto),
      [ #raw("RADAR COHERENCE VERIFIED // LEVEL: PRE_FLIGHT") ],
      [ #raw("[ APPROVED ]") ]
    )
  ]
}
