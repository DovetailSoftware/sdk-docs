_ThrowErrors_
-------------

**Object and Type**

Object  : FCSession

Type     : Property

**Prototype**

Public ThrowErrors As Boolean

**Description**

First Choice FCFL-based High Level APIs either return errors through the return value of the COM method or throw the error (in the object programming methodology).  The property _ThrowErrors_ switches from one method to the other.  Setting _ThrowErrors_ to FALSE means First Choice methods return errors through the return code.  Setting _ThrowErrors_ to TRUE causes the methods to throw the error.  By default the value of _ThrowErrors_  is TRUE.

**Example**

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

The following example eveluates the return code from a High Level API call (Move Change Request)

FCSession.ThrowErrors = FALSE

ret_int = cq.move_cr(cbbo, "2", "Urgent");

If ret_int <> 0 Then

  Response.Write("Move CR Failed. Error Code = " + ret_int)

End If

The following example catches an error thrown from a High Level API call (Move Change Request)

FCSession.ThrowErrors = TRUE

try {

  ret_int = cq.move_cr(cbbo, "2", "Urgent"); }

catch{e) {

Response.Write (e.description); }