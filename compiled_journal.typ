#import "journal_template.typ": *
#set page(paper: "a5", margin: (inside: 9.8mm, outside: 7.35mm, top: 8.82mm, bottom: 8.82mm))
#set text(font: ("EB Garamond", "Liberation Serif", "Georgia", "serif"), size: 11.5pt, fill: rgb("#111111"))
#set block(spacing: 6pt)

// Page 1: Title Page
#align(center + horizon)[
  #v(-20pt)
  #rect(stroke: 1pt + rgb("#111111"), inset: 15pt, radius: 4pt)[
    #set text(size: 16pt, weight: "bold")
    #raw("CYBERNETIC JOURNAL")
  ]
  #v(10pt)
  #text(style: "italic", size: 8pt)[An Apparatus of Autopoietic Stabilization and Temporal Bifurcation]
  #v(40pt)
  #align(left)[
    #block(width: 85%, spacing: 12pt)[
      #set text(size: 8pt)
      #show raw: set text(size: 8pt)
      #grid(
        columns: (auto, 1fr),
        gutter: 10pt,
        raw("SYSTEM INIT:"), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ],
        raw("OPERATOR:   "), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ],
        raw("EPOCH SPAN: "), [ #raw("CYCLE 1 - 3 // EPOCH SPAN: 93 DAYS // A5 STAMP") ]
      )
    ]
  ]
]
#pagebreak()

// Page 2: System State Baseline
#system-header("SYSTEM BASELINE", "OWNERSHIP & ENCODING")
#v(4pt)
#set text(size: 8pt)
Establish and document your core cybernetic operator baseline parameters:
#v(4pt)
#grid(
  columns: (1fr),
  gutter: 10pt,
  [
    #set text(weight: "bold", size: 10pt)
    #raw("PHYSICAL CHASSIS REF (Biological Baseline):") \
    #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))
    "Document biological status: weight, chronic posture baselines, cardiovascular stats, or physical limitations."
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
  ],
  [
    #set text(weight: "bold", size: 10pt)
    #raw("COGNITIVE FREQUENCY (Mental Focus State):") \
    #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))
    "Define baseline intellectual bandwidth, primary study domains, and estimated daily deep-focus limit."
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
  ],
  [
    #set text(weight: "bold", size: 10pt)
    #raw("METABOLIC BASE LEVEL (Energy & Recovery):") \
    #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))
    "Log physiological recovery indicators: sleep hours/quality, resting heart rate, nutritional defaults, or hydration level."
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
  ],
  [
    #set text(weight: "bold", size: 10pt)
    #raw("ATTENTION FILTER ID (Device & Filter Rules):") \
    #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))
    "List the active device configurations, screen time thresholds, website blocklists, or notification rules in place."
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
    #v(1pt)
    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]
  ]
)
#v(6pt)
Operator Systemic Commitment:
#rect(width: 100%, stroke: 0.5pt + rgb("#aaaaaa"), inset: 8pt, fill: rgb("#fafafa"))[
  #set text(style: "italic", size: 8.5pt)
  "I commit to materializing the agential cut. I will use this apparatus daily to register state trajectories, stabilize homeostatic loops, and allow flight lines to emerge constructively without collapsing into administrative anxiety."
]
#v(8pt)
#align(right)[
  #grid(
    columns: (1.5fr, 1fr),
    gutter: 15pt,
    [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#999999")))[] \ #set text(size: 7pt); #raw("OPERATOR SIGNATURE") ],
    [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#999999")))[] \ #set text(size: 7pt); #raw("DATE INITIALIZED") ]
  )
]
#pagebreak()

