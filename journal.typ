// Typst Template for Cybernetic Journal (A5 Form Factor)
#set page(
  paper: "a5",
  margin: (inner: 20mm, outer: 15mm, top: 18mm, bottom: 18mm),
)

#set text(
  font: ("EB Garamond", "Liberation Serif", "Georgia", "serif"),
  size: 10pt,
  fill: rgb("#111111"),
)

// Monospaced text configuration for system elements
#show raw: set text(
  font: ("JetBrains Mono", "Courier New", "Consolas", "monospace"),
  size: 8.5pt,
)

// Header helper
#let system-header(title, right-label) = {
  block(width: 100%, stroke: (bottom: 0.5pt + rgb("#bbbbbb")), inset: (bottom: 6pt))[
    #set text(weight: "bold")
    #grid(
      columns: (1fr, auto),
      raw(title),
      raw(right-label)
    )
  ]
}

// Subheader helper
#let section-title(title) = {
  v(8pt)
  rect(
    fill: rgb("#f4f4f5"),
    width: 100%,
    radius: 2pt,
    inset: 4pt,
    stroke: 0.25pt + rgb("#d4d4d8")
  )[
    #set text(weight: "bold")
    #raw(title)
  ]
}

// -----------------------------------------------------------------------------
// PAGE 1: TITLE & SYSTEM BASELINE
// -----------------------------------------------------------------------------
#align(center + horizon)[
  #v(-20pt)
  #rect(stroke: 1pt + rgb("#111111"), inset: 15pt, radius: 4pt)[
    #set text(size: 18pt, weight: "bold")
    #raw("CYBERNETIC JOURNAL")
  ]
  #v(10pt)
  #text(style: "italic", size: 11pt)[An Apparatus of Autopoietic Stabilization and Temporal Bifurcation]
  #v(40pt)
  #align(left)[
    #block(width: 80%, spacing: 12pt)[
      #line(length: 100%, stroke: 0.5pt)
      #grid(
        columns: (auto, 1fr),
        gutter: 10pt,
        raw("SYSTEM INIT:"), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ],
        raw("OPERATOR:   "), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ],
        raw("EPOCH SPAN: "), [ #raw("93 DAYS (CYCLES 1 - 3)") ]
      )
      #line(length: 100%, stroke: 0.5pt)
    ]
  ]
]

#pagebreak()

// -----------------------------------------------------------------------------
// PAGE 2: INSTRUCTIONS & PARADIGM
// -----------------------------------------------------------------------------
#system-header("OPERATIONAL PROTOCOLS", "SYSTEM MANUAL")
#v(10pt)

Welcome to the Cybernetic Journal. This system is designed around two temporal scales: *Chronos* (linear administrative time) and *Aion* (fluid evental time). 

#section-title("THE VECTOR FORCE FIELD (MORNING)")
Each morning, identify the four coordinates of your systemic state vector:
- *Attractors (▲):* Gravitational pulls towards creative, research, or execution states.
- *Stabilizers (■):* Homeostatic routines and maintenance habits.
- *Flight Lines (⤏):* Rhizomatic connections, escapes, and unexpected deviations.
- *Resistors (▼):* Friction, cognitive drag, and thermodynamic limits.

#section-title("THE FEEDBACK LOOP (EVENING)")
At the end of the day, record metrics, audit attention, and generate a *Feedforward Seed*. Write this seed into the next day's morning field to initialize the next state.

#pagebreak()

// -----------------------------------------------------------------------------
// PAGE 3: DAILY SPREAD - LEFT PAGE (MORNING ATTUNEMENT)
// -----------------------------------------------------------------------------
#system-header("DAY [ 001 / 100 ]", "MORNING ATTUNEMENT")
#v(8pt)

#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt, radius: 2pt)[
  #set text(size: 9pt)
  #raw("> Material Allies:") \
  #v(15pt)
  #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
  #v(5pt)
  #raw("> Agential Cut:") \
  #v(15pt)
]

