#import "journal_template.typ": *
#set page(paper: "a5", margin: (inside: 9.8mm, outside: 7.35mm, top: 8.82mm, bottom: 8.82mm))
#set text(font: ("EB Garamond", "Liberation Serif", "Georgia", "serif"), size: 11.5pt, fill: rgb("#111111"))
#set block(spacing: 6pt)

#align(center + horizon)[
  #v(-20pt)
  #block(width: 85%)[
    #set align(center)
    #set text(size: 13pt, weight: "bold")
    #raw("THE TRAJECTORY TRACE")
    
    #v(6pt)
    #set text(size: 8.5pt, weight: "regular")
    #text(style: "italic")[A 93-Day Grid for Evolutionary Flow and Temporal Split]
    
    #v(15pt)
    #set text(size: 7.5pt)
    #raw("[ TRACK: CYCLE 13 ]  [ SPAN: 93 DAYS ]  [ FORMAT: A5 PRINT ]")
    
    #v(50pt)
    #align(left)[
      #set text(size: 8pt)
      #grid(
        columns: (auto, 1fr),
        gutter: 12pt,
        raw("OPERATOR:"), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ],
        raw("INIT DATE:"), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ]
      )
    ]
  ]
]
