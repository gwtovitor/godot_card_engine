extends AbstractCard

@onready var _name = $AnimContainer/Front/NameBackground/Name


func _ready() -> void:
	# Workaround for https://github.com/godotengine/godot/issues/52223
	super._ready()


func _update_data(data: CardData) -> void:
	if data.has_text("name"):
		_name.text = data.get_text("name")


func _on_PlacedCard_instance_changed() -> void:
	_update_data(instance().data())
