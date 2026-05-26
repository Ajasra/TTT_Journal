# Customization & Editing Guide

This guide explains how to modify the journal's configuration, edit prompt text, and customize page layouts.

---

## 1. Customizing Global Styles (`config.json`)

The global style parameters are defined in `config.json`. These parameters are read by the generator script and applied as a document-wide styling block.

```json
{
  "total_days": 84,
  "target_pages": 230,
  "paper_size": "a5",
  "margin_inside": "9.8mm",
  "margin_outside": "7.35mm",
  "margin_top": "8.82mm",
  "margin_bottom": "8.82mm",
  "font_body": ["EB Garamond", "Liberation Serif", "Georgia", "serif"],
  "font_size": "11.5pt",
  "fill_color": "#111111",
  "version": "13"
}
```

*   **`total_days`**: The number of tracking days (e.g. 84 days). Changing this scales the daily spreads loop accordingly.
*   **`target_pages`**: The strict signature layout count (e.g. 230 pages). The generator will automatically allocate enough blank Sketchpad pages at the end to match this budget.
*   **`paper_size`**: Standard paper sizing (usually `a5`).
*   **Margins**: Inside, outside, top, and bottom parameters. Note that inside margins are larger to accommodate binding.
*   **`font_body` / `font_size`**: Main typography settings for narrative paragraphs.

---

## 2. Editing Text and Prompts (`journal_content.json`)

To modify the text content without altering layouts, edit `journal_content.json`.

*   **`guide_text`**: Philosophical introductory text and operating guide strings.
*   **`taxonomy`**: The dimensions and definitions used in the 8-Dimensional Reference charts.
*   **`calibration_prompts`**: Focus, instructions, and prompt questions printed on each Cycle Setup page.
*   **`challenge_trackers`**: Titles and setup instructions for the metabolic and focus challenges.

---

## 3. Editing Design & Page Templates (`templates/`)

Each page design is isolated inside a Typst template file within the `templates/` directory.

### Typst Template Directory
*   `templates/common.typ`: Shared utilities (e.g., custom grid lines `write-lines`, page background `dot-grid`, section headers `system-header`, and diagnostic chart boxes).
*   `templates/title.typ`: The title page formatting.
*   `templates/daily_left.typ` & `templates/daily_right.typ`: Morning Configuration and Operational Console grids.
*   `templates/weekly_left.typ` & `templates/weekly_right.typ`: Weekly checkpoints.

### Important Layout Rules

1.  **Scoped Font Sizing:**
    To match the layout design exactly, the global font size undergoes specific transitions at page boundaries:
    *   **Baseline page:** Set to `8pt`.
    *   **Guide pages:** Set to `9.5pt`.
    *   **Vector Space & all subsequent loops:** Set to `8.5pt`.
    
    If we add a new template that requires custom local sizing, we define it inside the function scope (`#set text(size: Xpt)`) to avoid polluting subsequent page layouts.

2.  **Dotted Line Spacing:**
    Dotted input lines are generated using the `write-lines(count, height)` helper function. If we modify a prompt's length and it pushes the lines onto a new page, we decrease the line `count` or reduce the `height` parameter (e.g., from `10pt` to `9.5pt`) in the respective template file to prevent overflow.

3.  **Monospaced Styling:**
    Typst raw blocks (`#raw("...")`) automatically inherit the document's monospace font fallbacks. To keep styling clean and consistent across tables and labels, we avoid assigning static absolute font sizes to labels; instead, we let them scale proportionally with the surrounding scope size.

