extends Node2D

var voices = DisplayServer.tts_get_voices_for_language("en")
var voice_id = voices[0]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	DisplayServer.tts_stop()
	DisplayServer.tts_speak("subscribe!", voice_id , 5000)
