# FitSize for Godot 3.x
The container control of Godot uses the size of the child nodes to arrange, but does not use the scale attribute. This node will use the scale and size attributes to calculate the actual size of the child nodes, and then automatically set min_size to arrange.

# Installation
- Copy `addons/fit-size` into your project (final path should be `res://addons/fit-size`).

- In the Godot Editor, go to **Project Settings > Plugins** and enable the **FitSize** plugin.

# Usage
To be fit in size, a Control node must be child of a **FitSize**.  

 1. From the editor, press **Add a new node**, and select **FitSize**
 
*Note: to add the Container from script, you must use this code:*
```gdscript
var FitSize = preload("res://addons/fit-size/main.gd")

add_child(FitSize.new())
```

 2. Add any Control node as a child of FitSize.  

 3. You can set the size of child or the scale of child, then the min_size of FitSize will be change.

# License

