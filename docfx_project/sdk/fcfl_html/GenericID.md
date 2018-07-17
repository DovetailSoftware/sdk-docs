_GenericID_
-----------

**Object and Type**

Object  : FCGeneric

Type     : Property (Read-only)

**Prototype**

Public GenericID As String

**Description**

This is an internal property that uniquely identifies the BO within the **FCFL** system. In most cases there is **NO REASON** for you to ever use this property. If you wish to read it (to maintain a unique key for your BOs), it can be read.

However, changing the value stored in this property could cause errors with other parts of **FCFL**.

**Example**

The following example creates two new generic objects, and prints out their GenericID values.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Create an object

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  // Print out the Generic ID

  Response.Write ("Case Generic ID: " + boCase.GenericID);

**Visual Basic:**

The code in this example is written in Visual Basic.

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  MsgBox "Case Generic ID: " & boCase.GenericID