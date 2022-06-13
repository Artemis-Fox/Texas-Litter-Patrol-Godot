extends ParallaxBackground

export (float) var scroll_speed = -900.0

func _process(delta):
	scroll_offset.y += scroll_speed * delta