#section-title("VECTOR FORCE FIELD")
#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #set text(size: 9pt)
    #raw("▲ ATTRACTOR") \
    #v(30pt)
    #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
  ],
  [
    #set text(size: 9pt)
    #raw("■ STABILIZER") \
    #v(30pt)
    #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
  ]
)

#v(8pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #set text(size: 9pt)
    #raw("⤏ FLIGHT LINE") \
    #v(30pt)
    #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
  ],
  [
    #set text(size: 9pt)
    #raw("▼ RESISTOR") \
    #v(30pt)
    #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
  ]
)

#v(6pt)
#raw("INTENSIVE INK-TRACE (Morning Log, Free-Writing, Schematic Doodling):") \
#rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
  #v(130pt)
]

#pagebreak()

// -----------------------------------------------------------------------------
// PAGE 4: DAILY SPREAD - RIGHT PAGE (OPERATIONAL CONSOLE)
// -----------------------------------------------------------------------------
#system-header("OPERATIONAL CONSOLE", "PROCESSING FIELD")
#v(8pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #set text(size: 9pt)
    #raw("CHRONOS // STRIATED") \
    #v(6pt)
    #repeat[#box(width: 100%, height: 18pt, stroke: (bottom: 0.25pt + rgb("#e4e4e7")))[]]
  ],
  [
    #set text(size: 9pt)
    #raw("AION // SMOOTH") \
    #v(6pt)
    #repeat[#box(width: 100%, height: 18pt, stroke: (bottom: 0.25pt + rgb("#e4e4e7")))[]]
  ]
)

#v(10pt)
#raw("FREE INK-LOG / DRIFT PROCESSOR:") \
#rect(width: 100%, stroke: 0.25pt + rgb("#cccccc"), inset: 6pt)[
  #v(55pt)
]

#v(10pt)
#line(length: 100%, stroke: 0.5pt + rgb("#bbbbbb"))
#v(4pt)
#raw("EVENING DIAGNOSTIC & FEEDBACK LOOP")

#v(8pt)
#grid(
  columns: (1.2fr, 1fr),
  gutter: 12pt,
  [
    #set text(size: 8.5pt)
    #raw("1. STATE SPACE") \
    #v(4pt)
    #align(center)[
      #rect(width: 90pt, height: 90pt, stroke: 0.5pt + rgb("#a1a1aa"))[
        #place(center + horizon)[
          #line(start: (-45pt, 0pt), end: (45pt, 0pt), stroke: 0.25pt + rgb("#d4d4d8"))
          #line(start: (0pt, -45pt), end: (0pt, 45pt), stroke: 0.25pt + rgb("#d4d4d8"))
        ]
        #place(top + center, dy: 2pt)[#set text(size: 5pt); #raw("HIGH VITALITY / JOY")]
        #place(bottom + center, dy: -2pt)[#set text(size: 5pt); #raw("LOW VITALITY / DRAIN")]
        #place(left + horizon, dx: 2pt)[#set text(size: 5pt); #raw("SMOOTH / FLOW")]
        #place(right + horizon, dx: -2pt)[#set text(size: 5pt); #raw("STRIATED / STRUCTURED")]
      ]
    ]
  ],
  [
    #set text(size: 8.5pt)
    #raw("2. ENTANGLEMENT AUDIT (Loss of Agency)") \
    #v(12pt)
    #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
    #v(12pt)
    #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
    
    #v(6pt)
    #raw("3. DIFFRACTION PATTERN (Ripple / Feedback)") \
    #v(12pt)
    #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
    #v(12pt)
    #line(length: 100%, stroke: 0.25pt + rgb("#dddddd"))
  ]
)

#v(8pt)
#raw("4. FEEDFORWARD SEED:") \
#rect(width: 100%, fill: rgb("#fafafa"), stroke: 0.5pt + rgb("#cccccc"), inset: 6pt)[
  #v(12pt)
]
