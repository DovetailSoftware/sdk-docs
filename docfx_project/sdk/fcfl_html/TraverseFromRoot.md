_TraverseFromRoot_
------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

Public Sub TraverseFromRoot(ByVal RootObjid As Long, _

            ByVal TblName As String, ByVal RootRel As String)

**Description**

This method sets a query for a generic object, given a root object table name, the objid for a row in that table, and the relation to follow from that row to this generic object. This method saves querying the root object (as a parent object) when there is no need. This method is only useful when you already have an objid of a root row. For example, the current user's objid is cached in the FCApplication object. There is no  reason to expend time to query the user table just to get that row (for a child query). Instead, the TraverseFromRoot is very useful.

**Note**: There is no parent/child relationship set up (as there is with TraverseFromParent), as there is no parent generic object.

**Note**: This method will set the DBObjectName for this generic object. Thus it is not necessary to set it for this object.

Note: This method does not automatically set the BulkName. You must still set this manually.

#### Parameters
**Parameter Name**                **Required?**             **Description**

RootObjid                              Yes                         The objid of the root row in the root object

TblName                                Yes                         The name (not including the "table_" of the root table

RootRel                                  Yes                         The relation to follow from the root row to this generic object

**Example**

The following example retrieves all of the queues that the current user is assigned to.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

     // Create the queue object

  // Traverse from the current user's objid

  var boQueue = FCSession.CreateGeneric();

  boQueue.TraverseFromRoot(FCSession.Item("user.id"), "user",

                           "user_assigned2queue");

  // Query the data, and display it 

  boQueue.Query();

  while (boQueue.EOF != true)

  {

    Response.Write ("Queue title: " + boQueue("title"));        

    boQueue.MoveNext();

  }

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boQueue As FCGeneric

  Set boQueue = fc_session.CreateGeneric

  boQueue.TraverseFromRoot fc_session.item("user.id"), _

                           "user", "user_assigned2queue"

  boQueue.Query

  While boQueue.EOF = False

    MsgBox boQueue("title")

    boQueue.MoveNext

  Wend