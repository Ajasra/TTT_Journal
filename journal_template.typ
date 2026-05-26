// Typst helper template for 100-Day Cybernetic Journal Layout
#let page-margins = (inside: 9.8mm, outside: 7.35mm, top: 8.82mm, bottom: 8.82mm)

#let dot-grid = pattern(size: (5mm, 5mm))[
  #place(dx: 2.5mm, dy: 2.5mm)[
    #circle(radius: 0.3pt, fill: rgb("#aaaaaa").lighten(20%))
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
  size: 9pt,
)

// Dotted lines generator
#let write-lines(count, height: 11pt, stroke-color: rgb("#dddddd")) = {
  stack(
    spacing: 0pt,
    for i in range(count) {
      box(width: 100%, height: height, stroke: (bottom: 0.25pt + stroke-color))[#align(bottom)[#v(0pt)]]
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
  
  system-header("DAY [ " + day + " / ___ ]", "INITIAL CONFIGURATION (Morning Threshold)")
  v(2pt)
  
  rect(width: 100%, stroke: 0.5pt + rgb("#444444"), inset: 6pt, radius: 2pt)[
    #set text(size: 8.5pt)
    #raw("> MATERIAL ALLIES:") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Inventory active physical tech and environments shaping your stance today."
    #v(1pt)
    #write-lines(3, height: 10pt)
    #v(2pt)
    #raw("> THE AGENTIAL CUT:") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Define your boundary for the next 12 hours: what is included and what is barred?"
    #v(1pt)
    #write-lines(3, height: 10pt)
  ]
  
  v(2pt)
  section-title("VECTOR FORCE MAPPING (Focus, Maintenance, Detours, Drag)")
  v(2pt)
  grid(
    columns: (1fr, 1fr),
    row-gutter: 4pt,
    column-gutter: 11pt,
    [
      #set text(size: 8.5pt)
      #raw("▲ ATTRACTOR (Focus Pull)") \
      #v(1pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("■ STABILIZER (Chassis Maintenance)") \
      #v(1pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("⤏ FLIGHT LINE (Spontaneous Detours)") \
      #v(1pt)
      #write-lines(2, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("▼ RESISTOR (Thermodynamic Friction)") \
      #v(1pt)
      #write-lines(2, height: 10pt)
    ]
  )
  
  v(2pt)
  [
    #set text(size: 8.5pt)
    #raw("TOPOLOGICAL RELATION:") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Trace the friction: Which vector parasitized the other today? Where did attention leak?"
    #v(1pt)
    #write-lines(2, height: 10pt)
  ]
  
  v(2pt)
  raw("INTENSIVE INK-TRACE (Morning Log / Drift Folds):")
  v(1pt)
  write-lines(13, height: 10pt)
  
}

// -----------------------------------------------------------------------------
// TEMPLATE 2: DAILY SPREAD - RIGHT PAGE (OPERATIONAL CONSOLE)
// -----------------------------------------------------------------------------
#let daily-right() = {
  
  system-header("THE TEMPORAL SPLIT", "ASYMMETRIC PROCESSING FIELDS")
  v(2pt)
  
  grid(
    columns: (1fr, 1fr),
    column-gutter: 10pt,
    [
      #set text(size: 8.5pt)
      #raw("CHRONOS STRATUM (Striated Logistics / Scheduled Maintenance):") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Log linear tasks, server system updates, and clock-tied commitments."
      #v(1.5pt)
      #write-lines(5, height: 10pt)
    ],
    [
      #set text(size: 8.5pt)
      #raw("AION CURRENT (Smooth Time / Studio Drift & Open Play):") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Track non-linear research, studio drifts, and spontaneous experiments."
      #v(1.5pt)
      #write-lines(5, height: 10pt)
    ]
  )
  
  v(3pt)
  [
    #set text(size: 8.5pt)
    #raw("INTENSIVE INK-TRACE (Un-stratified Associative Space):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Raw field for fleeting citations, logs, sketches, and sensory metrics."
  ]
  v(1pt)
  write-lines(9, height: 10pt)
  
  v(3pt)
  raw("RECURSIVE FOLD (Evening Reflection & Feedforward Link)")
  
  v(2pt)
  grid(
    columns: (0.8fr, 1.2fr),
    column-gutter: 10pt,
    [
      #set text(size: 8.5pt)
      #raw("1. STATE SPACE:") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Plot coordinate balancing Vitality/Joy and Exhaustion/Striation."
      #v(2pt)
      #align(center)[
        #rect(width: 110pt, height: 110pt, stroke: 0.5pt + rgb("#a1a1aa"), fill: rgb("#ffffff"), inset: 0pt)[
          #place(top + left)[#line(start: (0pt, 55pt), end: (110pt, 55pt), stroke: 0.25pt + rgb("#d4d4d8"))]
          #place(top + left)[#line(start: (55pt, 0pt), end: (55pt, 110pt), stroke: 0.25pt + rgb("#d4d4d8"))]
          #place(top + center, dy: 1.5pt)[#set text(size: 6pt); #raw("VITALITY / JOY")]
          #place(bottom + center, dy: -1.5pt)[#set text(size: 6pt); #raw("DRAIN / EXHAUST")]
          #place(left + horizon, dx: 1.5pt)[#set text(size: 6pt); #raw("SMOOTH / FLOW")]
          #place(right + horizon, dx: -1.5pt)[#set text(size: 6pt); #raw("STRIATED / ORDER")]
        ]
      ]
    ],
    [
      #set text(size: 8.5pt)
      #raw("2. CAPTURE AUDIT:") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Register interfaces, platforms, or habit loops that captured your agency today."
      #v(1.5pt)
      #write-lines(3, height: 10pt)
      
      #v(3pt)
      #raw("3. DIFFRACTION PATTERN:") \
      #set text(size: 7pt, fill: rgb("#555555"))
      "Map how actions ripple into constructive or destructive wave interferences."
      #v(1.5pt)
      #write-lines(3, height: 10pt)
    ]
  )
  
  v(3pt)
  [
    #set text(size: 8.5pt)
    #raw("THE RECURSIVE SEED:") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Formulate one instruction based on tonight's wave pattern. Copy it to tomorrow's threshold."
  ]
  v(1pt)
  write-lines(2, height: 10pt)
  
}

