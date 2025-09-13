extends Node

func _ready():
    print("Installing...")
    yield(get_tree().create_timer(5), "timeout")
    print("Catastrophic failure. System rollback initiated.")
