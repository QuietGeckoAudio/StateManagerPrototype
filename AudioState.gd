extends Control

export var State = ''
export (int) var personalID 
var Mx
var currentID
var LPF
var HPF

func _ready():
	
	$Label.text = State
	LPF = AudioServer.get_bus_effect(0,0)
	HPF = AudioServer.get_bus_effect(0,1)


func activate_state():
	if personalID == currentID:
		Mx.set_pitch_scale($Pitch.value)
		Mx.set_volume_db($Volume.value)
		$ColorRect.color = Color(1, 0, 0, 1)
		LPF.set_cutoff($LPF.value)
		HPF.set_cutoff($HPF.value)
	else:
		$ColorRect.color = Color(0, 0, 0, 0)