// -----------------------------------------------------------------------------
// TEMPLATE 3: WEEKLY FOLD - LEFT PAGE (DIFFRACTIVE FIELD)
// -----------------------------------------------------------------------------
#let weekly-left(week) = {
  
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

// -----------------------------------------------------------------------------
// TEMPLATE 4: WEEKLY FOLD - RIGHT PAGE (RE-CALIBRATION)
// -----------------------------------------------------------------------------
#let weekly-right() = {
  
  system-header("TOPOLOGICAL DYNAMICS", "ADJUSTMENT FIELD")
  v(3pt)
  
  raw("// RELATION BALANCE INDICATORS (Assess dominance or balance):")
  v(2pt)
  grid(
    columns: (auto, 1fr),
    column-gutter: 10pt,
    row-gutter: 6pt,
    align: (left + horizon, left + horizon),
    raw("[ Homeostatic vs. Amplifying ]"), box(width: 100%, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#v(9pt)],
    raw("[ Rhizomatic vs. Complexity  ]"), box(width: 100%, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#v(9pt)],
    raw("[ Flight Lines vs. Stagnation]"), box(width: 100%, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#v(9pt)],
    raw("[ Systemic Leak vs. Capture  ]"), box(width: 100%, stroke: (bottom: 0.25pt + rgb("#cccccc")))[#v(9pt)],
  )
  
  v(4pt)
  [
    #set text(size: 9pt)
    #raw("INTERFACE RECONFIGURATIONS (Workspace & substrate adjustments):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "What physical or digital changes must you introduce to your environment (desks, notification blocks, lens selections, server containers) to smooth out your attention flow?"
  ]
  v(1pt)
  write-lines(12, height: 10pt)
  
  
  v(4pt)
  [
    #set text(size: 9pt)
    #raw("THE UNRESOLVED STRATUM (Carried-forward friction):") \
    #set text(size: 7.5pt, fill: rgb("#555555"))
    "Document the lingering issues, somatic exhaustions, or uncompleted loops that are leaking into the next fold."
  ]
  v(1pt)
  write-lines(12, height: 10pt)
}

// -----------------------------------------------------------------------------
// TEMPLATE 5: CYCLE CALIBRATION SETUP - LEFT PAGE
// -----------------------------------------------------------------------------
#let calibration-left(cycle, title, subtitle, focus, what_is, why, effect, prompts) = {
  
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

// -----------------------------------------------------------------------------
// TEMPLATE 6: CYCLE CALIBRATION SETUP - RIGHT PAGE
// -----------------------------------------------------------------------------
#let calibration-right(cycle, prompts) = {
  
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
        columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        stroke: 0.25pt + rgb("#aaaaaa"),
        inset: 3pt,
        align: center,
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "),
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "),
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "),
        raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" "), raw(" ")
      )
    ]
    #v(2pt)
    #raw("SYSTEM DIAGNOSTIC (Somatic and attentional adjustments):") \
    #write-lines(5, height: 10pt)
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
    #raw("The 84-day cycle has fully actualized and stabilized.") \
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
