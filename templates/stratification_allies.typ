#import "common.typ": *
#let stratification-allies-page() = {
  system-header("MATERIAL ALLIES & INFRASTRUCTURE", "SYSTEM ATTUNEMENT // PRE-CYCLE 2/4")
  v(6pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#eeeeee"), inset: 8pt)[
    #set text(size: 9pt)
    #raw("Material Ally Audit:") \
    #set text(size: 8pt, fill: rgb("#555555"))
    "Inventory the physical technical substrates of your practice (e.g., VPS configurations, compact camera interfaces, low-light optics, specific desktop layouts). Treat these tools not as passive objects, but as active participants that define what you can perceive and create."
    #v(2pt)
    #write-lines(12, height: 10pt)
  ]
  v(6pt)
  rect(width: 100%, stroke: 0.5pt + rgb("#eeeeee"), inset: 8pt)[
    #set text(size: 9pt)
    #raw("Chassis Metabolism & Recovery Baselines:") \
    #set text(size: 8pt, fill: rgb("#555555"))
    "Log the physiological baseline conditions of your biological hardware: structural posture defaults, sleep duration/quality indicators, and nutritional triggers that fluctuate your daily intensive energy fields."
    #v(2pt)
    #write-lines(12, height: 10pt)
  ]
}
