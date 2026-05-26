#import "common.typ": *
#let calibration-left-page(cycle, title, subtitle, focus, what_is, why, effect, prompts) = {
  system-header("CYCLE [ " + cycle + " ] SETUP: METRIC CALIBRATION", "SYSTEM CONFIG")
  v(2pt)
  rect(width: 100%, stroke: 0.75pt + rgb("#999999"), inset: 6pt, fill: rgb("#fafafa"))[
    #set text(size: 8.5pt)
    *#title* \
    #set text(size: 8pt, style: "italic")
    #subtitle \
    #v(2pt)
    #set text(size: 7.5pt, style: "normal")
    *Target Focus:* #focus \
    *What It Is:* #what_is \
    *Why It Is:* #why \
    *Effect:* #effect
  ]
  v(3pt)
  raw(prompts.at("left_1"))
  v(1pt)
  write-lines(6, height: 10pt)
  v(3pt)
  raw(prompts.at("left_2"))
  v(1pt)
  write-lines(6, height: 10pt)
  v(3pt)
  raw(prompts.at("left_3"))
  v(1pt)
  write-lines(6, height: 10pt)
}
