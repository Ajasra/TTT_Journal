#import "common.typ": *
#let topological-right-page() = {
  system-header("METRIC MATRIX SPECS", "COMPILATION 2/2")
  v(6pt)
  set text(size: 9.5pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#aaaaaa"), fill: rgb("#fafafa"), inset: 8pt, radius: 1pt)[
    *#raw("//") METABOLIC & COMPUTATIONAL CROSS-ANALYSIS* \
    #v(2pt)
    #set text(size: 8.5pt, fill: rgb("#333333"))
    Use this un-stratified field to trace core correlations across your 84-day trajectory. Do not treat these notes as passive documentation. Specifically analyze the interference pattern between your striated schedules and somatic vitality:
  ]
  v(6pt)
  grid(
    columns: (1fr, 1fr),
    gutter: 8pt,
    rect(width: 100%, height: 160pt, stroke: 0.5pt + rgb("#bbbbbb"), fill: rgb("#ffffff"), inset: 6pt)[
      #set text(size: 8pt, fill: rgb("#333333"))
      *#raw("//") CHRONOS STRATION vs. VITALITY LEAK* \
      #v(2pt)
      Did highly striated administrative intervals (C1) cause a systematic drain on Spinozian capacity (V1)? Map the specific technical server loads or posturing baselines that catalyzed energy dissipation:
    ],
    rect(width: 100%, height: 160pt, stroke: 0.5pt + rgb("#bbbbbb"), fill: rgb("#ffffff"), inset: 6pt)[
      #set text(size: 8pt, fill: rgb("#333333"))
      *#raw("//") FLIGHT VELOCITY vs. STABILIZER DEGRADATION* \
      #v(2pt)
      Did intense rhizomatic flight velocity (F1) cause a collapse of your grounding homeostatic stabilization loops (S1)? Document where spontaneous detours compromised recovery parameters:
    ]
  )
  v(4pt)
  set text(size: 8.5pt, fill: rgb("#555555"))
  raw("// UN-STRATIFIED DRIFT PROCESSOR (Fleeting correlations, structural anomalies, and ink traces):")
  v(2pt)
  rect(width: 100%, height: 240pt, stroke: (left: 0.5pt + rgb("#aaaaaa")), fill: rgb("#ffffff"), inset: 6pt)[
    #write-lines(14, height: 12pt)
  ]
}
