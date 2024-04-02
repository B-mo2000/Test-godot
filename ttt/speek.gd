extends Node2D

var voices = DisplayServer.tts_get_voices_for_language("en")
var voice_id = voices[0]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	#DisplayServer.tts_stop()
	DisplayServer.tts_speak("hi guys!, how are you doing", voice_id,5000)


func _on_so_pressed():
	DisplayServer.tts_speak("today we are going to use godot text to speech", voice_id,5000)


func _on_sub_pressed():
	DisplayServer.tts_stop()
	DisplayServer.tts_speak("sub to me", voice_id,5000)


func _on_go_pressed():
	DisplayServer.tts_stop()
	DisplayServer.tts_speak("so let's fucking go", voice_id,5000)
