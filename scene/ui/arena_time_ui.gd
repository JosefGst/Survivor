extends CanvasLayer


@export var arena_time_manager: Node
@onready var label = $%Label

func _process(delta):
	if arena_time_manager == null:
		print("can't access arena_time_manager from arena_time_ui")
		return
	var time_elapsed = arena_time_manager.get_time_elapsed()
	label.text = format_seconds_to_string(time_elapsed)

# More readable code
func format_seconds_to_string(value: int) -> String:
	var seconds = value%60
	var minutes = (value/60)%60
 
	return "%02d:%02d" % [minutes, seconds]
