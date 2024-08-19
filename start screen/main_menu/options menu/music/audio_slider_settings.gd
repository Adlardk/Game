extends Control


@onready var audio_name_lbl = $HBoxContainer/Audio_Name_Lbl as Label 
@onready var audio_num_lbl = $HBoxContainer/Audio_Num_Lbl as Label 
@onready var h_slider = $HBoxContainer/HSlider as HSlider


enum BusNames  {Music}

@export var bus_name : BusNames = BusNames.Music

var bus_index : int = 1

func _ready():
	HSlider.value_changed.connect(on_value_changed)
