### CreateGeneric(Int32,String,String) Method

fcSDK Documentation

CreateGeneric(Int32,String,String) Method

The objid of the object from which this generic will traverse

The object type (table name) of the object from which to traverse

The relation from the parent to use when traversing this generic from the specified root

Creates a new [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md), traversing from a specified root object type and objid using the specified relation

Syntax

```vbnet
'Declaration

Public Overloads Overridable Function CreateGeneric( _
   ByVal _rootObjID_ As Integer, _
   ByVal _rootObject_ As String, _
   ByVal _relFromParent_ As String _
) As [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)
```

```csharp
public virtual [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) CreateGeneric( 
   int _rootObjID_,
   string _rootObject_,
   string _relFromParent_
)
```

#### Parameters

_rootObjID_

The objid of the object from which this generic will traverse

_rootObject_

The object type (table name) of the object from which to traverse

_relFromParent_

The relation from the parent to use when traversing this generic from the specified root

#### Return Value

A new [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) initialized with the specified table (child of the specified relation) and related to the specified parent root object

Remarks

This method sets a query for a generic object, given a root object table name, the objid for a row in that table, and the relation to follow from that row to this generic obj. This method saves querying the root object (as a parent object) when it is not needed otherwise. This method requires that you already have the objid of the object from which you wish to traverse. For example, the current user's objid is cached in the current [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) data. It would be inefficient to make a special query to the user table to retrieve the row simply to retrieve the objid when it's already available in the session data. Instead, this method will allow you to traverse straight to child objects knowing only the user's objid.

**NOTE**: There is no parent/child relationship set up since there is no parent generic available.

Example

The following example retrieves all of the queues that the current user is assigned to. This example assumes that [Initialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md) has already been called on [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) and a new [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) has been created using [CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md).

```csharp
// Create the DataSet ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Traverse from the user's objid ClarifyGeneric gQueue = dataSet.CreateGeneric(
    (int)session\["user.id"\], "user", "user_assigned2queue" );
    
// Query the data and print it to the console gQueue.Query();

foreach( ClarifyDataRow row in gQueue )
{
    Console.WriteLine("Queue title: {0}",
        row\["title"\] );
}
```

```vbnet
' Create the DataSet Dim dataSet As New ClarifyDataSet(session)

' Traverse from the user's objid Dim gQueue As ClarifyGeneric = session.CreateGeneric( _
    session("user.id"), "user", "user_assigned2queue" )
    
' Query the data and print it to the console gQueue.Query()

For Each row As ClarifyDataRow In gQueue
    Console.WriteLine("Queue title: {0}", row("title") )
Next
```

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyDataSet Class](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md)  
[ClarifyDataSet Members](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet~CreateGeneric.md)