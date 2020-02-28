extends KinematicBody2D

export (int) var speed
export (float) var max_fuel
var fuel = max_fuel

var velocity = Vector2()

func _ready() -> void:
  var debug_pos := Label.new()
  debug_pos.text = str(fuel)
  add_child(debug_pos)
  pass

func get_input():
    velocity = Vector2()
    velocity.y += 1
    if Input.is_action_pressed('right'):
        velocity.x += 1
    if Input.is_action_pressed('left'):
        velocity.x -= 1
    if Input.is_action_pressed('down'):
        velocity.y += 10
    if Input.is_action_pressed('up') and fuel > 25:
        velocity.y -= 2
        fuel -= 20
    velocity = velocity.normalized() * speed

func _physics_process(delta):
    
    if (fuel < max_fuel):
        fuel += 5
    get_input()
    velocity = move_and_slide(velocity)

