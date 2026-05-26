#import "common.typ": *
#let challenges-right-page(ch4_title, ch4_target, ch5_title, ch5_target, ch6_title, ch6_target) = {
  system-header("SYSTEM CHALLENGE TRACKERS: FIELD 2/2", "METRIC GRIDS")
  v(8pt)
  challenge-tracker-block(ch4_title, ch4_target)
  v(8pt)
  challenge-tracker-block(ch5_title, ch5_target)
  v(8pt)
  challenge-tracker-block(ch6_title, ch6_target)
}
