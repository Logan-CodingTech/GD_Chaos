extends Node

func is_vm_environment():
    return OS.has_feature("virtualized") or check_split_disk()

func check_split_disk():
    # Placeholder: simulate detection
    return FileAccess.file_exists("/mnt/shared_folder/VM_FLAG.txt")

func snapshot_active():
    # Simulate snapshot detection
    return FileAccess.file_exists("/mnt/snapshots/snapshot.lock")
