import json
import os
import sys

def to_typst_val(val):
    """
    Recursively serializes a Python value to its Typst literal representation.
    """
    if isinstance(val, str):
        val_esc = val.replace('\\', '\\\\').replace('"', '\\"')
        return f'"{val_esc}"'
    elif isinstance(val, (int, float)):
        return str(val)
    elif isinstance(val, bool):
        return "true" if val else "false"
    elif isinstance(val, list):
        items = [to_typst_val(item) for item in val]
        return "(" + ", ".join(items) + ")"
    elif isinstance(val, dict):
        items = []
        for k, v in val.items():
            items.append(f'{k}: {to_typst_val(v)}')
        return "(" + ", ".join(items) + ")"
    elif val is None:
        return "none"
    return str(val)

def main():
    print("Initializing Procedural Cybernetic Journal generation pipeline...")
    
    # Paths
    content_path = "journal_content.json"
    config_path = "config.json"
    output_typ_path = "renders/compiled_journal.typ"
    output_pdf_path = "renders/compiled_journal.pdf"
    
    # Load content
    if not os.path.exists(content_path):
        print(f"Error: {content_path} not found.")
        sys.exit(1)
    if not os.path.exists(config_path):
        print(f"Error: {config_path} not found.")
        sys.exit(1)
        
    with open(content_path, "r", encoding="utf-8") as f:
        content = json.load(f)
    with open(config_path, "r", encoding="utf-8") as f:
        config = json.load(f)
        
    metadata = content["system_metadata"]
    guide = content["guide_text"]
    taxonomy = content["taxonomy"]
    calibration = content["calibration_prompts"]
    challenges = content["challenge_trackers"]
    
    # Extract config variables
    total_days = config.get("total_days", 84)
    target_pages = config.get("target_pages", 230)
    paper_size = config.get("paper_size", "a5")
    margin_inside = config.get("margin_inside", "9.8mm")
    margin_outside = config.get("margin_outside", "7.35mm")
    margin_top = config.get("margin_top", "8.82mm")
    margin_bottom = config.get("margin_bottom", "8.82mm")
    font_body = to_typst_val(config.get("font_body", ["EB Garamond", "Liberation Serif", "Georgia", "serif"]))
    font_size = config.get("font_size", "11.5pt")
    fill_color = config.get("fill_color", "#111111")
    cycle_version = config.get("version", "13")
    
    # Start building compiled_journal.typ
    lines = []
    
    # Import all modular templates
    lines.append('// Procedurally generated Cybernetic Journal')
    templates = [
        "common.typ", "title.typ", "blank.typ", "baseline.typ",
        "guide_philosophy.typ", "guide_temporal.typ", "guide_taxonomy.typ", "guide_loops.typ",
        "taxonomy_left.typ", "taxonomy_right.typ",
        "stratification_baselines.typ", "stratification_allies.typ", "stratification_vector.typ", "stratification_intentions.typ",
        "calibration_left.typ", "calibration_right.typ",
        "weekly_left.typ", "weekly_right.typ",
        "daily_left.typ", "daily_right.typ",
        "challenges_left.typ", "challenges_right.typ",
        "trajectory_mapping.typ", "trajectory_analysis.typ",
        "topological_left.typ", "topological_right.typ",
        "diagnostics_left.typ", "diagnostics_right.typ",
        "sketchpad.typ", "shutdown.typ"
    ]
    for t in templates:
        lines.append(f'#import "../templates/{t}": *')
    lines.append("")
    
    # Global page rules based on config.json
    lines.append(f'#set page(paper: "{paper_size}", margin: (inside: {margin_inside}, outside: {margin_outside}, top: {margin_top}, bottom: {margin_bottom}), footer: context {{')
    lines.append('  let pg = counter(page).get().first()')
    lines.append('  let num = pg - 1')
    lines.append(f'  if pg > 2 and pg < {target_pages} - 1 {{')
    lines.append('    set text(size: 7pt, fill: rgb("#999999"))')
    lines.append('    if calc.odd(pg) {')
    lines.append('      align(right)[#str(num)]')
    lines.append('    } else {')
    lines.append('      align(left)[#str(num)]')
    lines.append('    }')
    lines.append('  }')
    lines.append('})')
    lines.append(f'#set text(font: {font_body}, size: {font_size}, fill: rgb("{fill_color}"))')
    lines.append('#set block(spacing: 6pt)')
    lines.append("")
    
    # 1. Front-matter pages
    lines.append("// Page 1: Title Page")
    lines.append(f'#title-page("{cycle_version}", "{total_days}")')
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 2: Blank Page")
    lines.append("#blank-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 3: System State Baseline")
    lines.append("#set text(size: 8pt)")
    lines.append("#baseline-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 4: Guide - Philosophy")
    lines.append("#set text(size: 9.5pt)")
    lines.append("#guide-philosophy-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 5: Guide - Temporal")
    lines.append("#guide-temporal-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 6: Guide - Taxonomy")
    lines.append("#guide-taxonomy-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 7: Guide - Loops")
    lines.append(f'#guide-loops-page("{total_days}")')
    lines.append("#pagebreak()")
    lines.append("")
    
    # Taxonomy Dimensions serialization
    dim_left = to_typst_val(taxonomy["dimensions"][:4])
    dim_right = to_typst_val(taxonomy["dimensions"][4:8])
    
    lines.append("// Page 8: Taxonomy Reference Left")
    lines.append(f'#taxonomy-page-left({dim_left})')
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 9: Taxonomy Reference Right")
    lines.append(f'#taxonomy-page-right({dim_right})')
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 10: Stratification Somatic Baselines")
    lines.append("#stratification-baselines-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 11: Stratification Allies")
    lines.append("#stratification-allies-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 12: Stratification Vector")
    lines.append("#set text(size: 8.5pt)")
    lines.append("#stratification-vector-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Page 13: Stratification Intentions")
    lines.append("#stratification-intentions-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    # 2. Cycles & Weeks Layout Engine
    lines.append("#set page(background: rect(width: 100%, height: 100%, fill: dot-grid))")
    
    days_per_cycle = config.get("days_per_cycle", 28)
    days_per_week = config.get("days_per_week", 7)
    num_cycles = total_days // days_per_cycle
    
    for c_idx in range(1, num_cycles + 1):
        cycle_key = f"cycle_{c_idx}"
        cal_data = calibration[cycle_key]
        cycle_start_day = (c_idx - 1) * days_per_cycle + 1
        
        print(f"Generating Cycle {c_idx} (Days {cycle_start_day} to {cycle_start_day + days_per_cycle - 1})...")
        
        # Serialize fields for Typst
        title_val = to_typst_val(cal_data["title"])
        subtitle_val = to_typst_val(cal_data["subtitle"])
        focus_val = to_typst_val(cal_data["focus"])
        what_is_val = to_typst_val(cal_data["what_is"])
        why_val = to_typst_val(cal_data["why"])
        effect_val = to_typst_val(cal_data["effect"])
        prompts_val = to_typst_val(cal_data["prompts"])
        
        # Calibration (2 pages)
        lines.append(f"// --- CYCLE {c_idx} SETUP ---")
        lines.append(f'#calibration-left-page("{c_idx}", {title_val}, {subtitle_val}, {focus_val}, {what_is_val}, {why_val}, {effect_val}, {prompts_val})')
        lines.append("#pagebreak()")
        lines.append(f'#calibration-right-page("{c_idx}", {prompts_val})')
        lines.append("#pagebreak()")
        lines.append("")
        
        # Weeks in Cycle
        weeks_per_cycle = days_per_cycle // days_per_week
        for w_idx in range(1, weeks_per_cycle + 1):
            week_num = (c_idx - 1) * weeks_per_cycle + w_idx
            
            # Weekly Fold (2 pages)
            lines.append(f"// --- WEEK {week_num} FOLD ---")
            lines.append(f'#weekly-left-page("{week_num}")')
            lines.append("#pagebreak()")
            lines.append("#weekly-right-page()")
            lines.append("#pagebreak()")
            lines.append("")
            
            # Daily spreads (7 * 2 = 14 pages)
            for d in range(days_per_week):
                day_num = cycle_start_day + (w_idx - 1) * days_per_week + d
                lines.append(f"// --- DAY {day_num} SPREAD ---")
                lines.append(f'#daily-left-page("___")')
                lines.append("#pagebreak()")
                lines.append("#daily-right-page()")
                lines.append("#pagebreak()")
                lines.append("")
                
    lines.append("#set page(background: none)")
    
    # 3. Challenges Trackers
    print("Generating Challenge Trackers spreads...")
    ch1_title, ch1_target = to_typst_val(challenges[0]["title"]), to_typst_val(challenges[0].get("target", "28 DAYS"))
    ch2_title, ch2_target = to_typst_val(challenges[1]["title"]), to_typst_val(challenges[1].get("target", "28 DAYS"))
    ch3_title, ch3_target = to_typst_val(challenges[2]["title"]), to_typst_val(challenges[2].get("target", "28 DAYS"))
    ch4_title, ch4_target = to_typst_val(challenges[3]["title"]), to_typst_val(challenges[3].get("target", "28 DAYS"))
    ch5_title, ch5_target = to_typst_val(challenges[4]["title"]), to_typst_val(challenges[4].get("target", "28 DAYS"))
    ch6_title, ch6_target = to_typst_val(challenges[5]["title"]), to_typst_val(challenges[5].get("target", "28 DAYS"))
    
    lines.append("// Challenge Trackers Page 1 Left")
    lines.append(f'#challenges-left-page({ch1_title}, {ch1_target}, {ch2_title}, {ch2_target}, {ch3_title}, {ch3_target})')
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Challenge Trackers Page 2 Right")
    lines.append(f'#challenges-right-page({ch4_title}, {ch4_target}, {ch5_title}, {ch5_target}, {ch6_title}, {ch6_target})')
    lines.append("#pagebreak()")
    lines.append("")
    
    # 4. Trajectory Mapping
    print("Generating Trajectory and Topological spreads...")
    lines.append("// Trajectory Mapping Setup")
    lines.append("#trajectory-mapping-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Trajectory Analysis Metrics")
    lines.append("#trajectory-analysis-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    # 5. Topological Compilations
    lines.append("// Topological Left Page")
    lines.append("#topological-left-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Topological Right Page")
    lines.append("#topological-right-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    # 6. Autopoietic Diagnostics
    lines.append("// Diagnostics Left Page")
    lines.append("#diagnostics-left-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    lines.append("// Diagnostics Right Page")
    lines.append("#diagnostics-right-page()")
    lines.append("")
    
    # 7. Dynamic Sketchpads (fills remaining budget to meet signature page constraint)
    pages_before_sketchpads = 1 + sum(1 for line in lines if "#pagebreak()" in line)
    
    # We require 2 pages at the very end: 1 blank cover-back page and 1 shutdown page.
    sketchpad_pages_needed = target_pages - pages_before_sketchpads - 2
    
    print(f"Pages generated before sketchpad: {pages_before_sketchpads}")
    print(f"Sketchpad pages needed to reach {target_pages}: {sketchpad_pages_needed}")
    
    lines.append("#set page(background: rect(width: 100%, height: 100%, fill: dot-grid))")
    for idx in range(1, sketchpad_pages_needed + 1):
        lines.append(f"// Sketchpad page {idx}")
        lines.append("#pagebreak()")
        lines.append(f"#sketchpad-page({idx}, {sketchpad_pages_needed})")
        lines.append("")
        
    # Page before shutdown (back of cover blank)
    lines.append("// Page blank before shutdown")
    lines.append("#blank-page()")
    lines.append("#pagebreak()")
    lines.append("")
    
    # Page 230: Shutdown Page
    print("Generating End Page (Page 230)...")
    lines.append("// Page 230: System Shutdown")
    lines.append("#pagebreak()")
    lines.append("#set page(background: none)")
    lines.append("#shutdown-page()")
    lines.append("")
    
    # Save the output compiled_journal.typ
    os.makedirs(os.path.dirname(output_typ_path), exist_ok=True)
    with open(output_typ_path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))
        
    print(f"Generated unified Typst file: {output_typ_path}")
    
    # Compile using typst python bindings
    try:
        import typst
        print("Compiling Typst file using embedded typst compiler backend...")
        typst.compile(output_typ_path, output=output_pdf_path, root=".")
        print(f"Compilation successful! Output written to {output_pdf_path}")
    except ImportError:
        print("Error: The python-typst package was not found. Please install via 'pip install typst'.")
        sys.exit(1)
    except Exception as e:
        print(f"Compilation error: {e}")
        sys.exit(1)
        
    # Preview Rendering & Page Count verification
    try:
        import fitz  # PyMuPDF
        print("Verifying page count and generating previews...")
        doc = fitz.open(output_pdf_path)
        
        total_pages = doc.page_count
        print(f"Document total page count check: {total_pages} pages.")
        if total_pages == target_pages:
            print(f"Perfect Page Count Verification: EXACTLY {target_pages} PAGES. Signature constraint met.")
        else:
            print(f"Warning: Page count is {total_pages}, expected exactly {target_pages} pages.")
            
        # Ensure target previews folder exists
        os.makedirs("previews", exist_ok=True)
        
        print("Generating page spreads previews...")
        for p_idx in range(total_pages):
            page = doc.load_page(p_idx)
            pix = page.get_pixmap(dpi=150)
            preview_file = f"previews/page_{p_idx + 1:03d}.png"
            pix.save(preview_file)
            
        print("All previews generated successfully in the 'previews/' directory.")
        
    except ImportError:
        print("Note: PyMuPDF (fitz) is not installed. Skipping preview rendering. Final PDF compiled successfully.")

if __name__ == "__main__":
    main()
