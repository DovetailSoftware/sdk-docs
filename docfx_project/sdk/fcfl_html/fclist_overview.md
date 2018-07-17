_FCFL FCList Object_
--------------------

**Overview**

The FCList object represents a list that can contain items of any data type. It emulates the behaviors (and has the same methods and properties) as the base ClearBasic List object.

This object is completely optional. There is no need to use this object to successfully use **FCFL**. But if you (like the programmers at First Choice Software) find this object useful, it has been exposed for your use.

To create a new FCList object, use the New keyword as you would any object. The following are examples of how to create an FCList in both JavaScript and Visual Basic:

**JavaScript**:

var aList;

aList = Server.CreateObject("FCFL.fclist");

**Visual Basic**:

Dim aList As New FCList