extends Control

func _ready():
    var label = Label.new()
    label.text = "Minecraft has crashed. We're sorry."
    label.set_position(Vector2(100, 100))
    add_child(label)
