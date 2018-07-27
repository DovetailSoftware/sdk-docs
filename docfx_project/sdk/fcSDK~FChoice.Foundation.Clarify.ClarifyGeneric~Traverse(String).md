### Traverse(String) Method

fcSDK Documentation

Traverse(String) Method

The name of the relation on the parent that points to the desired child object

Creates a child generic that is related to this generic through the specified relation

#### Syntax

```vbnet
'Declaration

Public Function Traverse( _
   ByVal _relationName_ As String _
) As ClarifyGeneric
```

```csharp
public ClarifyGeneric Traverse( 
   string _relationName_
)
```

#### Parameters

_relationName_

The name of the relation on the parent that points to the desired child object

#### Return Value

The newly-created and related child generic

#### Remarks

The new child generic is related and linked to the parent. When the parent is queried or updated, the new generic will be queried or updated as well.

To retrieve the related rows for a given row in either generic after a query, call the [RelatedRows](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow~RelatedRows.md) method on that row and pass in the opposite generic (see example).

Example

This example shows how to traverse several generics into a hierarchy, query the parent and then iterate through the rows and display the results of the query.

```csharp
// Create a dataset ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Get all cases, activity logs, and contact. ClarifyGeneric gCase = dataSet.CreateGeneric("case");

ClarifyGeneric gAct = gCase.Traverse("case_act2act_entry");

ClarifyGeneric gContact = gCase.Traverse("case_reporter2contact");
  
// Now query the data gCase.Query();
  
// Display return data to the console. First the case, then all
// activity logs then the one contact for the case foreach( ClarifyDataRow caseRow in gCase )
{
    Console.WriteLine("Case ID: {0}", caseRow\["id_number"\]);
    
    // Show each act entry
    foreach( ClarifyDataRow actRow in caseRow.RelatedRows(gAct) )
    {
        Console.WriteLine("  Activity: {0}", actRow\["objid"\]);
    }
    
    // Show each contact
    foreach( ClarifyDataRow conRow in caseRow.RelatedRows(gContact) )
    {
        Console.WriteLine("  Contact: {0} {1}", conRow\["first_name"\], conRow\["last_name"\]);
    }
}
```

```vbnet
' Create a dataset Dim dataSet As New ClarifyDataSet(session)

' Get all cases, activity logs, and contact. Dim gCase As ClarifyGeneric = dataSet.CreateGeneric("case")

Dim gAct As ClarifyGeneric = gCase.Traverse("case_act2act_entry")

Dim gContact As ClarifyGeneric = gCase.Traverse("case_reporter2contact")
  
' Now query the data gCase.Query()
  
' Display return data to the console. First the case, then all
' activity logs then the one contact for the case For Each caseRow As ClarifyDataRow In gCase

    Console.WriteLine("Case ID: {0}", caseRow("id_number"))
    
    ' Show each act entry
    For Each actRow As ClarifyDataRow In caseRow.RelatedRows(gAct)
        Console.WriteLine("  Activity: {0}", actRow("objid"))
    Next
    
    ' Show each contact
    For Each conRow As ClarifyDataRow In caseRow.RelatedRows(gContact)
        Console.WriteLine("  Contact: {0} {1}", conRow("first_name"), conRow("last_name"))
    Next
    
Next
```

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)