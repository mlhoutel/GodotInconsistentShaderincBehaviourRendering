# Shaderinc Inconsistent Behavior in Godot4

## Description

This project demonstrates an issue with shader inclusion (shaderinc) in Godot4, resulting in inconsistent behavior between the Compatibility, Mobile and Forward+ rendering modes.

## Tested versions

 * Godot_v4.2.1-stable_win64
 * Godot_v4.3-dev5_win64

## Issue

The discrepancy in behavior is due to a conflict between the variable names in the main shader and the included shader, where the shading variable depends on the current rendering mode:

 * **Compatibility mode**:
   
   The parameter of the included function takes precedence.
 
 * **Forward+** and **Mobile** modes:
   
   The imported function parameter is silently substituted in favor of the importing shader variable.
  
## Usage

To reproduce the issue:

1. Open the project in Godot 4.2-stable
2. Open DemoScene.tscn
3. Switch between Compatibility, Mobile and Forward+ rendering modes, and witness the color of the Sprite2D.