// Page 3: Operating Guide - Philosophy & Attunement
#system-header("CYBERNETIC OPERATING MANUAL (1/2)", "SYSTEM GUIDE", show-date: false)
#v(6pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#222222"), inset: 8pt, radius: 2pt, fill: rgb("#fafafa"))[
  #set text(size: 9.5pt, weight: "bold")
  #raw("AUTOPOIETIC RE-PROGRAMMING") \
  #v(2pt)
  #set text(size: 8pt, weight: "regular")
  This journal is a physical-conceptual instrument of material-discursive boundary making. It is designed to restructure cognitive pathways, regulate intensive energy, and balance stability (homeostasis) with adaptive mutation (homeorhesis). It operates on two distinct temporal scales: Chronos (striated, clock-measured administrative time) and Aion (smooth, intensive evental time of creative play).
]
#v(2pt)
#section-title("THE TEMPORAL SPLIT (CHRONOS vs. AION)")
#set text(size: 8pt)
- *Chronos (Striated Time):* Clock-tied scheduling. Use the Chronos column on the right console to log linear tasks, calendars, and structural routines.
- *Aion (Smooth Time):* Event-time creative play. Use the Aion column on the right console to log rhizomatic research, drift concepts, and open-ended study.
- *Rule:* Never let Chronos override Aion play. Allocate dedicated time segments for Aion drift to avoid mental entropy decay.
#section-title("▲ THE VECTOR FORCE FIELD")
#set text(size: 8pt)
Each morning, define the four vectors acting on your cognitive landscape (rated 0-10):
- *▲ Attractors:* Primary intellectual/creative draws pulling focus.
- *■ Stabilizers:* Maintenance routines (diet, sleep hygiene, physical movement).
- *⤏ Flight Lines:* Rhizomatic escapes, spontaneous experiments, and detours.
- *▼ Resistors:* Systemic friction, somatic exhaustions, and cognitive blockages.
#pagebreak()

// Page 4: Operating Guide - Operations & Diagnostics
#system-header("CYBERNETIC OPERATING MANUAL (2/2)", "SYSTEM GUIDE", show-date: false)
#v(6pt)
#section-title("THE DAILY CONSOLE: CHRONOS & AION")
#set text(size: 8pt)
The right page console handles active actualization. Divide your daily cognitive loads between Chronos columns (scheduled work) and Aion columns (fluid drift tasks).
- *Free Ink-Log / Drift Processor:* Use the middle block as an associative notes area. Capture fleeting web links, citations, or metrics to avoid cognitive fragmentation.
#section-title("EVENING DIAGNOSTIC & FEEDFORWARD LOOP")
#set text(size: 8pt)
Before system shutdown each evening, audit the day's coordinates:
- *1. State Space:* Plot your coordinate mapping Vitality/Joy and Flow/Discipline.
- *2. Entanglement Audit:* Register screens, platforms, or habit traps that captured your agency.
- *3. Diffraction Pattern:* Map how actions rippled into constructive or destructive wave interferences.
#v(4pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#111111"), inset: 8pt, fill: rgb("#fafafa"))[
  #set text(size: 8pt, weight: "bold")
  #raw("THE FEEDFORWARD SEED (THE CYBERNETIC LINK):") \
  #v(2pt)
  #set text(size: 8pt, weight: "regular")
  Formulate a single instruction based on the evening diagnostic. Write it in the seed block. The next morning, copy this seed directly into the attunement block to program the day's starting boundaries.
]
#pagebreak()

// Page 5: Calibration Zero - Somatic & Attention Baselines
#system-header("CALIBRATION ZERO: SOMATIC & ATTENTION BASELINE", "PRE-CYCLE 1/4")
#v(6pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#dddddd"), inset: 8pt)[
  #set text(size: 10pt)
  #raw("> CURRENT HABIT STAGNATION (What rigid routines or dependencies hold you?):")
  #v(2pt)
  #write-lines(12, height: 11pt)
]
#v(6pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[
  #set text(size: 10pt)
  #raw("> ATTENTION SPAN STABILITY (How long can you focus? Map your screen-time loops):")
  #v(2pt)
  #write-lines(12, height: 11pt)
]
#pagebreak()

// Page 6: Calibration Zero - Material Allies & Infrastructure
#system-header("CALIBRATION ZERO: MATERIAL ALLIES & INFRASTRUCTURE", "PRE-CYCLE 2/4")
#v(6pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[
  #set text(size: 10pt)
  #raw("> MATERIAL ALLY AUDIT (List active tools, phones, software, screens, desks):")
  #v(2pt)
  #write-lines(12, height: 11pt)
]
#v(6pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[
  #set text(size: 10pt)
  #raw("> SOMATIC BASE LEVEL (Sleep health, dietary triggers, physical energy constraints):")
  #v(2pt)
  #write-lines(12, height: 11pt)
]
#pagebreak()

