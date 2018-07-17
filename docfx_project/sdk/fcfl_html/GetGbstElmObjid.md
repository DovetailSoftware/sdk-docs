_GetGbstElmObjid_
-----------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetGbstElmObjid(ByVal ListName As String, ByVal Element As String) As Long

**Description**

This method returns an objid for a given element in a given Application Popup list.

If the element is not found in the list, this method returns a value of zero.

The gbst_elm table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

ListName                               Yes                         An Application popup list name.

Element                                  Yes                         The element to be checked for its existence in the list.

**Returns**

The objid of the Element in the ListName list. Zero, if the Element is not found in the ListName list.

**Error Codes**

**Value                                     Meaning                                                                                                                               **

10008                                      ListName must not be empty.

10009                                      Invalid ListName.

10010                                      Element must not be empty.

**Example**

The following example retrieves the objid for a Case Priority from a posted form value.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var ListName = "Response Priority Code";

var ListValue = Request.Form("priority").Item;

var ElmObjid = FCApp.GetGbstElmObjid(ListName,ListValue);

if (ElmObjid > 0)

  { 

  Response.Write("The GbstElm Objid for " + ListValue +

                 " in the list " + ListName +

                 " = " \+ ElmObjid); }

else

  { Response.Write(ListValue + " is NOT a valid " + ListName); }