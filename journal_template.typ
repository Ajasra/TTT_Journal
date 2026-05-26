// Typst helper template for 100-Day Cybernetic Journal Layout
#let page-margins = (inside: 9.8mm, outside: 7.35mm, top: 8.82mm, bottom: 8.82mm)

#let dot-grid = pattern(size: (5mm, 5mm))[
  #place(dx: 2.5mm, dy: 2.5mm)[
    #circle(radius: 0.3pt, fill: rgb("#cccccc").lighten(20%))
  ]
 ]

#let setup-page-rules() = {
  set page(
    paper: "a5",
    margin: page-margins,
  )
  set text(
    font: ("EB Garamond", "Liberation Serif", "Georgia", "serif"),
    size: 11.5pt,
    fill: rgb("#111111"),
  )
}

// Global raw block styling for monospaced fields
#show raw: set text(
  font: ("JetBrains Mono", "Courier New", "Consolas", "monospace"),
  size: 10pt,
)

// Dotted lines generator
#let write-lines(count, height: 18pt) = {
  stack(
    spacing: 0pt,
    for i in range(count) {
      box(width: 100%, height: height, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#align(bottom)[#v(0pt)]]
    }
  )
}

// System Header Helper with Date Placeholder
#let system-header(title, right-label, show-date: true) = {
  block(width: 100%, stroke: (bottom: 0.5pt + rgb("#bbbbbb")), inset: (bottom: 5pt))[
    #set text(weight: "bold", size: 8.5pt)
    #if show-date {
      grid(
        columns: (1fr, auto, auto),
        gutter: 10pt,
        align: (left, center, right),
        raw(title),
        raw("DATE: __ / __ / __"),
        raw(right-label)
      )
    } else {
      grid(
        columns: (1fr, auto),
        gutter: 10pt,
        align: (left, right),
        raw(title),
        raw(right-label)
      )
    }
  ]
}

// Subheader Helper
#let section-title(title) = {
  v(4pt)
  rect(
    fill: rgb("#f4f4f5"),
    width: 100%,
    radius: 1.5pt,
    inset: (x: 4pt, y: 3pt),
    stroke: 0.25pt + rgb("#d4d4d8")
  )[
    #set text(weight: "bold")
    #raw(title)
  ]
}

// -----------------------------------------------------------------------------
// TEMPLATE 1: DAILY SPREAD - LEFT PAGE (MORNING ATTUNEMENT)
// -----------------------------------------------------------------------------
#let daily-left(day, total: 100) = {
  
  system-header("DAY [ " + day + " / ___ ]", "MORNING ATTUNEMENT")
  v(2pt)
  
  rect(width: 100%, stroke: 0.5pt + rgb("#222222"), inset: 8pt, radius: 2pt)[
    #set text(size: 9pt)
    #raw("> MATERIAL ALLIES (Tools, interfaces, environment):") \
    #v(2pt)
    #write-lines(3, height: 10pt)
    #v(3pt)
    #raw("> AGENTIAL CUT (What boundary are you enacting today?):") \
    #v(2pt)
    #write-lines(3, height: 10pt)
  ]
  
  section-title("VECTOR FORCE FIELD")
  v(2pt)
  grid(
    columns: (1fr, 1fr),
    row-gutter: 6pt,
    column-gutter: 11pt,
    [
      #set text(size: 9pt)
      #raw("▲ ATTRACTOR (Focus pull)") \
      #v(2pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 9pt)
      #raw("■ STABILIZER (Maintenance)") \
      #v(2pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 9pt)
      #raw("⤏ FLIGHT LINE (Detours)") \
      #v(2pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 9pt)
      #raw("▼ RESISTOR (Drag/Friction)") \
      #v(2pt)
      #write-lines(2, height: 10pt)
    ]
  )
  
  v(2pt)
  [
    #set text(size: 8.5pt)
    #raw("TOPOLOGICAL RELATION: Which vector parasitized the other? What leaked?")
    #v(1pt)
    #write-lines(1, height: 10pt)
  ]
  
  v(2pt)
  raw("INTENSIVE INK-TRACE (Morning Log / Drift Folds):")
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt, fill: rgb("#ffffff").lighten(50%))[
    #write-lines(13, height: 10pt)
  ]
}

