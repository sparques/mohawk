render:
	kicad-cli pcb render --preset follow_pcb_editor --quality high --floor --perspective --side top --output board_front.png mohawk/mohawk.kicad_pcb
	kicad-cli pcb render --preset follow_pcb_editor --quality high --floor --perspective --side bottom --output board_back.png mohawk/mohawk.kicad_pcb

drc:
	kicad-cli pcb drc --schematic-parity -o /tmp/mohawk-drc.rpt mohawk/mohawk.kicad_pcb

bom:
	kicad-cli sch export bom -o mohawk-bom.csv mohawk/mohawk.kicad_sch
