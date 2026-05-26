#import "common.typ": *
#let challenges-left-page(ch1_title, ch1_target, ch2_title, ch2_target, ch3_title, ch3_target) = {
  system-header("SYSTEM CHALLENGE TRACKERS: FIELD 1/2", "METRIC GRIDS")
  v(8pt)
  challenge-tracker-block(ch1_title, ch1_target)
  v(8pt)
  challenge-tracker-block(ch2_title, ch2_target)
  v(8pt)
  challenge-tracker-block(ch3_title, ch3_target)
}
