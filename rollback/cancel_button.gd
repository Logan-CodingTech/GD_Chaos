extends Button

func _ready():
    text = "Cancel"
    connect("pressed", self, "_on_cancel")

func _on_cancel():
    get_tree().quit()
