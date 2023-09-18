@icon("res://addons/enhanced_common/icons/icons8-stats-24.png")
extends Resource
class_name Stat
## The Stat class is used for representing individual stats, like Health, Mana, Speed, etc.
##
## As it inherits from Godot's Resource, it is easily serializable and can be shared among multiple instances or saved for later.

###
# CORE
###

## Key that defines the uniqueness of a stat
var key: Variant:
	get = get_key

## Get the key
func get_key() -> Variant:
	return get_script()

## 
signal value_changed

var value:
	get = get_value

var sync_value
var use_sync_value := false

func get_value():
	return sync_value if use_sync_value else _get_value()

func _get_value():
	return base_value


var base_value


###
# STAT MODIFIERS
###
func add_stat_modifier(stat_modifier) -> void:
	pass

func remove_stat_modifier(stat_modifier) -> void:
	pass

func clear_stat_modifiers() -> void:
	pass