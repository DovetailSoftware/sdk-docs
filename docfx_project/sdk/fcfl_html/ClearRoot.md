_ClearRoot_
-----------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub ClearRoot()

**Description**

This method will clear the information set up (using the TraverseFromRoot method) for a generic object for a root traversal. It does **not** clear the DBObjectName, so the object is still set up to query the table set up in the root traversal. The generic object will now perform a SimpleQuery type query.

**Note**: No other properties (sort order, filters, data fields) are cleared by this method.

It is not recommended that you use this method _after_ you have queried the generic object, as unexpected results with Move and Count may occur.

**Example**

The following example clears the root object information for a generic object after it was set up in error.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

     // Create the queue object

  // Traverse from the current user's objid

  var boQueue = FCSession.CreateGeneric();

  boQueue.TraverseFromRoot(FCSession.Item("user.id"), "user",

                           "user_assigned2queue");

  // Oops. It was a mistake - clear the root traversal 

  boQueue.ClearRoot();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boQueue As FCGeneric

  Set boQueue = fc_session.CreateGeneric

  boQueue.TraverseFromRoot fc_session.item("user.id"), _

                           "user", "user_assigned2queue"

  boQueue.ClearRoot