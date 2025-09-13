extends Node

func _ready():
    for i in range(5):
        var popup = Popup.new()
        popup.popup_centered()
        popup.set_title("Error %d" % i)
        popup.add_child(Label.new().set_text("Unexpected exception occurred."))
        add_child(popup)
