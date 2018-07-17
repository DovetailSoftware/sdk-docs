_FindString_
------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function FindString(ByVal StringID As Variant) As String

**Description**

This method retrieves a string from the string_db table, using either the name or the ID of the string.

These correspond to the fields _ID_ and _name_ in the string_db table.

The string_db table is cached in the FCApplication object, so this method does not cause a database round-trip.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

StringID                                 Yes                         A string ID number or name.

**Returns**

The retrieved string if one is found, else an empty string.

**Error Codes**

**Value                                     Meaning                                                                                                                               **

10005                                      Invalid Input Type - Must be String or Integer.

10006                                      Input String must not be empty.

10007                                      Input Integer must not be < 0.

**Example**

The following example shows both ways of using the  FindString method to display an error message.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

<%

var ErrorMessageByID = FCApp.FindString(2343);

var ErrorMessageByName = FCApp.FindString("ERR_DBS_NO_DEFAULT_WIPBIN");

%>

Error By ID: <%=ErrorMessageByID%>

<BR>

Error By Name: <%=ErrorMessageByName%>