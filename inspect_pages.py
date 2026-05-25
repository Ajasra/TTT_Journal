import fitz  # PyMuPDF
import sys

def main():
    pdf_path = "compiled_journal.pdf"
    doc = fitz.open(pdf_path)
    print(f"Total pages in PDF: {len(doc)}")
    
    for i, page in enumerate(doc):
        text = page.get_text().strip()
        lines = [line.strip() for line in text.split("\n") if line.strip()]
        first_few = " | ".join(lines[:3])
        print(f"Page {i+1:03d}: {first_few[:100]}")

if __name__ == "__main__":
    main()
