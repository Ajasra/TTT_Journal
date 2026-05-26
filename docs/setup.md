# Setup & Generation Guide

This guide details the system prerequisites, installation steps, and commands required to build the journal PDF.

---

## 1. Prerequisites

The pipeline requires **Python 3.10 or higher** and a few third-party libraries. You do not need to install the Typst compiler binary globally because the script uses embedded Python bindings for Typst compilation.

---

## 2. Installation

Install the required packages using your Python package manager. Since the project contains a `uv.lock` file, it is highly recommended to use **`uv`**:

### Using `uv` (Recommended)
Sync the virtual environment dependencies directly:
```bash
uv sync
```
Or, if you want to install them in your active environment:
```bash
uv pip install typst pymupdf
```

### Using standard `pip`
```bash
pip install typst pymupdf
```

*   **`typst`**: Provides the Python bindings for the Typst rendering engine.
*   **`pymupdf`**: Used to verify the generated PDF's page count and render page previews.

---

## 3. Generating the Journal

Run the assembly and compilation script from the project root.

### Using `uv`:
```bash
uv run generate_journal.py
```

### Using standard Python:
```bash
python generate_journal.py
```

### Execution Pipeline Steps:
1.  **Read Settings:** Loads style configs from `config.json` and strings from `journal_content.json`.
2.  **Generate Typst File:** Dynamically loops through the requested spans and creates `renders/compiled_journal.typ`.
3.  **Signature Allocation:** Computes page counts, detects page budget space, and creates exact sketchpad sheets to match `target_pages` (default: 230 pages).
4.  **Typst Compilation:** Invokes the compiler backend to output `renders/compiled_journal.pdf`.
5.  **Page Count Verification:** Asserts that the output PDF page count matches the target.
6.  **Preview Generation:** Renders PNG previews of every page in the `previews/` folder (useful for layout sanity checks).

---

## 4. Troubleshooting

### Access Denied During Compilation
If you receive a compile error like `failed to load file (access denied)`, make sure the `root="."` argument is enabled in the compiler call in `generate_journal.py`. Typst restricts reading files outside the directory of the entrypoint file, and passing the project root allows it to load the `templates/` folder from inside `renders/`.

### Font Loading Warnings
Typst automatically queries your system's installed fonts. The default body font is **EB Garamond**, with **DejaVu Sans Mono** and **Segoe UI Symbol** used for grids and icons. If these are missing on your machine, Typst will fall back to default serif/monospace system fonts. You can configure alternative fallback fonts in `config.json`.
