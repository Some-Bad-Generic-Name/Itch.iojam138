extends RichTextLabel

var test_string

func _ready():
	var node = get_node("KinematicBody2D")

func _process(delta):
	# print(node.fuel)
	# test += 1
	# test_string = str(test)
	set_bbcode("TEST")