// Page 7: Calibration Zero - Radar Space
#system-header("CALIBRATION ZERO: INITIAL VECTOR SPACE", "PRE-CYCLE 3/4")
#v(8pt)
Plot your initial 8-coordinate vector space signature below. Set coordinates for Attractor (A1), Stabilizer (S1), Flight Line (F1), Resistor (R1), Vitality (V1), Diffraction (D1), Chronos (C1), and Aion (A2) based on your baseline week:
#v(10pt)
#align(center)[
  #rect(width: 200pt, height: 200pt, stroke: 0.5pt + rgb("#111111"), fill: rgb("#ffffff"))[
    #place(center + horizon)[#circle(radius: 90pt, stroke: 0.25pt + rgb("#bbbbbb"))]
    #place(center + horizon)[#circle(radius: 70pt, stroke: 0.25pt + rgb("#cccccc"))]
    #place(center + horizon)[#circle(radius: 50pt, stroke: 0.25pt + rgb("#dddddd"))]
    #place(center + horizon)[#circle(radius: 30pt, stroke: 0.25pt + rgb("#eeeeee"))]
    #place(top + left)[#line(start: (0pt, 95pt), end: (190pt, 95pt), stroke: 0.25pt + rgb("#b1b1b1"))]
    #place(top + left)[#line(start: (95pt, 0pt), end: (95pt, 190pt), stroke: 0.25pt + rgb("#b1b1b1"))]
    #place(top + left)[#line(start: (25pt, 25pt), end: (165pt, 165pt), stroke: 0.25pt + rgb("#d4d4d8"))]
    #place(top + left)[#line(start: (25pt, 165pt), end: (165pt, 25pt), stroke: 0.25pt + rgb("#d4d4d8"))]
    #place(top + center, dy: 4pt)[#set text(size: 6pt); #raw("A1 (ATTRACTOR)")]
    #place(bottom + center, dy: -4pt)[#set text(size: 6pt); #raw("R1 (RESISTOR)")]
    #place(left + horizon, dx: 4pt)[#set text(size: 6pt); #raw("S1 (STABILIZER)")]
    #place(right + horizon, dx: -4pt)[#set text(size: 6pt); #raw("F1 (FLIGHT)")]
    #place(top + left, dx: 14pt, dy: 14pt)[#set text(size: 5.5pt); #raw("V1 (VITALITY)")]
    #place(bottom + right, dx: -14pt, dy: -14pt)[#set text(size: 5.5pt); #raw("D1 (DIFFRACTION)")]
    #place(top + right, dx: -14pt, dy: 14pt)[#set text(size: 5.5pt); #raw("C1 (CHRONOS)")]
    #place(bottom + left, dx: 14pt, dy: -14pt)[#set text(size: 5.5pt); #raw("A2 (AION)")]
  ]
]
#v(8pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#111111"), inset: 8pt, fill: rgb("#f4f4f5"))[
  #grid(
    columns: (1fr, auto),
    [ #raw("RADAR COHERENCE VERIFIED // LEVEL: PRE_FLIGHT") ],
    [ #raw("[ APPROVED ]") ]
  )
]
#pagebreak()

// Page 8: Calibration Zero - Diffractive Baseline & Systemic Goals
#system-header("CALIBRATION ZERO: SYSTEMIC INTENTIONS", "PRE-CYCLE 4/4")
#v(6pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[
  #set text(size: 10pt)
  #raw("> CORE COGNITIVE GOALS (What states do you intend to cultivate?):")
  #v(2pt)
  #write-lines(12, height: 11pt)
]
#v(6pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[
  #set text(size: 10pt)
  #raw("> THE BASELINE CONTRACT (Core negative feedback rules - what will you forbid?):")
  #v(2pt)
  #write-lines(12, height: 11pt)
]
#pagebreak()

#set page(background: rect(width: 100%, height: 100%, fill: dot-grid))
// --- CYCLE 1 SETUP ---
#calibration-left("1", "CYCLE 1: DETERRITORIALIZATION", "Days 1–31 // Phase Focus: Destabilizing Stagnation & Pruning Obsolete Habit Loops", "Map systemic constraints, identify digital/physical dependencies to drop, and prune stagnant goals.", ("left_1": "ATTRACTOR DECAY (Pruning stagnant goals or tasks):", "left_2": "EMERGENT FLIGHT LINES (New, spontaneous interests):", "left_3": "CYCLE 1 CONSTRAINTS (What dependencies will you deterritorialize?):", "right_1": "THERMODYNAMIC TUNING (How will you adjust system temperature?):", "right_2": "PROTOCOL EVOLUTION (Rule changes for Cycle 1):"))
#pagebreak()
#calibration-right("1", ("left_1": "ATTRACTOR DECAY (Pruning stagnant goals or tasks):", "left_2": "EMERGENT FLIGHT LINES (New, spontaneous interests):", "left_3": "CYCLE 1 CONSTRAINTS (What dependencies will you deterritorialize?):", "right_1": "THERMODYNAMIC TUNING (How will you adjust system temperature?):", "right_2": "PROTOCOL EVOLUTION (Rule changes for Cycle 1):"))
#pagebreak()

