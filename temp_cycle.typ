#import "journal_template.typ": *
#set page(paper: "a5", margin: (inside: 9.8mm, outside: 7.35mm, top: 8.82mm, bottom: 8.82mm))
#set text(font: ("EB Garamond", "Liberation Serif", "Georgia", "serif"), size: 11.5pt, fill: rgb("#111111"))
#set block(spacing: 6pt)

#let test-calibration-left(cycle, title, subtitle, focus, what_is, why, effect, prompts) = {
  system-header("CYCLE [ " + cycle + " ] SETUP: METRIC CALIBRATION", "SYSTEM CONFIG")
  v(3pt)
  
  rect(width: 100%, stroke: 0.75pt + rgb("#111111"), inset: 6pt, fill: rgb("#fafafa"))[
    #set text(size: 8.5pt)
    *#title*     #set text(size: 8pt, style: "italic")
    #subtitle     #v(2pt)
    #set text(size: 7.5pt, style: "normal")
    *Target Focus:* #focus     *What It Is:* #what_is     *Why It Is:* #why     *Effect:* #effect
  ]
  
  v(3pt)
  raw(prompts.at("left_1"))
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(4, height: 10pt)
  ]
  
  v(3pt)
  raw(prompts.at("left_2"))
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(4, height: 10pt)
  ]
  
  v(3pt)
  raw(prompts.at("left_3"))
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(4, height: 10pt)
  ]
}

#test-calibration-left(
  "1",
  "CYCLE 1: DETERRITORIALIZATION",
  "Days 1–31 // Phase Focus: Destabilizing Stagnation & Pruning Obsolete Habit Loops",
  "Pruning Capture Loops & Tracing Baseline Friction",
  "An initial phase of deliberate destabilization. It is a month dedicated to identifying where your cognitive agency has been captured by sedimented routines, automated digital platforms, and unexamined workspace habits.",
  "Before any fluid creative trajectory can be mapped, the rigid, encrusted structures that dictate your daily time must be cracked open to allow alternative lines of flight to leak through.",
  "You do not force control; you consciously withdraw attention from energy leaks.",
  (
    "left_1": "ATTRACTOR EVAPORATION (Allowing commitments to dissolve):
Identify projects/tasks that no longer generate vital force but drain power.",
    "left_2": "INFRASTRUCTURAL ANOMALIES (Emergent, unscheduled detours):
Log sudden paths, unexpected conceptual drift, or technical anomalies.",
    "left_3": "RIGID LAYERS TO DISMANTLE (Capture zones marked for termination):
Specify digital habit traps, screen dependencies, or workspace layouts to break."
  )
)
