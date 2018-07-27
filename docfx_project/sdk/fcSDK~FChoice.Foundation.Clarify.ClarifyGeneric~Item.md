### Item Property (ClarifyGeneric)

### Item Property (ClarifyGeneric)

The zero-based index of the [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) to get

Gets the [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) at the specified index in this [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)

#### Syntax

```vbnet
'Declaration

Public ReadOnly Default Property Item( _
   ByVal _index_ As Integer _
) As [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md)
```

```csharp
public [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) this\[ 
   int _index_
\]; {get;}
```

#### Parameters

_index_

The zero-based index of the [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) to get

#### Property Value

The [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) at the specified index in the collection

#### Remarks

This property provides the ability to access a specific [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) in the collection by using the following syntax: gCase\[0\] (gCase(0) in Visual Basic).

To iterate over the collection of rows in a generic, use the more efficient foreach() syntax (For Each in Visual Basic). Please see the example for more details.

  

This property provides the ability to access a specific [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) in the collection by using the following syntax: gCase\[0\] (gCase(0) in Visual Basic).

To iterate over the collection of rows in a generic, use the more efficient foreach() syntax (For Each in Visual Basic). Please see the example for more details.

Example

This example demonstrates how to query a generic and iterate over the rows returned from the query.

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

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)