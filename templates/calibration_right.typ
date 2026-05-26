#import "common.typ": *
#let calibration-right-page(cycle, prompts) = {
  system-header("CYCLE [ " + cycle + " ] TUNING", "EVOLUTION FIELD")
  v(3pt)
  raw(prompts.at("right_1"))
  v(1pt)
  write-lines(12, height: 10pt)
  v(4pt)
  raw(prompts.at("right_2"))
  v(1pt)
  write-lines(12, height: 10pt)
  v(4pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#999999"), inset: 6pt, fill: rgb("#eeeeee"))[
    #set text(size: 9pt)
    #raw("AUTHORIZED SYSTEM STATE FOR CYCLE " + cycle + ":") \
    #v(4pt)
    #grid(
      columns: (1fr, 1.2fr),
      gutter: 10pt,
      [
        #raw("[ ] HIGH STRUCTURE // LOW FLIGHT") \
        #v(4pt)
        #raw("[ ] HIGH FLIGHT // LOW STRUCTURE")
      ],
      [
        #raw("[ ] BALANCED HOMEOSTASIS") \
        #v(4pt)
        #raw("[ ] HIGH CRITICAL VECTOR (TRANSITION)")
      ]
    )
  ]
}
