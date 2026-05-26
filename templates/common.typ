// Shared helper definitions for Cybernetic Journal
#let page-margins = (inside: 9.8mm, outside: 7.35mm, top: 8.82mm, bottom: 8.82mm)

#let dot-grid = pattern(size: (5mm, 5mm))[
  #place(dx: 2.5mm, dy: 2.5mm)[
    #circle(radius: 0.3pt, fill: rgb("#cccccc").lighten(20%))
  ]
]


// Dotted lines generator
#let write-lines(count, height: 11pt, stroke-color: rgb("#dddddd")) = {
  stack(
    spacing: 0pt,
    for i in range(count) {
      box(width: 100%, height: height, stroke: (bottom: 0.25pt + stroke-color))[#align(bottom)[#v(0pt)]]
    }
  )
}

// System Header Helper with Date Placeholder
#let system-header(title, right-label, show-date: true) = {
  block(width: 100%, stroke: (bottom: 0.5pt + rgb("#bbbbbb")), inset: (bottom: 5pt))[
    #set text(weight: "bold", size: 8.5pt)
    #if show-date {
      grid(
        columns: (1fr, auto, auto),
        gutter: 10pt,
        align: (left, center, right),
        raw(title),
        raw("DATE: __ / __ / __"),
        raw(right-label)
      )
    } else {
      grid(
        columns: (1fr, auto),
        gutter: 10pt,
        align: (left, right),
        raw(title),
        raw(right-label)
      )
    }
  ]
}

// Subheader Helper
#let section-title(title) = {
  v(4pt)
  rect(
    fill: rgb("#f4f4f5"),
    width: 100%,
    radius: 1.5pt,
    inset: (x: 4pt, y: 3pt),
    stroke: 0.25pt + rgb("#d4d4d8")
  )[
    #set text(weight: "bold")
    #raw(title)
  ]
}

// Challenge Tracker Component
#let challenge-tracker-block(title, target) = {
  rect(width: 100%, stroke: 0.5pt + rgb("#999999"), inset: 6pt, radius: 2pt)[
    #set text(size: 8pt)
    #grid(
      columns: (1fr, auto),
      raw("// SYSTEM CHALLENGE: __________________________________________"),
      raw("TARGET: " + target)
    )
    #v(4pt)
    #align(center)[
      #table(
        columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        stroke: 0.25pt + rgb("#aaaaaa"),
        inset: 3pt,
        align: center,
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "),
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "),
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "),
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" ")
      )
    ]
    #v(2pt)
    #raw("SYSTEM DIAGNOSTIC (Somatic and attentional adjustments):") \
    #write-lines(5, height: 10pt)
  ]
}
