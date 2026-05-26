#import "common.typ": *
#let diagnostics-right-page() = {
  system-header("SYSTEM HOMEORHESIS RESULT", "FINAL CLASSIFIER")
  v(6pt)
  set text(size: 9.5pt)
  [Plot your absolute final system coordinates on the scaled wireframe below to visualize the macro-trajectory of your 84-day circuit. Mark the baseline center point of your evolved attractor basin:]
  v(10pt)
  align(center)[
    #rect(width: 180pt, height: 180pt, stroke: 0.5pt + rgb("#aaaaaa"), fill: rgb("#ffffff"))[
      #place(top + center, dy: 4pt)[#set text(size: 6pt, weight: "bold"); #raw("VITALITY / JOY (Spinozian Capacity)")]
      #place(bottom + center, dy: -4pt)[#set text(size: 6pt, weight: "bold"); #raw("DRAIN / EXHAUST (Somatic Leakage)")]
      #place(left + horizon, dx: 4pt)[#set text(size: 6pt, weight: "bold"); #raw("SMOOTH / FLOW")]
      #place(right + horizon, dx: -4pt)[#set text(size: 6pt, weight: "bold"); #raw("STRIATED / ORDER")]
    ]
  ]
  v(10pt)
  section-title("TRAJECTORY MUTATION ARCHIVE")
  set text(size: 9pt)
  [Evaluate your final system status. Do not treat these states as static classifications, but as temporary plateaus of your practice. Articulate the qualitative nature of your evolution in the adjacent field:]
  v(4pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#222222"), fill: rgb("#fafafa"), inset: 8pt)[
    #grid(
      columns: (1.2fr, 2fr),
      gutter: 12pt,
      [
        #set text(size: 8.5pt, weight: "bold")
        #raw("[ ] SUSTAINED HOMEORHESIS") \
        #set text(size: 7.5pt, weight: "regular", fill: rgb("#555555"))
        Dynamic, adaptive flow along a continuous path of growth. \
        #v(8pt)
        #raw("[ ] MUTATED SYSTEM STATE") \
        #set text(size: 7.5pt, weight: "regular", fill: rgb("#555555"))
        Unforeseen structural shift; alternative lines of flight formed.
      ],
      [
        #set text(size: 8.5pt, weight: "bold")
        #raw("[ ] ENTROPIC COLLAPSE") \
        #set text(size: 7.5pt, weight: "regular", fill: rgb("#555555"))
        Systemic leakage; loss of homeostatic stabilization loops. \
        #v(8pt)
        #raw("[ ] HYPER-STRIATED REGIME") \
        #set text(size: 7.5pt, weight: "regular", fill: rgb("#555555"))
        Re-stratification; capture by rigid administrative metrics.
      ]
    )
  ]
  v(2pt)
  rect(width: 100%, height: 110pt, stroke: (left: 0.5pt + rgb("#aaaaaa")), fill: rgb("#ffffff"), inset: 6pt)[
    #set text(size: 8pt, fill: rgb("#888888"))
    #raw("// REGISTRATION FIELD: Document the final integration of material allies, somatic baselines, and computational environments.")
  ]
}
