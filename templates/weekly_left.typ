#import "common.typ": *
#let weekly-left-page(week) = {
  system-header("WEEK [ " + week + " ] FOLD: THE DIFFRACTIVE FIELD", "PHASE ANALYSIS CHECKPOINT")
  v(3pt)
  [
    #set text(size: 9pt)
    #raw("MAPPED ATTRACTORS (Sustained Focus Vectors):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Identify the primary creative or technical fields that pulled your focus this week. Did they maintain their trajectory, or did they distort under friction?"
  ]
  v(1pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#888888"), inset: 6pt, radius: 2pt)[
    #write-lines(8, height: 10pt)
  ]
  v(3pt)
  [
    #set text(size: 9pt)
    #raw("DIFFRACTIVE RUNS (Reading actions through one another):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Do not record what you did. Record how your actions collided. Did an app deployment update open up a line of flight for your photography, or did your server's technical friction cancel out your vitality?"
  ]
  v(1pt)
  write-lines(8, height: 10pt)
  v(3pt)
  [
    #set text(size: 9pt)
    #raw("THE AION RESIDUAL (Undated potentials and open drift concepts):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "A space for un-dated creative seeds, conceptual detours, and raw research ideas. This is not a to-do list; it is a repository of un-stratified possibilities."
  ]
  v(1pt)
  write-lines(8, height: 10pt)
}
