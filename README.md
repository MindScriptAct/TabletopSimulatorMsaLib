# TabletopSimulator Msa Utils

LUA scripts for Tabletop simulator.

## Install

 * Check out library content into : `C:\Users\<user>\Documents\Tabletop Simulator`
 * Add to your **Global.ttslua** file :  `#include MsaLib`

## Tools:

### Create table with your GUIDs :

```lua
ObjectId = {
  TestObject = '9ce444',
}
```

### Button:

#### default using GUID:
```lua
SimpleButton(ObjectId.TestObject, "myFunction")
```

#### default using object:

```lua
local testObject = GetObject(ObjectId.TestObject)
SimpleButton(testObject, "myFunction")
```
