import json
import os
import sys

def to_typst_dict(py_dict):
    items = []
    for k, v in py_dict.items():
        v_escaped = v.replace('"', '\\"')
        items.append(f'"{k}": "{v_escaped}"')
    return "(" + ", ".join(items) + ")"

def main():
    print("Initializing Cybernetic Journal generation pipeline...")
    
    # Paths
    content_path = "journal_content.json"
    template_path = "journal_template.typ"
    output_typ_path = "compiled_journal.typ"
    output_pdf_path = "compiled_journal.pdf"
    
    # Load content
    if not os.path.exists(content_path):
        print(f"Error: {content_path} not found.")
        sys.exit(1)
        
    with open(content_path, "r", encoding="utf-8") as f:
        content = json.load(f)
        
    metadata = content["system_metadata"]
    guide = content["guide_text"]
    taxonomy = content["taxonomy"]
    calibration = content["calibration_prompts"]
    challenges = content["challenge_trackers"]
    
    # Start building compiled_journal.typ
    lines = []
    lines.append(f'#import "{template_path}": *')
    lines.append('#set page(paper: "a5", margin: (inside: 9.8mm, outside: 7.35mm, top: 8.82mm, bottom: 8.82mm))')
    lines.append('#set text(font: ("EB Garamond", "Liberation Serif", "Georgia", "serif"), size: 11.5pt, fill: rgb("#111111"))')
    lines.append('#set block(spacing: 6pt)')
    lines.append("")
    
    # -------------------------------------------------------------------------
    # PAGE 1: TITLE PAGE (Front Page)
    # -------------------------------------------------------------------------
    lines.append("// Page 1: Title Page")
    lines.append("#align(center + horizon)[")
    lines.append("  #v(-20pt)")
    lines.append('  #block(width: 85%)[')
    lines.append("    #set align(center)")
    lines.append('    #set text(size: 13pt, weight: "bold")')
    lines.append('    #raw("THE TRAJECTORY TRACE")')
    lines.append("    #v(6pt)")
    lines.append('    #set text(size: 8.5pt, weight: "regular")')
    lines.append('    #text(style: "italic")[A 93-Day Grid for Evolutionary Flow and Temporal Split]')
    lines.append("    #v(15pt)")
    lines.append('    #set text(size: 7.5pt)')
    lines.append('    #raw("[ TRACK: CYCLE 13 ]  [ SPAN: 93 DAYS ]  [ FORMAT: A5 PRINT ]")')
    lines.append("    #v(50pt)")
    lines.append("    #align(left)[")
    lines.append("      #set text(size: 8pt)")
    lines.append("      #grid(")
    lines.append("        columns: (auto, 1fr),")
    lines.append("        gutter: 12pt,")
    lines.append('        raw("OPERATOR:"), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ],')
    lines.append('        raw("INIT DATE:"), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ]')
    lines.append("      )")
    lines.append("    ]")
    lines.append("  ]")
    lines.append("]")
    lines.append("#pagebreak()")
    lines.append("")
    
    # -------------------------------------------------------------------------
    # PAGE 2: SYSTEM STATE BASELINE
    # -------------------------------------------------------------------------
    lines.append("// Page 2: System State Baseline")
    lines.append('#system-header("SYSTEM BASELINE", "OWNERSHIP & ENCODING")')
    lines.append("#v(4pt)")
    lines.append('#set text(size: 8pt)')
    lines.append("Establish and document your core cybernetic operator baseline parameters:")
    lines.append("#v(4pt)")
    lines.append("#grid(")
    lines.append("  columns: (1fr),")
    lines.append("  gutter: 10pt,")
    lines.append('  [')
    lines.append('    #set text(weight: "bold", size: 9pt)')
    lines.append('    #raw("PHYSICAL CHASSIS REF (Biological Baseline):") \\')
    lines.append('    #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))')
    lines.append('    "Document biological status: weight, chronic posture baselines, cardiovascular stats, or physical limitations."')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('  ],')
    lines.append('  [')
    lines.append('    #set text(weight: "bold", size: 9pt)')
    lines.append('    #raw("COGNITIVE FREQUENCY (Mental Focus State):") \\')
    lines.append('    #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))')
    lines.append('    "Define baseline intellectual bandwidth, primary study domains, and estimated daily deep-focus limit."')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('  ],')
    lines.append('  [')
    lines.append('    #set text(weight: "bold", size: 9pt)')
    lines.append('    #raw("METABOLIC BASE LEVEL (Energy & Recovery):") \\')
    lines.append('    #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))')
    lines.append('    "Log physiological recovery indicators: sleep hours/quality, resting heart rate, nutritional defaults, or hydration level."')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('  ],')
    lines.append('  [')
    lines.append('    #set text(weight: "bold", size: 9pt)')
    lines.append('    #raw("ATTENTION FILTER ID (Device & Filter Rules):") \\')
    lines.append('    #set text(size: 8.5pt, weight: "regular", style: "italic", fill: rgb("#555555"))')
    lines.append('    "List the active device configurations, screen time thresholds, website blocklists, or notification rules in place."')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('    #v(1pt)')
    lines.append('    #box(width: 100%, stroke: (bottom: 0.25pt + rgb("#bbbbbb")))[#v(9pt)]')
    lines.append('  ]')
    lines.append(")")
    lines.append("#v(6pt)")
    lines.append("Operator Systemic Commitment:")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#aaaaaa"), inset: 8pt, fill: rgb("#fafafa"))[')
    lines.append('  #set text(style: "italic", size: 8.5pt)')
    lines.append('  "I commit to materializing the agential cut. I will use this apparatus daily to register state trajectories, stabilize homeostatic loops, and allow flight lines to emerge constructively without collapsing into administrative anxiety."')
    lines.append("]")
    lines.append("#v(8pt)")
    lines.append('#align(right)[')
    lines.append('  #grid(')
    lines.append('    columns: (1.5fr, 1fr),')
    lines.append('    gutter: 15pt,')
    lines.append('    [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#999999")))[] \\ #set text(size: 7pt); #raw("OPERATOR SIGNATURE") ],')
    lines.append('    [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#999999")))[] \\ #set text(size: 7pt); #raw("DATE INITIALIZED") ]')
    lines.append('  )')
    lines.append(']')
    lines.append("#pagebreak()")
    lines.append("")
    
    # -------------------------------------------------------------------------
    # PAGES 3-4: CYBERNETIC OPERATING GUIDE (exactly 2 pages)
    # -------------------------------------------------------------------------
    lines.append("// Page 3: Operating Guide - Philosophy & Attunement")
    lines.append('#system-header("THE INTIMATE ENTANGLEMENT", "SYSTEM GUIDE 1/2", show-date: false)')
    lines.append("#v(4pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#222222"), inset: 6pt, radius: 2pt, fill: rgb("#fafafa"))[')
    lines.append('  #set text(size: 9pt, weight: "bold")')
    lines.append('  #raw("A MATERIAL COMPANION TO ACCIDENTAL VITALITY") \\')
    lines.append('  #set text(size: 8pt, weight: "bold")')
    lines.append('  #raw("[ SYSTEM STATUS: UNBOUND ]") \\')
    lines.append('  #raw("[ REGIMEN: ENGAGING THE CHASSIS AND INTERFACES ]") \\')
    lines.append('  #v(2pt)')
    lines.append('  #set text(size: 7.5pt, weight: "regular")')
    lines.append('  "This text is not a step-by-step guide or a top-down instruction ledger. It is a physical-conceptual instrument of material-discursive boundary making, functioning as an active site of Material Engagement over seamless automation. It is designed to restructure cognitive pathways, modulate intensive energy fields, and trace the shifts between systemic stability (Homeostasis) and dynamic, evolutionary transformation (Homeorhesis)."')
    lines.append(']')
    lines.append("#v(2pt)")
    
    # Section I
    lines.append('#section-title("I. The Temporal Cleavage: Chronos // Aion")')
    lines.append("#set text(size: 7.5pt)")
    lines.append("- *What It Is:* A deliberate, spatial division of your daily processing fields into two distinct, non-hierarchical temporalities: Chronos (striated, clock-tied administrative tracking) and Aion (the smooth, intensive evental time of non-linear creative play).")
    lines.append("- *Why It Is Here:* Traditional workflow layouts default to the complete colonization of time by Chronos, reducing all human and machine activity to linear task completion metrics. This section acts as an architectural sanctuary for the un-scheduled.")
    lines.append("- *The Targeted Effect:* Chronos is restricted to recording essential logistics, server maintenance routines, and linear calendars. Aion hosts rhizomatic drift research, fluid note-traces, and spontaneous studio experiments.")
    lines.append("- *The Core Protocol:* Chronos must never parasite Aion drift. Setting aside dedicated intervals for open experimentation protects the posthuman ecosystem from administrative anxiety and cognitive decay.")
    
    # Section II
    lines.append('#section-title("II. The Vector Force Field: Diagnosing Parasitism")')
    lines.append("#set text(size: 7.5pt)")
    lines.append("- *What It Is:* A morning cartography field mapping the four active forces currently intersecting your somatic and creative landscape: Attractors (focus gradients), Stabilizers (metabolic maintenance), Flight Lines (rhizomatic escapes), and Resistors (thermodynamic drag).")
    lines.append("- *Why It Is Here:* To escape the trap of traditional performance metrics that turn daily life into a sterile score out of ten.")
    lines.append("- *The Targeted Effect:* This field forces an ongoing diagnosis of relational dominance. Instead of asking how much you \\\"controlled\\\" your day, you track topological friction: Which vector parasitized the other today? Where did attention leak through your defensive boundaries? Did an administrative Resistor capture a sudden, emergent Flight Line?")
    
    # Section III
    lines.append('#section-title("III. The 16-Dimensional Matrix: Mapping Relational Paring")')
    lines.append("#set text(size: 7.5pt)")
    lines.append("Rather than tracking isolated, linear metrics, the taxonomy operates as a series of asymmetric, colliding pairs. You register their presence in the morning, and diagnose their mutual parasitism in the evening:")
    lines.append("- *A1 (Attractor Force) \\/\\/ R1 (Thermodynamic Resistance):* Measures the internal pull of your core creative vectors against the inevitable cognitive drag, server glitches, and somatic fatigue of the day. *Target Effect:* To visualize whether your primary projects are generating energetic momentum or being slowly hollowed out by daily friction.")
    lines.append("- *S1 (Stabilization Index) \\/\\/ F1 (Flight Velocity):* Traces the tension between your grounding homeostatic routines (sleep, posture, nutrition) and the sudden, non-linear detours of unexpected creative breakthroughs. *Target Effect:* To ensure your experimental \\\"lines of flight\\\" expand your practice rather than burning out your physical chassis.")
    lines.append("- *V1 (Vitality / Joy) \\/\\/ D1 (Diffraction Ratio):* Maps your Spinozian capacity for action against the coherence of your daily outputs. High diffraction means your actions generated constructive wave interferences across your work, while a low ratio indicates fragmented, cancelled-out energy.")
    lines.append("- *C1 (Chronos Metric) \\/\\/ A2 (Aion Drift):* Tracks the ratio between clock-tied, scheduled administrative logistics and smooth, un-dated evental time. *Target Effect:* To expose exactly when structured tasks are attempting to parasite and colonize your open studio play.")
    lines.append("#pagebreak()")
    lines.append("")
    
    # Page 4: Operating Guide - Operations & Diagnostics
    lines.append("// Page 4: Operating Guide - Operations & Diagnostics")
    lines.append('#system-header("THE PROTOCOL OF RECURSIVE FOLDS", "SYSTEM GUIDE 2/2", show-date: false)')
    lines.append("#v(3pt)")
    lines.append('#align(center)[#text(size: 8pt, weight: "bold")[CONDITIONAL CURATION ACROSS A 93-DAY TRAJECTORY]]')
    lines.append("#v(1pt)")
    
    # Section IV
    lines.append('#section-title("IV. The Morning Attunement & The Agential Cut")')
    lines.append("#set text(size: 7.5pt)")
    lines.append("- *What It Is:* A daily threshold checkpoint where you explicitly inventory your \\\"Material Allies\\\" (technical substrates, lenses, screen configurations, server environments) and materialize an \\\"Agential Cut.\\\"")
    lines.append("- *Why It Is Here:* Grounded in new materialist ethics, it acknowledges that you do not think or create in a vacuum. Your technical infrastructure—the heat of a server\'s CPU, the specific focal length of a compact camera, the notification configurations on a screen—actively shapes your agency.")
    lines.append("- *The Targeted Effect:* Declaring the Agential Cut marks out your intentional boundaries for the next twelve hours. It isolates what is included in your field of engagement and what is barred from entry, transforming daily focus from an act of willpower into a clear spatial configuration.")
    
    # Section V
    lines.append('#section-title("V. The Macro-Dynamic Folds (The 93-Day Trajectory)")')
    lines.append("#set text(size: 7.5pt)")
    lines.append("The long-term movement through compiled_journal_2.pdf acts as a macro-exhibition design, treating time as a phenomenological circuit divided into three distinct, month-long evolutionary turnings:")
    lines.append("- *Cycle 1: Deterritorialization (Days 1–31) \\/\\/ Target: Habit Pruning:* Stripping away rigid, sedimented routines, dropping toxic digital dependencies, and mapping the baseline friction of your workspace. It deliberately introduces instability to allow new potentials to leak through.")
    lines.append("- *Cycle 2: Re-Organization (Days 32–62) \\/\\/ Target: Assembling Workflows:* Connecting newly discovered habits and building flexible workflows that balance operational discipline with creative deviation. It tests system resilience under mild, real-world shocks.")
    lines.append("- *Cycle 3: Sustained Homeorhesis (Days 63–93) \\/\\/ Target: Evolutionary Flow:* Calibrating fluid boundaries to support open flight trajectories without collapsing back into rigid, paranoid structure. The goal is a self-organizing, dynamic equilibrium.")
    
    # Section VI
    lines.append('#section-title("VI. The Diffractive Field & The Recursive Seed")')
    lines.append("#set text(size: 7.5pt)")
    lines.append("- *What It Is:* A weekly calibration ritual (\\\"The Fold\\\") paired with a nightly second-order cybernetic feedback loop.")
    lines.append("- *Why It Is Here:* To turn historic journaling into a generative, forward-facing machine that actively re-programs its own next steps.")
    lines.append("- *The Targeted Effect:* Each evening, you chart your position within the State Space graph (Vitality/Joy vs. Drain/Exhaust) and audit your digital entanglements. You extract the entire day\'s interference pattern into a single instruction—the Feedforward Seed. The next morning, this seed is copied directly into your Attunement block, programmatically setting the entry boundaries for the incoming day.")
    lines.append("#v(2pt)")
    lines.append('  #align(center)[#text(size: 7.5pt, style: "italic")[By cooling down the jargon, the actual utility of each block becomes clear, transforming the guide into an immediate entry point rather than a theoretical wall.]]')
    lines.append("#pagebreak()")
    lines.append("")
    
    # -------------------------------------------------------------------------
    # PAGES 5-6: 16-DIMENSIONAL TAXONOMY REFERENCE (2 pages)
    # -------------------------------------------------------------------------
    print("Generating 16-Dimensional Taxonomy Reference spreads...")
    # Page 5: Taxonomy Left Page
    lines.append("// Page 5: 16-Dimensional Taxonomy Reference (1/2)")
    lines.append('#system-header("16-DIMENSIONAL TAXONOMY REFERENCE (1/2)", "SYSTEM REFERENCE")')
    lines.append("#v(6pt)")
    lines.append("Reference matrix for tracking systemic cognitive forces and metrics:")
    lines.append("#v(8pt)")
    
    for dim in taxonomy["dimensions"][:4]:
        dim_id = dim["id"]
        dim_name = dim["name"]
        dim_desc = dim["desc"]
        lines.append(f'#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 6pt, radius: 2pt)[')
        lines.append(f'  #set text(size: 9pt)')
        lines.append(f'  #grid(')
        lines.append(f'    columns: (auto, 1fr),')
        lines.append(f'    gutter: 10pt,')
        lines.append(f'    raw("{dim_id}:"), [ *{dim_name}* ]')
        lines.append(f'  )')
        lines.append(f'  #v(2pt)')
        lines.append(f'  #set text(size: 8.5pt, fill: rgb("#444444"))')
        lines.append(f'  "{dim_desc}"')
        lines.append(f'  #v(4pt)')
        lines.append(f'  #set text(size: 7.5pt, fill: rgb("#888888"))')
        lines.append(f'  #raw("OPERATOR NOTES / PERSONAL ANCHORS:")')
        lines.append(f'  #write-lines(1, height: 11pt)')
        lines.append(f']')
        lines.append(f'#v(2pt)')
    lines.append("#pagebreak()")
    lines.append("")
    
    # Page 6: Taxonomy Right Page
    lines.append("// Page 6: 16-Dimensional Taxonomy Reference (2/2)")
    lines.append('#system-header("16-DIMENSIONAL TAXONOMY REFERENCE (2/2)", "SYSTEM REFERENCE")')
    lines.append("#v(6pt)")
    lines.append("Reference matrix for tracking systemic cognitive forces and metrics:")
    lines.append("#v(8pt)")
    
    for dim in taxonomy["dimensions"][4:]:
        dim_id = dim["id"]
        dim_name = dim["name"]
        dim_desc = dim["desc"]
        lines.append(f'#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 6pt, radius: 2pt)[')
        lines.append(f'  #set text(size: 9pt)')
        lines.append(f'  #grid(')
        lines.append(f'    columns: (auto, 1fr),')
        lines.append(f'    gutter: 10pt,')
        lines.append(f'    raw("{dim_id}:"), [ *{dim_name}* ]')
        lines.append(f'  )')
        lines.append(f'  #v(2pt)')
        lines.append(f'  #set text(size: 8.5pt, fill: rgb("#444444"))')
        lines.append(f'  "{dim_desc}"')
        lines.append(f'  #v(4pt)')
        lines.append(f'  #write-lines(1, height: 11pt)')
        lines.append(f']')
        lines.append(f'#v(2pt)')
    lines.append("#pagebreak()")
    lines.append("")
    
    # -------------------------------------------------------------------------
    # PAGES 7-10: INITIAL STRATIFICATION & SOMATIC ENMESHMENT (4 pages)
    # -------------------------------------------------------------------------
    # Page 7: Somatic & Attention Baselines
    lines.append("// Page 7: Initial Stratification - Somatic & Attention Baselines")
    lines.append('#system-header("INITIAL STRATIFICATION (Somatic & Attentional Baselines)", "SYSTEM ATTUNEMENT // PRE-CYCLE 1/4")')
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#dddddd"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append('  #raw("Sedimented Routines & Capture Fields:") \\')
    lines.append('  #set text(size: 8pt, fill: rgb("#555555"))')
    lines.append('  "Map the rigid dependencies, automatic behaviors, or loop-traps currently capturing your daily agency. What loops perform you before you can perform an agential cut?"')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(10, height: 11pt)')
    lines.append("]")
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append('  #raw("Attention Span Kinematics:") \\')
    lines.append('  #set text(size: 8pt, fill: rgb("#555555"))')
    lines.append('  "Document your current deep-focus boundaries. Map the exact technical or environmental triggers that shatter your attention span and accelerate drift into computational distraction loops."')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(10, height: 11pt)')
    lines.append("]")
    lines.append("#pagebreak()")
    lines.append("")
    
    # Page 8: Material Allies & Infrastructure
    lines.append("// Page 8: Material Allies & Infrastructure")
    lines.append('#system-header("MATERIAL ALLIES & INFRASTRUCTURE", "SYSTEM ATTUNEMENT // PRE-CYCLE 2/4")')
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append('  #raw("Material Ally Audit:") \\')
    lines.append('  #set text(size: 8pt, fill: rgb("#555555"))')
    lines.append('  "Inventory the physical technical substrates of your practice (e.g., VPS configurations, compact camera interfaces, low-light optics, specific desktop layouts). Treat these tools not as passive objects, but as active participants that define what you can perceive and create."')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(10, height: 11pt)')
    lines.append("]")
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append('  #raw("Chassis Metabolism & Recovery Baselines:") \\')
    lines.append('  #set text(size: 8pt, fill: rgb("#555555"))')
    lines.append('  "Log the physiological baseline conditions of your biological hardware: structural posture defaults, sleep duration/quality indicators, and nutritional triggers that fluctuate your daily intensive energy fields."')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(10, height: 11pt)')
    lines.append("]")
    lines.append("#pagebreak()")
    lines.append("")
    
    # Page 9: Radar Space
    lines.append("// Page 9: The Initial Vector Space")
    lines.append('#system-header("THE INITIAL VECTOR SPACE", "SYSTEM ATTUNEMENT // PRE-CYCLE 3/4")')
    lines.append("#v(6pt)")
    lines.append('#set text(size: 8.5pt)')
    lines.append('Plot your initial 8-coordinate vector space signature on the grid below. Set baseline positions for your Attractors (*A1*), Stabilizers (*S1*), Flight Lines (*F1*), and Resistors (*R1*), alongside your initial readings for Vitality (*V1*), Diffraction (*D1*), Chronos (*C1*), and Aion (*A2*) based on your typical baseline week.')
    lines.append("#v(10pt)")
    lines.append("#align(center)[")
    lines.append('  #rect(width: 200pt, height: 200pt, stroke: 0.5pt + rgb("#111111"), fill: rgb("#ffffff"))[')
    lines.append('    #place(center + horizon)[#circle(radius: 90pt, stroke: 0.25pt + rgb("#bbbbbb"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 72pt, stroke: 0.25pt + rgb("#cccccc"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 54pt, stroke: 0.25pt + rgb("#dddddd"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 36pt, stroke: 0.25pt + rgb("#eeeeee"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 18pt, stroke: 0.25pt + rgb("#f4f4f4"))]')
    lines.append('    #place(center + horizon, dx: 3pt, dy: -18pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("2")]')
    lines.append('    #place(center + horizon, dx: 3pt, dy: -36pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("4")]')
    lines.append('    #place(center + horizon, dx: 3pt, dy: -54pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("6")]')
    lines.append('    #place(center + horizon, dx: 3pt, dy: -72pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("8")]')
    lines.append('    #place(center + horizon, dx: 3pt, dy: -90pt)[#set text(size: 5pt, fill: rgb("#888888")); #raw("10")]')
    lines.append('    #place(top + left)[#line(start: (0pt, 95pt), end: (190pt, 95pt), stroke: 0.25pt + rgb("#b1b1b1"))]')
    lines.append('    #place(top + left)[#line(start: (95pt, 0pt), end: (95pt, 190pt), stroke: 0.25pt + rgb("#b1b1b1"))]')
    lines.append('    #place(top + left)[#line(start: (25pt, 25pt), end: (165pt, 165pt), stroke: 0.25pt + rgb("#d4d4d8"))]')
    lines.append('    #place(top + left)[#line(start: (25pt, 165pt), end: (165pt, 25pt), stroke: 0.25pt + rgb("#d4d4d8"))]')
    lines.append('    #place(top + center, dy: 4pt)[#set text(size: 6pt); #raw("A1 (ATTRACTOR)")]')
    lines.append('    #place(bottom + center, dy: -4pt)[#set text(size: 6pt); #raw("R1 (RESISTOR)")]')
    lines.append('    #place(left + horizon, dx: 4pt)[#set text(size: 6pt); #raw("S1 (STABILIZER)")]')
    lines.append('    #place(right + horizon, dx: -4pt)[#set text(size: 6pt); #raw("F1 (FLIGHT)")]')
    lines.append('    #place(top + left, dx: 14pt, dy: 14pt)[#set text(size: 5.5pt); #raw("V1 (VITALITY)")]')
    lines.append('    #place(bottom + right, dx: -14pt, dy: -14pt)[#set text(size: 5.5pt); #raw("D1 (DIFFRACTION)")]')
    lines.append('    #place(top + right, dx: -14pt, dy: 14pt)[#set text(size: 5.5pt); #raw("C1 (CHRONOS)")]')
    lines.append('    #place(bottom + left, dx: 14pt, dy: -14pt)[#set text(size: 5.5pt); #raw("A2 (AION)")]')
    lines.append('  ]')
    lines.append("]")
    lines.append("#v(8pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#111111"), inset: 8pt, fill: rgb("#f4f4f5"))[')
    lines.append('  #grid(')
    lines.append('    columns: (1fr, auto),')
    lines.append('    [ #raw("RADAR COHERENCE VERIFIED // LEVEL: PRE_FLIGHT") ],')
    lines.append('    [ #raw("[ APPROVED ]") ]')
    lines.append('  )')
    lines.append(']')
    lines.append("#pagebreak()")
    lines.append("")
    
    # Page 10: Calibration Zero - Diffractive Baseline & Systemic Goals
    lines.append("// Page 10: Calibration Zero - Diffractive Baseline & Systemic Goals")
    lines.append('#system-header("SYSTEMIC INTENTIONS", "SYSTEM ATTUNEMENT // PRE-CYCLE 4/4")')
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append('  #raw("Emergent Attractor Fields:") \\')
    lines.append('  #set text(size: 8pt, fill: rgb("#555555"))')
    lines.append('  "What qualitative states of focus, creative output, or collaborative mutation do you intend to cultivate across this 93-day trajectory?"')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(10, height: 11pt)')
    lines.append("]")
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append('  #raw("Homeostatic Attractor Damping:") \\')
    lines.append('  #set text(size: 8pt, fill: rgb("#555555"))')
    lines.append('  "Define your defensive systemic thresholds. What exact somatic or computational drag triggers an automated intervention by the system to reduce energy expenditure and prevent entropic collapse?"')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(10, height: 11pt)')
    lines.append("]")
    lines.append("#pagebreak()")
    lines.append("")
    lines.append("#set page(background: rect(width: 100%, height: 100%, fill: dot-grid))")
    
    # -------------------------------------------------------------------------
    # CYCLES 1-3 DYNAMIC LAYOUT ENGINE (Pages 11-226)
    for c_idx, cycle_key in enumerate(["cycle_1", "cycle_2", "cycle_3"], start=1):
        cal_data = calibration[cycle_key]
        cycle_start_day = (c_idx - 1) * 31 + 1
        cycle_end_day = c_idx * 31
        
        print(f"Generating Cycle {c_idx} (Days {cycle_start_day} to {cycle_end_day})...")
        
        # Extract and escape variables for Typst template call
        title = cal_data["title"].replace('"', '\\"')
        subtitle = cal_data["subtitle"].replace('"', '\\"')
        focus = cal_data["focus"].replace('"', '\\"')
        what_is = cal_data["what_is"].replace('"', '\\"')
        why = cal_data["why"].replace('"', '\\"')
        effect = cal_data["effect"].replace('"', '\\"')
        prompts_dict = to_typst_dict(cal_data["prompts"])
        
        # 1. Cycle setup calibration (2 pages)
        lines.append(f"// --- CYCLE {c_idx} SETUP ---")
        lines.append(f'#calibration-left("{c_idx}", "{title}", "{subtitle}", "{focus}", "{what_is}", "{why}", "{effect}", {prompts_dict})')
        lines.append("#pagebreak()")
        lines.append(f'#calibration-right("{c_idx}", {to_typst_dict(cal_data["prompts"])})')
        lines.append("#pagebreak()")
        lines.append("")
        
        # 2. Weeks loops (4 weeks * 16 pages = 64 pages)
        for w_idx in range(1, 5):
            week_num = (c_idx - 1) * 4 + w_idx
            
            # Weekly Fold at the beginning of the week
            lines.append(f"// --- WEEK {week_num} FOLD ---")
            lines.append(f'#weekly-left("{week_num}")')
            lines.append("#pagebreak()")
            lines.append("#weekly-right()")
            lines.append("#pagebreak()")
            lines.append("")
            
            # 7 Daily Spreads
            for d in range(7):
                day_num = cycle_start_day + (w_idx - 1) * 7 + d
                lines.append(f"// --- DAY {day_num} SPREAD ---")
                lines.append('#daily-left("___")')
                lines.append("#pagebreak()")
                lines.append("#daily-right()")
                lines.append("#pagebreak()")
                lines.append("")
                
        # 3. Transition Days (3 days = 6 pages)
        lines.append(f"// --- CYCLE {c_idx} TRANSITION PHASE ---")
        for d in range(3):
            day_num = cycle_start_day + 28 + d
            lines.append(f"// --- DAY {day_num} SPREAD (TRANSITION) ---")
            lines.append('#daily-left("___")')
            lines.append("#pagebreak()")
            lines.append("#daily-right()")
            lines.append("#pagebreak()")
            lines.append("")
    lines.append("#set page(background: none)")
            
    # -------------------------------------------------------------------------
    # PAGES 227-228: THE CHALLENGE TRACKERS
    # -------------------------------------------------------------------------
    print("Generating Challenge Trackers spreads...")
    # Spread 1: Challenges 1-3
    lines.append("// Page 227: Challenge Trackers Page 1 Left")
    lines.append('#system-header("SYSTEM CHALLENGE TRACKERS: FIELD 1/2", "METRIC GRIDS")')
    lines.append("#v(8pt)")
    lines.append(f'#challenge-tracker-block("{challenges[0]["title"]}", "{challenges[0].get("target", "30 DAYS")}")')
    lines.append("#v(8pt)")
    lines.append(f'#challenge-tracker-block("{challenges[1]["title"]}", "{challenges[1].get("target", "30 DAYS")}")')
    lines.append("#v(8pt)")
    lines.append(f'#challenge-tracker-block("{challenges[2]["title"]}", "{challenges[2].get("target", "30 DAYS")}")')
    lines.append("#pagebreak()")
    
    # Spread 2: Challenges 4-6
    lines.append("// Page 228: Challenge Trackers Page 2 Right")
    lines.append('#system-header("SYSTEM CHALLENGE TRACKERS: FIELD 2/2", "METRIC GRIDS")')
    lines.append("#v(8pt)")
    lines.append(f'#challenge-tracker-block("{challenges[3]["title"]}", "{challenges[3].get("target", "30 DAYS")}")')
    lines.append("#v(8pt)")
    lines.append(f'#challenge-tracker-block("{challenges[4]["title"]}", "{challenges[4].get("target", "30 DAYS")}")')
    lines.append("#v(8pt)")
    lines.append(f'#challenge-tracker-block("{challenges[5]["title"]}", "{challenges[5].get("target", "30 DAYS")}")')
    lines.append("#pagebreak()")
    
    # -------------------------------------------------------------------------
    # PAGES 229-230: ABSOLUTE DIAGNOSTIC & TRAJECTORY MAPPING
    # -------------------------------------------------------------------------
    print("Generating Absolute Diagnostics spreads...")
    lines.append("// Page 229: Trajectory Mapping Setup")
    lines.append('#system-header("ABSOLUTE DIAGNOSTIC: TRAJECTORY MAPPING", "LONG-TERM MAPPING")')
    lines.append("#v(8pt)")
    lines.append("Use this grid to aggregate your F_net and Vitality ratings across the entire 93-day cycle.")
    lines.append("Plot coordinates weekly to visualize your autopoietic stabilization trajectory:")
    lines.append("#v(10pt)")
    lines.append("#align(center)[")
    lines.append('  #rect(width: 200pt, height: 200pt, stroke: 0.5pt + rgb("#aaaaaa"), fill: rgb("#ffffff"))[')
    lines.append('    #place(center + horizon)[#circle(radius: 80pt, stroke: 0.25pt + rgb("#cccccc"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 60pt, stroke: 0.25pt + rgb("#cccccc"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 40pt, stroke: 0.25pt + rgb("#cccccc"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 20pt, stroke: 0.25pt + rgb("#cccccc"))]')
    lines.append('    #place(top + left)[#line(start: (0pt, 95pt), end: (190pt, 95pt), stroke: 0.25pt + rgb("#a1a1aa"))]')
    lines.append('    #place(top + left)[#line(start: (95pt, 0pt), end: (95pt, 190pt), stroke: 0.25pt + rgb("#a1a1aa"))]')
    lines.append('    #place(top + center, dy: 6pt)[#set text(size: 6pt); #raw("VITALITY (JOY)")]')
    lines.append('    #place(bottom + center, dy: -6pt)[#set text(size: 6pt); #raw("DRAIN (EXHAUST)")]')
    lines.append('    #place(left + horizon, dx: 6pt)[#set text(size: 6pt); #raw("SMOOTH (FLOW)")]')
    lines.append('    #place(right + horizon, dx: -6pt)[#set text(size: 6pt); #raw("STRIATED (ORDER)")]')
    lines.append('  ]')
    lines.append("]")
    lines.append("#v(12pt)")
    lines.append("Weekly Trajectory Coordinates:")
    lines.append("#v(4pt)")
    lines.append("#grid(")
    lines.append("  columns: (1fr, 1fr, 1fr),")
    lines.append("  gutter: 10pt,")
    lines.append('  [ #raw("W1:  [   ,   ]") \\ #raw("W2:  [   ,   ]") \\ #raw("W3:  [   ,   ]") ],')
    lines.append('  [ #raw("W4:  [   ,   ]") \\ #raw("W5:  [   ,   ]") \\ #raw("W6:  [   ,   ]") ],')
    lines.append('  [ #raw("W7:  [   ,   ]") \\ #raw("W8:  [   ,   ]") \\ #raw("W9:  [   ,   ]") ]')
    lines.append(")")
    lines.append("#pagebreak()")
    
    lines.append("// Page 230: Trajectory Mapping Instructions")
    lines.append('#system-header("TRAJECTORY ANALYSIS METRICS", "COORDINATE SPECS")')
    lines.append("#v(10pt)")
    lines.append("Audit the trajectory path using second-order cybernetic principles:")
    lines.append("#v(12pt)")
    lines.append('#rect(width: 100%, stroke: 0.25pt + rgb("#bbbbbb"), fill: rgb("#fafafa"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append('  *1. Homeostatic Attractor Basin:* Does your trajectory circle around a single central point? This indicates stable baseline operations and balanced energy.')
    lines.append('  #v(8pt)')
    lines.append('  *2. Bifurcation Jumps:* Look for sharp jumps between quadrants (e.g., striated to smooth). What environmental trigger caused the state transition?')
    lines.append('  #v(8pt)')
    lines.append('  *3. Entropy Dissipation:* Are coordinates drifting steadily downwards into low vitality? This shows a systemic leak in energy or workspace alignment.')
    lines.append("]")
    lines.append("#pagebreak()")
    
    # Pages 231-232: 16-Dimensional vector compilation
    lines.append("// Page 231: 16-Dimensional vector compilation - Left")
    lines.append('#system-header("16-DIMENSIONAL TOPOLOGICAL RELATIONSHIPS", "COMPILATION 1/2")')
    lines.append("#v(8pt)")
    lines.append("Analyze vector interactions and boundary leakages for each cycle (Map parasitism, e.g., A1 < R1, or list leaks):")
    lines.append("#v(10pt)")
    lines.append("#grid(")
    lines.append("  columns: (1fr),")
    lines.append("  gutter: 10pt,")
    lines.append('  [ #raw("A1 vs R1 (Attractor / Resistance Leakage):  C1 [      ]  C2 [      ]  C3 [      ]") ],')
    lines.append('  [ #raw("S1 vs F1 (Stabilizer / Flight Line Drift):  C1 [      ]  C2 [      ]  C3 [      ]") ],')
    lines.append('  [ #raw("V1 vs D1 (Vitality / Diffraction Wave):   C1 [      ]  C2 [      ]  C3 [      ]") ],')
    lines.append('  [ #raw("C1 vs A2 (Chronos / Aion Parasitism):     C1 [      ]  C2 [      ]  C3 [      ]") ]')
    lines.append(")")
    lines.append("#v(10pt)")
    lines.append("Register key topological mutations where smooth space was captured or deterritorialized:")
    lines.append("#v(4pt)")
    lines.append('#rect(width: 100%, stroke: 0.25pt + rgb("#bbbbbb"), fill: rgb("#fafafa"), inset: 6pt)[')
    lines.append('  #write-lines(4, height: 11pt)')
    lines.append(']')
    lines.append("#pagebreak()")
    
    lines.append("// Page 232: 16-Dimensional vector compilation - Right")
    lines.append('#system-header("METRIC MATRIX SPECS", "COMPILATION 2/2")')
    lines.append("#v(10pt)")
    lines.append("Notes and secondary coordinate mappings:")
    lines.append("#v(8pt)")
    lines.append('#rect(width: 100%, stroke: 0.25pt + rgb("#bbbbbb"), fill: rgb("#fafafa"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append("  Use this space to analyze metric correlations. Compare the chronos metrics and vitality ratings to see if highly striated schedules cause systematic vitality drain, or if high flight lines cause stabilizer degradation.")
    lines.append("]")
    lines.append("#v(8pt)")
    lines.append("#write-lines(6, height: 11pt)")
    lines.append("#pagebreak()")
    
    # Pages 233-234: Final autopoietic feedback diagnostics
    lines.append("// Page 233: Final Autopoietic Diagnostics - Left")
    lines.append('#system-header("AUTOPOIETIC FLOW & HOMEORHESIS ASSESSMENT", "FINAL SYSTEM DIAG")')
    lines.append("#v(8pt)")
    lines.append("Identify secondary state variables and environmental homeorhesis indicators:")
    lines.append("#v(8pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 8.5pt)')
    lines.append('  #raw("> ADAPTATION VELOCITY (System reaction to shocks):")')
    lines.append('  #write-lines(3, height: 11pt)')
    lines.append('  #v(8pt)')
    lines.append('  #raw("> DECAY SLOWDOWN (Duration of new habit adherence):")')
    lines.append('  #write-lines(3, height: 11pt)')
    lines.append("]")
    lines.append("#pagebreak()")
    
    lines.append("// Page 234: Final Autopoietic Diagnostics - Right")
    lines.append('#system-header("SYSTEM HOMEORHESIS RESULT", "FINAL CLASSIFIER")')
    lines.append("#v(10pt)")
    lines.append("Plot your absolute final system coordinates:")
    lines.append("#v(12pt)")
    lines.append("#align(center)[")
    lines.append('  #rect(width: 100pt, height: 100pt, stroke: 0.5pt + rgb("#aaaaaa"), fill: rgb("#ffffff"))[')
    lines.append('    #place(center + horizon)[')
    lines.append('      #line(start: (-50pt, 0pt), end: (50pt, 0pt), stroke: 0.25pt + rgb("#d4d4d8"))')
    lines.append('      #line(start: (0pt, -50pt), end: (0pt, 50pt), stroke: 0.25pt + rgb("#d4d4d8"))')
    lines.append('    ]')
    lines.append('    #place(top + center, dy: 2pt)[#set text(size: 5pt); #raw("VITALITY / JOY")]')
    lines.append('    #place(bottom + center, dy: -2pt)[#set text(size: 5pt); #raw("DRAIN")]')
    lines.append('    #place(left + horizon, dx: 2pt)[#set text(size: 5pt); #raw("SMOOTH")]')
    lines.append('    #place(right + horizon, dx: -2pt)[#set text(size: 5pt); #raw("STRIATED")]')
    lines.append('  ]')
    lines.append("]")
    lines.append("#v(14pt)")
    lines.append("Authorized final state classification:")
    lines.append("#v(4pt)")
    lines.append("#grid(")
    lines.append("  columns: (1fr, 1.2fr),")
    lines.append("  gutter: 10pt,")
    lines.append('  [ #raw("[ ] SUSTAINED HOMEORHESIS") \\ #raw("[ ] MUTATED SYSTEM STATE") ],')
    lines.append('  [ #raw("[ ] ENTROPIC COLLAPSE") \\ #raw("[ ] HYPER-STRIATED REGIME") ]')
    lines.append(")")
    # -------------------------------------------------------------------------
    # PAGES 235-239: OPEN SKETCHPADS & DRIFT LOGS (5 pages)
    # -------------------------------------------------------------------------
    print("Generating Open Sketchpad and Notes pages...")
    lines.append("#set page(background: rect(width: 100%, height: 100%, fill: dot-grid))")
    for idx in range(1, 6):
        lines.append(f"// Page {234 + idx}: Sketchpad {idx}")
        lines.append("#pagebreak()")
        lines.append(f"#sketchpad({idx})")
        lines.append("")
        
    # -------------------------------------------------------------------------
    # PAGE 240: SYSTEM SHUTDOWN / END PAGE
    # -------------------------------------------------------------------------
    print("Generating End Page (Page 240)...")
    lines.append("// Page 240: System Shutdown")
    lines.append("#pagebreak()")
    lines.append("#set page(background: none)")
    lines.append("#system-shutdown()")
    lines.append("")
    
    # Save the output compiled_journal.typ
    with open(output_typ_path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))
        
    print(f"Generated unified Typst file: {output_typ_path}")
    
    # Compile using typst python bindings
    try:
        import typst
        print("Compiling Typst file using embedded typst compiler backend...")
        typst.compile(output_typ_path, output=output_pdf_path)
        print(f"Compilation successful! Output written to {output_pdf_path}")
    except ImportError:
        print("Error: The python-typst package was not found. Please install via 'pip install typst'.")
        sys.exit(1)
    except Exception as e:
        print(f"Compilation error: {e}")
        sys.exit(1)

    # Preview Rendering
    try:
        import fitz  # PyMuPDF
        print("Generating page spreads previews...")
        doc = fitz.open(output_pdf_path)
        
        # Verify page count
        total_pages = doc.page_count
        print(f"Document total page count check: {total_pages} pages.")
        if total_pages == 240:
            print("Perfect Page Count Verification: EXACTLY 240 PAGES. Signature constraint met.")
        else:
            print(f"Warning: Page count is {total_pages}, expected exactly 240 pages.")
            
        # Ensure target previews folder exists
        os.makedirs("previews", exist_ok=True)
        
        # Page indexes to preview:
        # Page 1: Title
        # Page 2: System State Baseline
        # Page 3: Manual Guide (Philosophy & Attunement)
        # Page 5: 16-Dimensional Taxonomy Reference
        # Page 7: Calibration Zero Somatic Baseline
        # Page 9: Calibration Zero Initial Vector Space
        # Page 11: Cycle 1 Calibration (Setup)
        # Page 13: Weekly Fold 1 (Diffractive Field)
        # Page 15: Day 1 Left (Morning Attunement)
        # Page 16: Day 1 Right (Operational Console)
        # Page 227: Challenge Trackers Page 1 Left
        # Page 229: Trajectory Mapping Setup
        # Page 231: 16-Dimensional Topological Relationships
        # Page 233: Autopoietic Flow & Homeorhesis Assessment
        # Page 235: Open Sketchpad 1
        # Page 240: System Shutdown
        preview_indices = [0, 1, 2, 3, 4, 6, 8, 10, 12, 14, 15, 226, 228, 230, 232, 234, 239]
        for p_idx in preview_indices:
            if p_idx < total_pages:
                page = doc.load_page(p_idx)
                pix = page.get_pixmap(dpi=150)
                preview_file = f"previews/page_{p_idx + 1:03d}.png"
                pix.save(preview_file)
                print(f"Rendered preview: {preview_file}")
                
        print("All previews generated successfully in the 'previews/' directory.")
        
    except ImportError:
        print("Note: PyMuPDF (fitz) is not installed. Skipping preview rendering. Final PDF compiled successfully.")

if __name__ == "__main__":
    main()
