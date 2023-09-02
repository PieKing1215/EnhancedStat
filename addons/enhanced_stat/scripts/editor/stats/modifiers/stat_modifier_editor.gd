extends EnhancedEditorInspectorPlugin

const StatModifierButton = preload("res://addons/enhanced_stat/scenes/editor/stats/modifiers/StatModifierButton.tscn")

func _can_handle(object: Object) -> bool:
	return object is StatModifier


func _parse_property(object: Object, type: Variant.Type, name: String, hint_type: PropertyHint, hint_string: String, usage_flags: int, wide: bool) -> bool:
	if name == "stat_key":
		var button = StatModifierButton.instantiate()
		button.initialize(object)
		add_custom_editor_inspector_container("Stat", button)
		return true
	
	return false