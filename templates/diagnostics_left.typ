#import "common.typ": *
#let diagnostics-left-page() = {
  system-header("AUTOPOIETIC FLOW & HOMEORHESIS ASSESSMENT", "FINAL SYSTEM DIAG")
  v(6pt)
  set text(size: 9.5pt)
  [Identify secondary state variables and environmental homeorhesis indicators across the completed 84-day macro-trajectory:]
  v(8pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#222222"), fill: rgb("#fafafa"), inset: 8pt, radius: 1pt)[
    *#raw("//") METABOLIC REACTION & HABIT PLASTICITY KINEMATICS*
    #v(4pt)
    #set text(size: 8.5pt, fill: rgb("#333333"))
    - *ADAPTATION VELOCITY:* Evaluate the system's reaction time to unexpected environmental shocks, technical failures, or somatic boundary breaks. How fluidly did the apparatus re-stabilize?
    - *DECAY SLOWDOWN:* Measure the duration and resilience of new habit adherence. How effectively did emergent workflows resist decaying back into old sedimented loops?
  ]
  v(6pt)
  set text(size: 8.5pt, fill: rgb("#222222"), weight: "bold")
  raw("// HOMEORHETIC SYNTHESIS ARENA (Read adaptation velocity and decay variables diffractively):")
  v(4pt)
  rect(width: 100%, height: 360pt, stroke: (left: 0.5pt + rgb("#aaaaaa")), fill: rgb("#ffffff"), inset: 8pt)[
    #set text(size: 8pt, fill: rgb("#888888"))
    #raw("// Map the feedback loops here. Document how technical infrastructure adjustments alloyed with your biological hardware.")
    #v(4pt)
    #write-lines(26, height: 13pt)
  ]
}
