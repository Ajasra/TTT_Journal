#import "common.typ": *
#let taxonomy-page-left(dimensions) = {
  system-header("8-DIMENSIONAL TAXONOMY REFERENCE (1/2)", "SYSTEM REFERENCE")
  v(6pt)
  [Reference matrix for tracking the eight primary systemic coordinates and metrics across the daily attunement loop:]
  v(8pt)
  for dim in dimensions {
    rect(width: 100%, stroke: 0.5pt + rgb("#eeeeee"), inset: 6pt, radius: 2pt)[
      #set text(size: 9pt)
      #grid(
        columns: (auto, 1fr),
        gutter: 10pt,
        raw(dim.id + ":"), [ *#dim.name* ]
      )
      #v(1pt)
      #set text(size: 8.5pt, fill: rgb("#444444"))
      "#dim.desc"
      #v(2pt)
      #set text(size: 7.5pt, fill: rgb("#888888"))
      #write-lines(5, height: 9.5pt)
    ]
    v(1pt)
  }
}
