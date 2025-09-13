extends Node

func trigger_fake_error():
    var popup = Popup.new()
    popup.popup_centered()
    popup.set_title("Critical Error")
    popup.add_child(Label.new().set_text("System failure. Please restart."))
    add_child(popup)

func timed_exit(seconds):
    yield(get_tree().create_timer(seconds), "timeout")
    get_tree().quit()
