#import "common.typ": *
#let trajectory-mapping-page() = {
  system-header("ABSOLUTE DIAGNOSTIC: TRAJECTORY MAPPING", "LONG-TERM MAPPING")
  v(8pt)
  [Use this grid to aggregate your F_net and Vitality ratings across the entire 84-day cycle.]
  [Plot coordinates weekly to visualize your autopoietic stabilization trajectory:]
  v(10pt)
  align(center)[
    #rect(width: 300pt, height: 300pt, stroke: 0.5pt + rgb("#aaaaaa"), fill: rgb("#ffffff"))[
      #place(center + horizon)[#circle(radius: 130pt, stroke: 0.25pt + rgb("#cccccc"))]
      #place(center + horizon)[#circle(radius: 100pt, stroke: 0.25pt + rgb("#cccccc"))]
      #place(center + horizon)[#circle(radius: 74pt, stroke: 0.25pt + rgb("#cccccc"))]
      #place(center + horizon)[#circle(radius: 40pt, stroke: 0.25pt + rgb("#cccccc"))]
      #place(center + horizon)[#circle(radius: 26pt, stroke: 0.25pt + rgb("#cccccc"))]
      #place(top + left)[#line(start: (0pt, 145pt), end: (290pt, 145pt), stroke: 0.25pt + rgb("#a1a1aa"))]
      #place(top + left)[#line(start: (145pt, 0pt), end: (145pt, 290pt), stroke: 0.25pt + rgb("#a1a1aa"))]
      #place(top + center, dy: 6pt)[#set text(size: 6pt); #raw("VITALITY (JOY)")]
      #place(bottom + center, dy: -6pt)[#set text(size: 6pt); #raw("DRAIN (EXHAUST)")]
      #place(left + horizon, dx: 6pt)[#set text(size: 6pt); #raw("SMOOTH (FLOW)")]
      #place(right + horizon, dx: -6pt)[#set text(size: 6pt); #raw("STRIATED (ORDER)")]
    ]
  ]
  v(12pt)
  [Weekly Trajectory Coordinates:]
  v(4pt)
  grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 10pt,
    [ #raw("W1:  [  ,  ]") \ #raw("W2:  [  ,  ]") \ #raw("W3:  [  ,  ]") ],
    [ #raw("W4:  [  ,  ]") \ #raw("W5:  [  ,  ]") \ #raw("W6:  [  ,  ]") ],
    [ #raw("W7:  [  ,  ]") \ #raw("W8:  [  ,  ]") \ #raw("W9:  [  ,  ]") ],
    [ #raw("W10: [  ,  ]") \ #raw("W11: [  ,  ]") \ #raw("W12: [  ,  ]") ]
  )
}
