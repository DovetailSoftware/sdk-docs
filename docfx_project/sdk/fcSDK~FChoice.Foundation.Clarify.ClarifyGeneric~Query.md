### Query Method (ClarifyGeneric)

fcSDK Documentation

Query Method (ClarifyGeneric)

Causes the generic object to query the database table or view using the optionally specified data fields, filters, and sort orders

Causes the generic object to query the database table or view using the optionally specified data fields, filters, and sort orders

Overload List

| Overload | Description |
| --- | --- |
| [Query()](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Query().md) | Causes the generic object to query the database table or view using the optionally specified data fields, filters, and sort orders   |
| [Query(IDbTransaction)](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Query(IDbTransaction).md) | Causes the generic object to query the database table or view using the specified active transaction and, optionally, specified data fields, filters, and sort orders   |

Remarks

This method causes the generic object to query the database table or view using any specified data fields, filters, and/or sort orders. The query retrieves 0 or more rows.

For more information on controlling the number and type of fields returned, see the [DataFields](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md) property documentation. To restrict a query by adding filters, see the documentation for the [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md) method overloads. To control the order in which rows are sorted, see the [AppendSort](fcSDK~FChoice.Foundation.FCGeneric~AppendSort.md) method documentation.

**NOTE**: If you have traversed child objects from this generic, all children in the hierarchy will also be queried when this method is called. For example, if you wish to query the case object for one specific case, but also wish to get all related activity logs and the related contact, you would set up the case, activity_log, and contact generic objects (see example), and would only have to query the case generic object.

If more than one object that is to be queried at the same time and are not related, use the [Query Method](fcSDK~FChoice.Foundation.GenericDataSet~Query.md) on the [ClarifyDataSet](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md) instance from which this generate was created to ensure that the queries are optimized and are executed in the same transaction.

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

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)  
[Base Implementation in Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md)