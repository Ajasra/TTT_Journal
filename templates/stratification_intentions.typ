#import "common.typ": *
#let stratification-intentions-page() = {
  system-header("SYSTEMIC INTENTIONS", "SYSTEM ATTUNEMENT // PRE-CYCLE 4/4")
  v(6pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#eeeeee"), inset: 8pt)[
    #set text(size: 9pt)
    #raw("Emergent Attractor Fields:") \
    #set text(size: 8pt, fill: rgb("#555555"))
    "What qualitative states of focus, creative output, or collaborative mutation do you intend to cultivate across this 84-day trajectory?"
    #v(2pt)
    #write-lines(13, height: 11pt)
  ]
  v(6pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#eeeeee"), inset: 8pt)[
    #set text(size: 9pt)
    #raw("Homeostatic Attractor Damping:") \
    #set text(size: 8pt, fill: rgb("#555555"))
    "Define your defensive systemic thresholds. What exact somatic or computational drag triggers an automated intervention by the system to reduce energy expenditure and prevent entropic collapse?"
    #v(2pt)
    #write-lines(12, height: 11pt)
  ]
}