// --- WEEK 1 FOLD ---
#weekly-left("1")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 1 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 2 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 3 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 4 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 5 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 6 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 7 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 2 FOLD ---
#weekly-left("2")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 8 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 9 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 10 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 11 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 12 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 13 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 14 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 3 FOLD ---
#weekly-left("3")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 15 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 16 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 17 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 18 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 19 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 20 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 21 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 4 FOLD ---
#weekly-left("4")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 22 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 23 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 24 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 25 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 26 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 27 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 28 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- CYCLE 1 TRANSITION PHASE ---
// --- DAY 29 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 30 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 31 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- CYCLE 2 SETUP ---
#calibration-left("2", "CYCLE 2: RE-ORGANIZATION", "Days 32–62 // Phase Focus: Assembling Emergent Workflows & Homeorhesis", "Assemble new workflows, connect habits, and balance discipline with creative deviation.", ("left_1": "ATTRACTOR INTEGRATION (Merging new workflows together):", "left_2": "EMERGENT CONNECTIONS (New rhizomatic connections built):", "left_3": "CYCLE 2 WORKFLOWS (How did you adjust and re-assemble structure?):", "right_1": "THERMODYNAMIC TUNING (Modulating energy vs. focus):", "right_2": "PROTOCOL EVOLUTION (Rule changes for Cycle 2):"))
#pagebreak()
#calibration-right("2", ("left_1": "ATTRACTOR INTEGRATION (Merging new workflows together):", "left_2": "EMERGENT CONNECTIONS (New rhizomatic connections built):", "left_3": "CYCLE 2 WORKFLOWS (How did you adjust and re-assemble structure?):", "right_1": "THERMODYNAMIC TUNING (Modulating energy vs. focus):", "right_2": "PROTOCOL EVOLUTION (Rule changes for Cycle 2):"))
#pagebreak()

// --- WEEK 5 FOLD ---
#weekly-left("5")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 32 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 33 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 34 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 35 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 36 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 37 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 38 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 6 FOLD ---
#weekly-left("6")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 39 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 40 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 41 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 42 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 43 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 44 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 45 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 7 FOLD ---
#weekly-left("7")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 46 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 47 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 48 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 49 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 50 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 51 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 52 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 8 FOLD ---
#weekly-left("8")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 53 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 54 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 55 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 56 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 57 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 58 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 59 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- CYCLE 2 TRANSITION PHASE ---
// --- DAY 60 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 61 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 62 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- CYCLE 3 SETUP ---
#calibration-left("3", "CYCLE 3: STABILIZATION", "Days 63–93 // Phase Focus: Territorializing Stable Routines & Boundary Locking", "Anchor stable habits, set defensive boundaries, and lock down homeostatic loops.", ("left_1": "ATTRACTOR CONSOLIDATION (Locking down core high-value vectors):", "left_2": "HABIT ANCHORS (Physical routine stabilization checkpoints):", "left_3": "CYCLE 3 BOUNDARIES (What strict filters will you lock to prevent drag?):", "right_1": "THERMODYNAMIC TUNING (Preventing late-stage entropy decay):", "right_2": "PROTOCOL EVOLUTION (Rule changes for Cycle 3):"))
#pagebreak()
#calibration-right("3", ("left_1": "ATTRACTOR CONSOLIDATION (Locking down core high-value vectors):", "left_2": "HABIT ANCHORS (Physical routine stabilization checkpoints):", "left_3": "CYCLE 3 BOUNDARIES (What strict filters will you lock to prevent drag?):", "right_1": "THERMODYNAMIC TUNING (Preventing late-stage entropy decay):", "right_2": "PROTOCOL EVOLUTION (Rule changes for Cycle 3):"))
#pagebreak()

// --- WEEK 9 FOLD ---
#weekly-left("9")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 63 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 64 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 65 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 66 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 67 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 68 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 69 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 10 FOLD ---
#weekly-left("10")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 70 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 71 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 72 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 73 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 74 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 75 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 76 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 11 FOLD ---
#weekly-left("11")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 77 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 78 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 79 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 80 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 81 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 82 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 83 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- WEEK 12 FOLD ---
#weekly-left("12")
#pagebreak()
#weekly-right()
#pagebreak()

