#import "common.typ": *
#let shutdown-page() = {
  align(center + horizon)[
    #block(width: 85%)[
      #set text(size: 13pt, weight: "bold")
      #raw("SYSTEM STATUS: SHUTDOWN")
      #v(15pt)
      #set text(size: 9pt, weight: "regular")
      #raw("The 84-day cycle has fully actualized and stabilized.") \
      #raw("Agential cuts are completed. State coordinates are archived.")
      #v(40pt)
      #align(left)[
        #grid(
          columns: (auto, 1fr),
          gutter: 8pt,
          raw("FINAL SHUTDOWN TIMESTAMP:"), [ #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#999999")))[] ],
          raw("OPERATOR:  "), [ #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#999999")))[] ]
        )
      ]
    ]
  ]
}
