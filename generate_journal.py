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
    lines.append('  #rect(stroke: 1pt + rgb("#111111"), inset: 15pt, radius: 4pt)[')
    lines.append('    #set text(size: 16pt, weight: "bold")')
    lines.append(f'    #raw("{metadata["title"]}")')
    lines.append("  ]")
    lines.append("  #v(10pt)")
    lines.append(f'  #text(style: "italic", size: 8pt)[{metadata["subtitle"]}]')
    lines.append("  #v(40pt)")
    lines.append("  #align(left)[")
    lines.append("    #block(width: 85%, spacing: 12pt)[")
    lines.append('      #set text(size: 8pt)')
    lines.append('      #show raw: set text(size: 8pt)')
    lines.append("      #grid(")
    lines.append("        columns: (auto, 1fr),")
    lines.append("        gutter: 10pt,")
    lines.append('        raw("SYSTEM INIT:"), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ],')
    lines.append('        raw("OPERATOR:   "), [ #box(width: 100%, stroke: (bottom: 0.5pt + rgb("#888888")))[] ],')
    lines.append(f'        raw("EPOCH SPAN: "), [ #raw("{metadata["tagline"]}") ]')
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
    lines.append('    #set text(weight: "bold", size: 10pt)')
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
    lines.append('    #set text(weight: "bold", size: 10pt)')
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
    lines.append('    #set text(weight: "bold", size: 10pt)')
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
    lines.append('    #set text(weight: "bold", size: 10pt)')
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
    lines.append('#system-header("CYBERNETIC OPERATING MANUAL (1/2)", "SYSTEM GUIDE", show-date: false)')
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#222222"), inset: 8pt, radius: 2pt, fill: rgb("#fafafa"))[')
    lines.append('  #set text(size: 9.5pt, weight: "bold")')
    lines.append(f'  #raw("{guide["manifesto_header"]}") \\')
    lines.append('  #v(2pt)')
    lines.append('  #set text(size: 8pt, weight: "regular")')
    lines.append(f'  {guide["manifesto_body"]}')
    lines.append(']')
    lines.append("#v(2pt)")
    lines.append('#section-title("THE TEMPORAL SPLIT (CHRONOS vs. AION)")')
    lines.append("#set text(size: 8pt)")
    lines.append("- *Chronos (Striated Time):* Clock-tied scheduling. Use the Chronos column on the right console to log linear tasks, calendars, and structural routines.")
    lines.append("- *Aion (Smooth Time):* Event-time creative play. Use the Aion column on the right console to log rhizomatic research, drift concepts, and open-ended study.")
    lines.append("- *Rule:* Never let Chronos override Aion play. Allocate dedicated time segments for Aion drift to avoid mental entropy decay.")
    lines.append('#section-title("▲ THE VECTOR FORCE FIELD")')
    lines.append("#set text(size: 8pt)")
    lines.append("Each morning, define the four vectors acting on your cognitive landscape (rated 0-10):")
    lines.append("- *▲ Attractors:* Primary intellectual/creative draws pulling focus.")
    lines.append("- *■ Stabilizers:* Maintenance routines (diet, sleep hygiene, physical movement).")
    lines.append("- *⤏ Flight Lines:* Rhizomatic escapes, spontaneous experiments, and detours.")
    lines.append("- *▼ Resistors:* Systemic friction, somatic exhaustions, and cognitive blockages.")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 4: Operating Guide - Operations & Diagnostics")
    lines.append('#system-header("CYBERNETIC OPERATING MANUAL (2/2)", "SYSTEM GUIDE", show-date: false)')
    lines.append("#v(6pt)")
    lines.append('#section-title("THE DAILY CONSOLE: CHRONOS & AION")')
    lines.append("#set text(size: 8pt)")
    lines.append("The right page console handles active actualization. Divide your daily cognitive loads between Chronos columns (scheduled work) and Aion columns (fluid drift tasks).")
    lines.append("- *Free Ink-Log / Drift Processor:* Use the middle block as an associative notes area. Capture fleeting web links, citations, or metrics to avoid cognitive fragmentation.")
    lines.append('#section-title("EVENING DIAGNOSTIC & FEEDFORWARD LOOP")')
    lines.append("#set text(size: 8pt)")
    lines.append("Before system shutdown each evening, audit the day\'s coordinates:")
    lines.append("- *1. State Space:* Plot your coordinate mapping Vitality/Joy and Flow/Discipline.")
    lines.append("- *2. Entanglement Audit:* Register screens, platforms, or habit traps that captured your agency.")
    lines.append("- *3. Diffraction Pattern:* Map how actions rippled into constructive or destructive wave interferences.")
    lines.append("#v(4pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#111111"), inset: 8pt, fill: rgb("#fafafa"))[')
    lines.append('  #set text(size: 8pt, weight: "bold")')
    lines.append('  #raw("THE FEEDFORWARD SEED (THE CYBERNETIC LINK):") \\')
    lines.append('  #v(2pt)')
    lines.append('  #set text(size: 8pt, weight: "regular")')
    lines.append('  Formulate a single instruction based on the evening diagnostic. Write it in the seed block. The next morning, copy this seed directly into the attunement block to program the day\'s starting boundaries.')
    lines.append(']')
    lines.append("#pagebreak()")
    lines.append("")
    
    # -------------------------------------------------------------------------
    # PAGES 5-8: CALIBRATION ZERO (Initial Baseline - 4 pages)
    # -------------------------------------------------------------------------
    lines.append("// Page 5: Calibration Zero - Somatic & Attention Baselines")
    lines.append('#system-header("CALIBRATION ZERO: SOMATIC & ATTENTION BASELINE", "PRE-CYCLE 1/4")')
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#dddddd"), inset: 8pt)[')
    lines.append('  #set text(size: 10pt)')
    lines.append('  #raw("> CURRENT HABIT STAGNATION (What rigid routines or dependencies hold you?):")')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(12, height: 11pt)')
    lines.append("]")
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 10pt)')
    lines.append('  #raw("> ATTENTION SPAN STABILITY (How long can you focus? Map your screen-time loops):")')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(12, height: 11pt)')
    lines.append("]")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 6: Calibration Zero - Material Allies & Infrastructure")
    lines.append('#system-header("CALIBRATION ZERO: MATERIAL ALLIES & INFRASTRUCTURE", "PRE-CYCLE 2/4")')
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 10pt)')
    lines.append('  #raw("> MATERIAL ALLY AUDIT (List active tools, phones, software, screens, desks):")')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(12, height: 11pt)')
    lines.append("]")
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 10pt)')
    lines.append('  #raw("> SOMATIC BASE LEVEL (Sleep health, dietary triggers, physical energy constraints):")')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(12, height: 11pt)')
    lines.append("]")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 7: Calibration Zero - Radar Space")
    lines.append('#system-header("CALIBRATION ZERO: INITIAL VECTOR SPACE", "PRE-CYCLE 3/4")')
    lines.append("#v(8pt)")
    lines.append("Plot your initial 8-coordinate vector space signature below. Set coordinates for Attractor (A1), Stabilizer (S1), Flight Line (F1), Resistor (R1), Vitality (V1), Diffraction (D1), Chronos (C1), and Aion (A2) based on your baseline week:")
    lines.append("#v(10pt)")
    lines.append("#align(center)[")
    lines.append('  #rect(width: 200pt, height: 200pt, stroke: 0.5pt + rgb("#111111"), fill: rgb("#ffffff"))[')
    lines.append('    #place(center + horizon)[#circle(radius: 90pt, stroke: 0.25pt + rgb("#bbbbbb"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 70pt, stroke: 0.25pt + rgb("#cccccc"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 50pt, stroke: 0.25pt + rgb("#dddddd"))]')
    lines.append('    #place(center + horizon)[#circle(radius: 30pt, stroke: 0.25pt + rgb("#eeeeee"))]')
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
    
    lines.append("// Page 8: Calibration Zero - Diffractive Baseline & Systemic Goals")
    lines.append('#system-header("CALIBRATION ZERO: SYSTEMIC INTENTIONS", "PRE-CYCLE 4/4")')
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 10pt)')
    lines.append('  #raw("> CORE COGNITIVE GOALS (What states do you intend to cultivate?):")')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(12, height: 11pt)')
    lines.append("]")
    lines.append("#v(6pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 10pt)')
    lines.append('  #raw("> THE BASELINE CONTRACT (Core negative feedback rules - what will you forbid?):")')
    lines.append('  #v(2pt)')
    lines.append('  #write-lines(12, height: 11pt)')
    lines.append("]")
    lines.append("#pagebreak()")
    lines.append("")
    lines.append("#set page(background: rect(width: 100%, height: 100%, fill: dot-grid))")
    
    # -------------------------------------------------------------------------
    # CYCLES 1-3 DYNAMIC LAYOUT ENGINE (Pages 11-226)
    # -------------------------------------------------------------------------
    for c_idx, cycle_key in enumerate(["cycle_1", "cycle_2", "cycle_3"], start=1):
        cal_data = calibration[cycle_key]
        cycle_start_day = (c_idx - 1) * 31 + 1
        cycle_end_day = c_idx * 31
        
        print(f"Generating Cycle {c_idx} (Days {cycle_start_day} to {cycle_end_day})...")
        
        # 1. Cycle setup calibration (2 pages)
        lines.append(f"// --- CYCLE {c_idx} SETUP ---")
        lines.append(f'#calibration-left("{c_idx}", "{cal_data["title"]}", "{cal_data["subtitle"]}", "{cal_data["guideline"]}", {to_typst_dict(cal_data["prompts"])})')
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
    
    # Pages 233-234: 16-Dimensional vector compilation
    lines.append("// Page 233: 16-Dimensional vector compilation - Left")
    lines.append('#system-header("16-DIMENSIONAL META-SYSTEMIC SCORING", "COMPILATION 1/2")')
    lines.append("#v(8pt)")
    lines.append("Compile cycle-level median scores for each structural state variable:")
    lines.append("#v(10pt)")
    lines.append("#grid(")
    lines.append("  columns: (1fr),")
    lines.append("  gutter: 10pt,")
    lines.append('  [ #raw("A1 (ATTRACTOR FORCE):      CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],')
    lines.append('  [ #raw("S1 (STABILIZATION INDEX):  CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],')
    lines.append('  [ #raw("F1 (FLIGHT VELOCITY):     CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],')
    lines.append('  [ #raw("R1 (THERMODYNAMIC DRAG):  CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],')
    lines.append('  [ #raw("V1 (VITALITY/JOY SCORE):   CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],')
    lines.append('  [ #raw("D1 (DIFFRACTION COHERENCE): CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],')
    lines.append('  [ #raw("C1 (CHRONOS METRIC):       CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ],')
    lines.append('  [ #raw("A2 (AION DRIFT FREQUENCY):  CYCLE 1 [  /10]  CYCLE 2 [  /10]  CYCLE 3 [  /10]") ]')
    lines.append(")")
    lines.append("#pagebreak()")
    
    lines.append("// Page 234: 16-Dimensional vector compilation - Right")
    lines.append('#system-header("METRIC MATRIX SPECS", "COMPILATION 2/2")')
    lines.append("#v(10pt)")
    lines.append("Notes and secondary coordinate mappings:")
    lines.append("#v(8pt)")
    lines.append('#rect(width: 100%, stroke: 0.25pt + rgb("#bbbbbb"), fill: rgb("#fafafa"), inset: 8pt)[')
    lines.append('  #set text(size: 9pt)')
    lines.append("  Use this space to analyze metric correlations. Compare the chronos metrics and vitality ratings to see if highly striated schedules cause systematic vitality drain, or if high flight lines cause stabilizer degradation.")
    lines.append("]")
    lines.append("#v(8pt)")
    lines.append("#write-lines(6, height: 18pt)")
    lines.append("#pagebreak()")
    
    # Pages 235-236: Final autopoietic feedback diagnostics
    lines.append("// Page 235: Final Autopoietic Diagnostics - Left")
    lines.append('#system-header("AUTOPOIETIC STABILIZATION ASSESSMENT", "FINAL SYSTEM DIAG")')
    lines.append("#v(8pt)")
    lines.append("Identify secondary state variables and environmental homeostatic indicators:")
    lines.append("#v(8pt)")
    lines.append('#rect(width: 100%, stroke: 0.5pt + rgb("#cccccc"), inset: 8pt)[')
    lines.append('  #set text(size: 8.5pt)')
    lines.append('  #raw("> ADAPTATION VELOCITY (System reaction to shocks):")')
    lines.append('  #write-lines(3, height: 16pt)')
    lines.append('  #v(8pt)')
    lines.append('  #raw("> DECAY SLOWDOWN (Duration of new habit adherence):")')
    lines.append('  #write-lines(3, height: 16pt)')
    lines.append("]")
    lines.append("#pagebreak()")
    
    lines.append("// Page 236: Final Autopoietic Diagnostics - Right")
    lines.append('#system-header("SYSTEM STABILIZATION RESULT", "FINAL CLASSIFIER")')
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
    lines.append('  [ #raw("[ ] SYSTEM STABILIZED") \\ #raw("[ ] MUTATED SYSTEM STATE") ],')
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
        # Page 3: Manual Guide (Manifesto)
        # Page 9: Cycle 1 Calibration
        # Page 11: Weekly Fold 1
        # Page 13: Day 1 Left (Morning)
        # Page 14: Day 1 Right (Operational Console)
        # Page 225: Challenge Trackers Page 1
        # Page 229: Trajectory Mapping Setup
        # Page 240: System Shutdown
        preview_indices = [0, 1, 2, 4, 5, 6, 6, 7, 8, 9, 10, 11, 12, 13, 14, 220, 221, 222, 223, 224, 225, 226, 227]
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