// -----------------------------------------------------------------------------
// TEMPLATE 2: DAILY SPREAD - RIGHT PAGE (OPERATIONAL CONSOLE)
// -----------------------------------------------------------------------------
#let daily-right() = {
  
  
  system-header("OPERATIONAL CONSOLE", "PROCESSING FIELD")
  v(2pt)
  
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    [
      #set text(size: 9pt)
      #raw("CHRONOS // STRIATED (Tasks)") \
      #v(2pt)
      #write-lines(6, height: 10pt)
    ],
    [
      #set text(size: 9pt)
      #raw("AION // SMOOTH (Drifts)") \
      #v(2pt)
      #write-lines(6, height: 10pt)
    ]
  )
  
  v(3pt)
  raw("FREE INK-LOG / DRIFT PROCESSOR (Associative Notes):")
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt, fill: rgb("#ffffff").lighten(50%))[
    #write-lines(10, height: 10pt)
  ]
  
  v(2pt)
  line(length: 100%, stroke: 0.5pt + rgb("#bbbbbb"))
  v(1pt)
  raw("EVENING DIAGNOSTIC & FEEDBACK LOOP")
  
  v(2pt)
  grid(
    columns: (1.2fr, 1fr),
    gutter: 10pt,
    [
      #set text(size: 9pt)
      #raw("1. STATE SPACE") \
      #v(2pt)
      #align(center)[
        #rect(width: 120pt, height: 120pt, stroke: 0.5pt + rgb("#a1a1aa"), fill: rgb("#ffffff"))[
          #place(top + left)[#line(start: (0pt, 55pt), end: (110pt, 55pt), stroke: 0.25pt + rgb("#d4d4d8"))]
          #place(top + left)[#line(start: (55pt, 0pt), end: (55pt, 110pt), stroke: 0.25pt + rgb("#d4d4d8"))]
          #place(top + center, dy: 2pt)[#set text(size: 4.5pt); #raw("VITALITY / JOY")]
          #place(bottom + center, dy: -2pt)[#set text(size: 4.5pt); #raw("DRAIN / EXHAUST")]
          #place(left + horizon, dx: 2pt)[#set text(size: 4.5pt); #raw("SMOOTH / FLOW")]
          #place(right + horizon, dx: -2pt)[#set text(size: 4.5pt); #raw("STRIATED / ORDER")]
        ]
      ]
    ],
    [
      #set text(size: 9pt)
      #raw("2. ENTANGLEMENT AUDIT") \
      #v(2pt)
      #write-lines(4, height: 10pt)
      
      #v(2pt)
      #raw("3. DIFFRACTION PATTERN") \
      #v(2pt)
      #write-lines(4, height:   10pt)
    ]
  )
  
  v(2pt)
  raw("4. FEEDFORWARD SEED (Tomorrow's Initial Boundary):")
  rect(width: 100%, fill: rgb("#fafafa"), stroke: 0.5pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(2, height: 10pt)
  ]
}

// -----------------------------------------------------------------------------
// TEMPLATE 3: WEEKLY FOLD - LEFT PAGE (DIFFRACTIVE FIELD)
// -----------------------------------------------------------------------------
#let weekly-left(week) = {
  
  
  system-header("WEEK [ " + week + " ] FOLD: THE DIFFRACTIVE FIELD", "WEEKLY CALIBRATION")
  v(3pt)
  
  raw("// 0. MACRO ATTRACTORS (Weekly Focus)")
  v(1pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#222222"), inset: 8pt, radius: 2pt)[
    #write-lines(6, height: 11pt)
  ]
  
  v(4pt)
  raw("// 1. THE INTERFERENCE PATTERN (Diffractive Analysis)")
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(8, height: 11pt)
  ]
  
  v(4pt)
  raw("// 2. RESERVOIR OF POTENTIALS (Aion Tank / Undated Task List)")
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(12, height: 11pt)
  ]
}

// -----------------------------------------------------------------------------
// TEMPLATE 4: WEEKLY FOLD - RIGHT PAGE (RE-CALIBRATION)
// -----------------------------------------------------------------------------
#let weekly-right() = {
  
  
  system-header("SYSTEMIC RE-CALIBRATION", "ADJUSTMENT FIELD")
  v(3pt)
  
  raw("// 3. STRUCTURAL SIGNATURE ASSESSMENT (Topological Dynamics / Dominance)")
  v(2pt)
  grid(
    columns: (1.1fr, 1fr),
    gutter: 8pt,
    [
      #set text(size: 8pt)
      #raw("Homeostatic vs Amplifying:  [     ]") \
      #v(1.5pt)
      #raw("Flight Lines vs Stagnation: [     ]")
    ],
    [
      #set text(size: 8pt)
      #raw("Rhizomatic vs Complexity:   [     ]") \
      #v(1.5pt)
      #raw("Systemic Leak vs Capture:   [     ]")
    ]
  )
  
  v(10pt)
  raw("// 4. MATERIAL ADJUSTMENTS (Workspace, routine, environment)")
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(12, height: 11pt)
  ]
  
  v(4pt)
  raw("// 5. THE RESIDUE FOLD (Carried-forward issues)")
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(13, height: 11pt)
  ]
}

