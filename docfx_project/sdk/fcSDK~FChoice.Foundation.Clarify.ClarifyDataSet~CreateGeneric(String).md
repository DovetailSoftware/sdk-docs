### CreateGeneric(String) Method

fcSDK Documentation

CreateGeneric(String) Method

The name of the table or view on which the new generic will be based.

Creates a new [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) based on the specified table or view name

Syntax

```vbnet
'Declaration

Public Overloads Overridable Function CreateGeneric( _
   ByVal _tableName_ As String _
) As [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)
```

```csharp
public virtual [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) CreateGeneric( 
   string _tableName_
)
```

#### Parameters

_tableName_

The name of the table or view on which the new generic will be based.

#### Return Value

A new [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) based on the specified table or view name

Remarks

**NOTE**: Generics based on views cannot be updated, modified, or related to other generics, rows, or values.

Example

This example shows how to create a generic from the session (it assumes that the application is already initialized and that a session has been created in the variable 'session'), traverse to children generics and iterate over rows.

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

[ClarifyDataSet Class](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md)  
[ClarifyDataSet Members](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet~CreateGeneric.md)