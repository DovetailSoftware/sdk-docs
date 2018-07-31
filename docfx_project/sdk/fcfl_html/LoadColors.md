_LoadColors_
------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Sub LoadColors(user_name As String)

**Description**

This method reads the colors, for the specified user, from the database, and stores them in a memory cache for fast access. Colors are read from the cache with the _GetColor_ method.

When you call this method, one color is found for each color _purpose_ defined. If the user has specified a color that they wish to use, that color is loaded. If the user has not specified a color, the default (defined by the administrator) is used instead. If no colors are defined, the color (white, since these are background colors usually) is loaded.

This method is optional. You do not have to call on it in your **FCFL** programs. If you are writing a program (such as a command-line processor), you will not use colors and you do not need to call on this method. In this case, no colors are loaded, and any calls to the _GetColor_ method will return "White".

If you ever change (manually) a color in the database (in table_fc_color), you should call on this method again to recache the data. The provided GUI forms (in _fcAdmin_ and _fcClient_) do this for you automatically.

**Note:** The _fcClient_ program calls on this method for you so that colors are available in the thin client. You do not need to add it to your forms in the thin client.

#### Parameters
**Parameter Name**                **Required?**             **Description**

user_name                             Yes                         The name of the user for whom colors should be loaded into

this session.

**Example**

This example shows the loading of colors for the current user. It then prints out the user's color for a specific purpose.

**Visual Basic:**

The code in this example is written in Visual Basic.

fc_session.LoadColors fc_session.item("user.login_name")

MsgBox fc_session.GetColor("Interaction History - Case")