// -----------------------------------------------------------------------------
// TEMPLATE 5: CYCLE CALIBRATION SETUP - LEFT PAGE
// -----------------------------------------------------------------------------
#let calibration-left(cycle, title, subtitle, guideline, prompts) = {
  
  system-header("CYCLE [ " + cycle + " ] SETUP: METRIC CALIBRATION", "SYSTEM CONFIG")
  v(3pt)
  
  rect(width: 100%, stroke: 0.75pt + rgb("#111111"), inset: 6pt, fill: rgb("#fafafa"))[
    #set text(weight: "bold", size: 10pt)
    #raw(title) \
    #set text(weight: "regular", size: 9pt, style: "italic")
    #subtitle \
    #v(3pt)
    #set text(style: "normal", weight: "regular", size: 9pt)
    #raw(guideline)
  ]
  
  v(4pt)
  raw(prompts.at("left_1"))
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(7, height: 11pt)
  ]
  
  v(4pt)
  raw(prompts.at("left_2"))
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(7, height: 11pt)
  ]
  
  v(4pt)
  raw(prompts.at("left_3"))
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(7, height: 11pt)
  ]
}

// -----------------------------------------------------------------------------
// TEMPLATE 6: CYCLE CALIBRATION SETUP - RIGHT PAGE
// -----------------------------------------------------------------------------
#let calibration-right(cycle, prompts) = {
  
  system-header("CYCLE [ " + cycle + " ] TUNING", "EVOLUTION FIELD")
  v(3pt)
  
  raw(prompts.at("right_1"))
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(9, height: 11pt)
  ]
  
  v(4pt)
  raw(prompts.at("right_2"))
  v(1pt)
  rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
    #write-lines(9, height: 11pt)
  ]
  
  v(4pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#111111"), inset: 6pt, fill: rgb("#f4f4f5"))[
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

// -----------------------------------------------------------------------------
// TEMPLATE 7: CHALLENGE TRACKER COMPONENT (3 grids per page)
// -----------------------------------------------------------------------------
#let challenge-tracker-block(title, target) = {
  rect(width: 100%, stroke: 0.5pt + rgb("#999999"), inset: 6pt, radius: 2pt)[
    #set text(size: 8pt)
    #grid(
      columns: (1fr, auto),
      raw("// SYSTEM CHALLENGE: __________________________________________"),
      raw("TARGET: " + target)
    )
    #v(4pt)
    #align(center)[
      #table(
        columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        stroke: 0.25pt + rgb("#aaaaaa"),
        inset: 3pt,
        align: center,
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "),
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "),
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" ")
      )
    ]
    #v(2pt)
    #raw("SYSTEM DIAGNOSTIC (Somatic and attentional adjustments):") \
    #write-lines(6, height: 10pt)
  ]
}

// -----------------------------------------------------------------------------
// TEMPLATE 8: SKETCHPAD / NOTE FIELD
// -----------------------------------------------------------------------------
#let sketchpad(idx) = {
  system-header("FREE-FORM SKETCHPAD / DRIFT FIELDS", "NOTE FIELD " + str(idx) + "/5")
  v(380pt) // dot grid covers background
}

// -----------------------------------------------------------------------------
// TEMPLATE 9: SYSTEM SHUTDOWN / END PAGE
// -----------------------------------------------------------------------------
#let system-shutdown() = {
  
  
  system-header("SYSTEM SHUTDOWN", "FINAL SEQUENCE")
  align(center + horizon)[
    #rect(stroke: 1pt + rgb("#111111"), inset: 15pt, fill: rgb("#fafafa"))[
      #set text(size: 14pt, weight: "bold")
      #raw("SYSTEM STATUS: SHUTDOWN")
    ]
    #v(15pt)
    #set text(size: 9pt)
    #raw("The 93-day cycle has fully actualized and stabilized.") \
    #raw("Agential cuts are completed. State coordinates are archived.")
    #v(40pt)
    #rect(width: 80%, stroke: 0.5pt + rgb("#bbbbbb"), inset: 8pt)[
      #align(left)[
        #grid(
          columns: (auto, 1fr),
          gutter: 8pt,
          raw("FINAL SHUTDOWN TIMESTAMP:"), [ #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#999999")))[] ],
          raw("AUTHORIZED BY OPERATOR:  "), [ #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#999999")))[] ]
        )
      ]
    ]
  ]
}