// --- DAY 84 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 85 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 86 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 87 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 88 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 89 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 90 SPREAD ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- CYCLE 3 TRANSITION PHASE ---
// --- DAY 91 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 92 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

// --- DAY 93 SPREAD (TRANSITION) ---
#daily-left("___")
#pagebreak()
#daily-right()
#pagebreak()

#set page(background: none)
// Page 227: Challenge Trackers Page 1 Left
#system-header("SYSTEM CHALLENGE TRACKERS: FIELD 1/2", "METRIC GRIDS")
#v(8pt)
#challenge-tracker-block("", "30 DAYS")
#v(8pt)
#challenge-tracker-block("", "30 DAYS")
#v(8pt)
#challenge-tracker-block("", "30 DAYS")
#pagebreak()
// Page 228: Challenge Trackers Page 2 Right
#system-header("SYSTEM CHALLENGE TRACKERS: FIELD 2/2", "METRIC GRIDS")
#v(8pt)
#challenge-tracker-block("", "30 DAYS")
#v(8pt)
#challenge-tracker-block("", "30 DAYS")
#v(8pt)
#challenge-tracker-block("", "30 DAYS")
#pagebreak()
// Page 229: Trajectory Mapping Setup
#system-header("ABSOLUTE DIAGNOSTIC: TRAJECTORY MAPPING", "LONG-TERM MAPPING")
#v(8pt)
Use this grid to aggregate your F_net and Vitality ratings across the entire 93-day cycle.
Plot coordinates weekly to visualize your autopoietic stabilization trajectory:
#v(10pt)
#align(center)[
  #rect(width: 200pt, height: 200pt, stroke: 0.5pt + rgb("#aaaaaa"), fill: rgb("#ffffff"))[
    #place(center + horizon)[#circle(radius: 80pt, stroke: 0.25pt + rgb("#cccccc"))]
    #place(center + horizon)[#circle(radius: 60pt, stroke: 0.25pt + rgb("#cccccc"))]
    #place(center + horizon)[#circle(radius: 40pt, stroke: 0.25pt + rgb("#cccccc"))]
    #place(center + horizon)[#circle(radius: 20pt, stroke: 0.25pt + rgb("#cccccc"))]
    #place(top + left)[#line(start: (0pt, 95pt), end: (190pt, 95pt), stroke: 0.25pt + rgb("#a1a1aa"))]
    #place(top + left)[#line(start: (95pt, 0pt), end: (95pt, 190pt), stroke: 0.25pt + rgb("#a1a1aa"))]
    #place(top + center, dy: 6pt)[#set text(size: 6pt); #raw("VITALITY (JOY)")]
    #place(bottom + center, dy: -6pt)[#set text(size: 6pt); #raw("DRAIN (EXHAUST)")]
    #place(left + horizon, dx: 6pt)[#set text(size: 6pt); #raw("SMOOTH (FLOW)")]
    #place(right + horizon, dx: -6pt)[#set text(size: 6pt); #raw("STRIATED (ORDER)")]
  ]
]
#v(12pt)
Weekly Trajectory Coordinates:
#v(4pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 10pt,
  [ #raw("W1:  [   ,   ]") \ #raw("W2:  [   ,   ]") \ #raw("W3:  [   ,   ]") ],
  [ #raw("W4:  [   ,   ]") \ #raw("W5:  [   ,   ]") \ #raw("W6:  [   ,   ]") ],
  [ #raw("W7:  [   ,   ]") \ #raw("W8:  [   ,   ]") \ #raw("W9:  [   ,   ]") ]
)
#pagebreak()
// Page 232: Trajectory Mapping Instructions
#system-header("TRAJECTORY ANALYSIS METRICS", "COORDINATE SPECS")
#v(10pt)
Audit the trajectory path using second-order cybernetic principles:
#v(12pt)
#rect(width: 100%, stroke: 0.25pt + rgb("#bbbbbb"), fill: rgb("#fafafa"), inset: 8pt)[
  #set text(size: 9pt)
  *1. Homeostatic Attractor Basin:* Does your trajectory circle around a single central point? This indicates stable baseline operations and balanced energy.
  #v(8pt)
  *2. Bifurcation Jumps:* Look for sharp jumps between quadrants (e.g., striated to smooth). What environmental trigger caused the state transition?
  #v(8pt)
  *3. Entropy Dissipation:* Are coordinates drifting steadily downwards into low vitality? This shows a systemic leak in energy or workspace alignment.
]
#pagebreak()
// Page 233: 16-Dimensional vector compilation - Left
#system-header("16-DIMENSIONAL META-SYSTEMIC SCORING", "COMPILATION 1/2")
#v(8pt)
Compile cycle-level median scores for each structural state variable:
#v(10pt)
#grid(
  columns: (1fr),
  gutter: 10pt,
  [ #raw("A1 (ATTRACTOR FORCE):      CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],
  [ #raw("S1 (STABILIZATION INDEX):  CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],
  [ #raw("F1 (FLIGHT VELOCITY):     CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],
  [ #raw("R1 (THERMODYNAMIC DRAG):  CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],
  [ #raw("V1 (VITALITY/JOY SCORE):   CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],
  [ #raw("D1 (DIFFRACTION COHERENCE): CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],
  [ #raw("C1 (CHRONOS METRIC):       CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],
  [ #raw("A2 (AION DRIFT FREQUENCY):  CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ]
)
#pagebreak()
// Page 234: 16-Dimensional vector compilation - Right
#system-header("METRIC MATRIX SPECS", "COMPILATION 2/2")
#v(10pt)
Notes and secondary coordinate mappings:
#v(8pt)
#rect(width: 100%, stroke: 0.25pt + rgb("#bbbbbb"), fill: rgb("#fafafa"), inset: 8pt)[
  #set text(size: 9pt)
  Use this space to analyze metric correlations. Compare the chronos metrics and vitality ratings to see if highly striated schedules cause systematic vitality drain, or if high flight lines cause stabilizer degradation.
]
#v(8pt)
#write-lines(6, height: 18pt)
#pagebreak()
// Page 235: Final Autopoietic Diagnostics - Left
#system-header("AUTOPOIETIC STABILIZATION ASSESSMENT", "FINAL SYSTEM DIAG")
#v(8pt)
Identify secondary state variables and environmental homeostatic indicators:
#v(8pt)
#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[
  #set text(size: 8.5pt)
  #raw("> ADAPTATION VELOCITY (System reaction to shocks):")
  #write-lines(3, height: 16pt)
  #v(8pt)
  #raw("> DECAY SLOWDOWN (Duration of new habit adherence):")
  #write-lines(3, height: 16pt)
]
#pagebreak()
// Page 236: Final Autopoietic Diagnostics - Right
#system-header("SYSTEM STABILIZATION RESULT", "FINAL CLASSIFIER")
#v(10pt)
Plot your absolute final system coordinates:
#v(12pt)
#align(center)[
  #rect(width: 100pt, height: 100pt, stroke: 0.5pt + rgb("#aaaaaa"), fill: rgb("#ffffff"))[
    #place(center + horizon)[
      #line(start: (-50pt, 0pt), end: (50pt, 0pt), stroke: 0.25pt + rgb("#d4d4d8"))
      #line(start: (0pt, -50pt), end: (0pt, 50pt), stroke: 0.25pt + rgb("#d4d4d8"))
    ]
    #place(top + center, dy: 2pt)[#set text(size: 5pt); #raw("VITALITY / JOY")]
    #place(bottom + center, dy: -2pt)[#set text(size: 5pt); #raw("DRAIN")]
    #place(left + horizon, dx: 2pt)[#set text(size: 5pt); #raw("SMOOTH")]
    #place(right + horizon, dx: -2pt)[#set text(size: 5pt); #raw("STRIATED")]
  ]
]
#v(14pt)
Authorized final state classification:
#v(4pt)
#grid(
  columns: (1fr, 1.2fr),
  gutter: 10pt,
  [ #raw("[ ] SYSTEM STABILIZED") \ #raw("[ ] MUTATED SYSTEM STATE") ],
  [ #raw("[ ] ENTROPIC COLLAPSE") \ #raw("[ ] HYPER-STRIATED REGIME") ]
)
#set page(background: rect(width: 100%, height: 100%, fill: dot-grid))
// Page 235: Sketchpad 1
#pagebreak()
#sketchpad(1)

// Page 236: Sketchpad 2
#pagebreak()
#sketchpad(2)

// Page 237: Sketchpad 3
#pagebreak()
#sketchpad(3)

// Page 238: Sketchpad 4
#pagebreak()
#sketchpad(4)

// Page 239: Sketchpad 5
#pagebreak()
#sketchpad(5)

// Page 240: System Shutdown
#pagebreak()
#set page(background: none)
#system-shutdown()
