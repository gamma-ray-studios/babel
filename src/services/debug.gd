extends Service

func _unhandled_key_input(event: InputEvent) -> void:
	if not event.is_action_type() or not event.is_pressed(): return

	if event.is_action(&"game.quit"):
		return get_tree().quit()

	if event.is_action(&"game.restart"):
		get_tree().reload_current_scene()
		return
