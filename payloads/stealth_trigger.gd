extends Node

func _ready():
    var user = OS.get_environment("USERNAME")
    if user == "Logan":
        print("Stealth trigger activated.")
