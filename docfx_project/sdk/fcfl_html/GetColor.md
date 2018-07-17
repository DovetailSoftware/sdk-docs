_GetColor_
----------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Function GetColor(purpose As String) As String

**Description**

This method returns the color that a user should use for a specific _purpose_. These colors are loaded into **FCFL** via the _LoadColors_ method.

The color returned will be one of three values:

 If the user has specified (via the provided GUI) a personal choice for the color for the purpose, that color will be returned,

 If the user has not specified a personal choice for the color, the default color for that purpose will be returned,

 If no default has been specified for that purpose, "White" will be returned

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

purpose                                 Yes                         The purpose that this color is used for

**Returns**

One of the three string values listed above.

**Example**

This example shows the loading of colors for the current user. It then prints out the user's color for a specific purpose.

**Visual Basic:**

The code in this example is written in Visual Basic.

fc_session.LoadColors fc_session.item("user.login_name")

MsgBox fc_session.GetColor("Interaction History - Case")