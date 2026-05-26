#import "common.typ": *
#let stratification-baselines-page() = {
  system-header("INITIAL STRATIFICATION (Somatic & Attentional Baselines)", "SYSTEM ATTUNEMENT // PRE-CYCLE 1/4")
  v(6pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#eeeeee"), inset: 8pt)[
    #set text(size: 9pt)
    #raw("Sedimented Routines & Capture Fields:") \
    #set text(size: 8pt, fill: rgb("#555555"))
    "Map the rigid dependencies, automatic behaviors, or loop-traps currently capturing your daily agency. What loops perform you before you can perform an agential cut?"
    #v(2pt)
    #write-lines(13, height: 10pt)
  ]
  v(6pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#eeeeee"), inset: 8pt)[
    #set text(size: 9pt)
    #raw("Attention Span Kinematics:") \
    #set text(size: 8pt, fill: rgb("#555555"))
    "Document your current deep-focus boundaries. Map the exact technical or environmental triggers that shatter your attention span and accelerate drift into computational distraction loops."
    #v(2pt)
    #write-lines(13, height: 10pt)
  ]
}
