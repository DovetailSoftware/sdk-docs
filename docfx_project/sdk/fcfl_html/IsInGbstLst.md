_IsInGbstLst_
-------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function IsInGbstLst(ByVal ListName As String, ByVal Element As String) As Boolean

**Description**

This method returns a boolean value indicating if a given string is a valid element in a given Application Popup list.

The gbst_elm table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| ListName | Yes | An Application popup list name. |
| Element | Yes | The element to be checked for its existence in the list. |

**Returns**

True if the Element does exist in the ListName list. Else, False.

**Error Codes**

**Value**                **Meaning**

10008                                      ListName must not be empty.

10009                                      Invalid ListName.

10010                                      Element must not be empty.

**Example**

The following example checks is a given value from a posted form is a valid Case Priority.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var ListName = "Response Priority Code";

var ListValue = Request.Form("priority").Item; If (FCApp.IsInGbstLst(ListName,ListValue))

 { Response.Write(ListValue + " is a valid " + ListName); }

else

 { Response.Write(ListValue + " is NOT a valid " + ListName); }