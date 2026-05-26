#import "common.typ": *
#let title-page(cycle-num, total-days) = {
  place(top + right)[
    #set text(size: 8pt)
    #raw("VOL ______ YEAR _____")
  ]
  align(center + horizon)[
    #v(-20pt)
    #block(width: 85%)[
      #set align(center)
      #set text(size: 13pt, weight: "bold")
      #raw("THE TRAJECTORY TRACE")
      #v(6pt)
      #set text(size: 8.5pt, weight: "regular")
      #text(style: "italic")[An #(total-days)-Day Grid for Evolutionary Flow and Temporal Split]
      #v(15pt)
      #set text(size: 7.5pt)
      #raw("[ TRACK: CYCLE " + cycle-num + " ]  [ SPAN: " + total-days + " DAYS ]")
      #v(50pt)
      #align(left)[
        #set text(size: 8pt)
        #grid(
          columns: (auto, 1fr),
          gutter: 12pt,
          raw("OPERATOR:"), [ #box(width: 100%, stroke: (bottom: 0.1pt + rgb("#888888")))[] ],
          raw("INIT DATE:"), [ #box(width: 100%, stroke: (bottom: 0.1pt + rgb("#888888")))[] ]
        )
      ]
    ]
  ]
}
