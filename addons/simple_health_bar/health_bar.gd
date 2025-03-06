extends ProgressBar

@onready var timer := $Timer
@onready var damageBar := $DamageBar

var health: float

func init_bar(_health:float) -> void:
	health = _health
	max_value = _health
	value = _health
	damageBar.value = _health
	damageBar.max_value = _health
	
func update_bar(new_health:float) -> void:
	var prev_health: float = health
	health = min(max_value, new_health)
	value = health
	
	if health < prev_health:
		timer.start()
	else:
		damageBar.value = health
	prev_health = health

func _on_timer_timeout() -> void:
	damageBar.value = health
