extends Control

var children_minsize = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	update_children_minsize()
	connect("child_entered_tree", self, "update_children_minsize")
	connect("child_exiting_tree", self, "update_children_minsize")
	
func update_children_minsize(arg1 = null):
	var child_list = get_children()
	var all_rect = Rect2(0,0,0,0)
	for child in child_list:
		var temp_position = child.get_position()
		var temp_size = child.get_size()
		var temp_scale = child.get_scale()
		all_rect = all_rect.merge(Rect2(temp_position, temp_size * temp_scale))
		child.connect("resized", self, "update_children_minsize")
	children_minsize = all_rect.end
	rect_min_size = children_minsize

