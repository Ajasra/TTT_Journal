import fitz

doc = fitz.open("compiled_journal.pdf")
print("Total pages:", doc.page_count)
for i in range(doc.page_count):
    text = doc[i].get_text()
    first_line = text.split("\n")[0] if text else "(empty)"
    print(f"Page {i+1}: {first_line.strip()}")
