### GetGbstElmByID or GetLocalizedGbstElmByID

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetGbstElmByID(ByVal ListName As String, _
                               ByVal ElmObjid As Long) As String

**Description**

This method returns the string value for a given element in a given Application Popup list, given the objid.

If the element is not found in the list, this method returns a value of empty string (""). The gbst_elm table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters
**Parameter Name**                **Required?**             **Description**

ListName                               Yes                         Name of the list

ElmObjid                                Yes                         The objid of the list item

**Returns**

The string value of the element.

**Example**

The following example retrieves the string for the priority of an already-found case.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var ElmObjid = CaseObj("respprty2gbst_elm");

Response.Write("Priority is: " + FCApp.GetGbstElmByID("Response  Priority Code", ElmObjid));