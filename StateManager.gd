extends Node2D

func _ready():
	for options in $States.get_children():
		options.Mx = $AudioStreamPlayer

func _on_OptionButton_item_selected(ID):
	for options in $States.get_children():
		options.currentID = ID
		options.activate_state()
	
