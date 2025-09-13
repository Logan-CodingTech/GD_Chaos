extends Node

var active_payloads = []
var config = {}

func _ready():
  config = load_config()
  if config.has("payloads"):
    for payload_name in config["payloads"]:
      trigger_payload(payload_name)

func trigger_payload(name):
    var path = "res://payloads/%s.gd" % name
    if ResourceLoader.exists(path):
        var payload = load(path).new()
        add_child(payload)
        active_payloads.append(payload)

func load_config():
    var loader = preload("res://core/config_loader.gd").new()
    return loader.load_json("res://config/tasks.json")
