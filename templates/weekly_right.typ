#import "common.typ": *
#let weekly-right-page() = {
  system-header("TOPOLOGICAL DYNAMICS", "ADJUSTMENT FIELD")
  v(3pt)
  raw("// RELATION BALANCE INDICATORS (Assess dominance or balance):")
  v(2pt)
  grid(
    columns: (auto, 1fr),
    column-gutter: 10pt,
    row-gutter: 6pt,
    align: (left + horizon, left + horizon),
    raw("[ Homeostatic vs. Amplifying ]"), box(width: 100%, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#v(9pt)],
    raw("[ Rhizomatic vs. Complexity  ]"), box(width: 100%, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#v(9pt)],
    raw("[ Flight Lines vs. Stagnation]"), box(width: 100%, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#v(9pt)],
    raw("[ Systemic Leak vs. Capture  ]"), box(width: 100%, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#v(9pt)],
  )
  v(4pt)
  [
    #set text(size: 9pt)
    #raw("INTERFACE RECONFIGURATIONS (Workspace & substrate adjustments):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "What physical or digital changes must you introduce to your environment (desks, notification blocks, lens selections, server containers) to smooth out your attention flow?"
  ]
  v(1pt)
  write-lines(12, height: 10pt)
  v(4pt)
  [
    #set text(size: 9pt)
    #raw("THE UNRESOLVED STRATUM (Carried-forward friction):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Document the lingering issues, somatic exhaustions, or uncompleted loops that are leaking into the next fold."
  ]
  v(1pt)
  write-lines(12, height: 10pt)
}
