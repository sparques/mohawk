render:
	kicad-cli pcb render --preset follow_pcb_editor --quality high --floor --perspective --side top --output board_front.png mohawk/mohawk.kicad_pcb
	kicad-cli pcb render --preset follow_pcb_editor --quality high --floor --perspective --side bottom --output board_back.png mohawk/mohawk.kicad_pcb