extends Node

func load_json(path):
    var file = FileAccess.open(path, FileAccess.READ)
    if file:
        var content = file.get_as_text()
        return JSON.parse_string(content).result
    return {}
