#import "common.typ": *
#let baseline-page() = {
  system-header("SYSTEM BASELINE", "OWNERSHIP & ENCODING")
  v(4pt)
  set text(size: 8pt)
  [Establish and document your core cybernetic operator baseline parameters:]
  v(4pt)
  grid(
    columns: (1fr),
    gutter: 10pt,
    [
      #set text(weight: "bold", size: 9pt)
      #raw("PHYSICAL CHASSIS REF (Biological Baseline):") \
      #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))
      "Document biological status: weight, chronic posture baselines, cardiovascular stats, or physical limitations."
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
    ],
    [
      #set text(weight: "bold", size: 9pt)
      #raw("COGNITIVE FREQUENCY (Mental Focus State):") \
      #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))
      "Define baseline intellectual bandwidth, primary study domains, and estimated daily deep-focus limit."
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
    ],
    [
      #set text(weight: "bold", size: 9pt)
      #raw("METABOLIC BASE LEVEL (Energy & Recovery):") \
      #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))
      "Log physiological recovery indicators: sleep hours/quality, resting heart rate, nutritional defaults, or hydration level."
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
    ],
    [
      #set text(weight: "bold", size: 9pt)
      #raw("ATTENTION FILTER ID (Device & Filter Rules):") \
      #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))
      "List the active device configurations, screen time thresholds, website blocklists, or notification rules in place."
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
      #v(1pt)
      #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#dddddd")))[#v(9pt)]
    ]
  )
  v(6pt)
  [Operator Systemic Commitment:]
  rect(width: 100%, stroke: 0.5pt + rgb("#dddddd"), inset: 8pt, fill: rgb("#fafafa"))[
    #set text(style: "italic", size: 8.5pt)
    "I commit to materializing the agential cut. I will use this apparatus daily to register state trajectories, stabilize homeostatic loops, and allow flight lines to emerge constructively without collapsing into administrative anxiety."
  ]
  v(8pt)
  align(right)[
    #grid(
      columns: (1.5fr, 1fr),
      gutter: 15pt,
      [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#999999")))[] \ #set text(size: 7pt); #raw("OPERATOR SIGNATURE") ],
      [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#999999")))[] \ #set text(size: 7pt); #raw("DATE INITIALIZED") ]
    )
  ]
}
