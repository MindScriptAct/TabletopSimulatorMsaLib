# TabletopSimulator Msa Utils

LUA scripts for Tabletop simulator.

## Install


 * Check out library content into : `C:\Users\<user>\Documents\Tabletop Simulator`
 * Add to your **Global.ttslua** file :  `#include MsaLib`

## Use:



### Create table with your GUIDs :

```lua
ObjectId = {
  TestObject = '9ce444',
}
```

### Button:
-------------

#### default using GUID:
```lua
SimpleButton(ObjectId.TestObject, "My label", "myFunction")
```
#### default using GUID, function in script owner object:
```lua
SimpleButton(ObjectId.TestObject, "My label", "myCustomFunction", ObjectId.ScriptOwnerTest)
```
#### default using object:

```lua
local testObject = GetObject(ObjectId.TestObject)
SimpleButton(testObject, "My label", "myFunction")
```
#### all functions:
```lua
          local myButton = SimpleButton(value);
          myButton:SetLabel("My label!")
          myButton:SetFunctionOwner(ObjectId.ScriptOwnerTest)
          myButton:SetClickFunction("myCustomFunction")
          myButton:SetFontSize(100)
          myButton:Resize(500, 200)--:SetWidth(500):SetHeight(200)
          myButton:Move(0, 1, -2)
          myButton:Rotate(0, 180, 0)
          myButton:Scale(5)--:Scale(5, 5, 5)
          myButton:SetColor(Color.White, 1) -- :SetColor("#FF00FF", 1) :SetColor(1, 0, 1, 1)
          myButton:SetFontColor(Color.Black)
          myButton:SetHoverColor(Color.Orange)
          myButton:SetPressColor(Color.Teal)
          myButton:SetTooltip("my tooltip")
```

#### all functions chained:

```lua
        local myButton = SimpleButton(value)
          :SetLabel("My label!")
          :SetFunctionOwner(ObjectId.ScriptOwnerTest)
          :SetClickFunction("myCustomFunction")
          :SetFontSize(100)
          :Resize(500, 200) -- :SetWidth(500):SetHeight(200)
          :Move(0, 1, -2)
          :Rotate(0, 180, 0)
          :Scale(5) -- :Scale(5, 5, 5)
          :SetColor(Color.White, 1) -- :SetColor("#FF00FF", 1) :SetColor(1, 0, 1, 1)
          :SetFontColor(Color.Black)
          :SetHoverColor(Color.Orange)
          :SetPressColor(Color.Teal)
          :SetTooltip("my tooltip");
```

#### create button style:

```lua
    local uiManager = UiManager()

    local myStyle = uiManager:CloneButtonTable()
    myStyle.label = "[My Button!]"
    myStyle.function_owner = Global
    myStyle.click_function = "myFunction"
    myStyle.font_size = 200
    myStyle.width = 1200
    myStyle.height = 300
    myStyle.position = {0, 1, -2}
    myStyle.rotation = {0, 180, 0}
    myStyle.scale = {2, 2, 2}
    myStyle.color = {0.8, 0.8, 0.8}
    myStyle.font_color = {0, 0, 0}
    myStyle.hover_color = GetColor(Color.Blue)
    myStyle.press_color = GetColor("#FF00FF", 0.5)
    myStyle.tooltip = "my tooltip"
```

#### use default button style:

```lua
    uiManager:SetButtonStyle(Static.DefaultStyleName, myStyle)

    SimpleButton(ObjectId.TestObject, "My label", "myCustomFunction", ObjectId.ScriptOwnerTest)
```

#### use custom button style:

```lua
    uiManager:SetButtonStyle("myStyleName", myStyle)

    SimpleButton(ObjectId.TestObject, "My label", "myCustomFunction", ObjectId.ScriptOwnerTest, "myStyleName")
```



