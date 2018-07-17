### AddNew(ClarifyDataRow) Method

Row to be duplicated that is based on the same [Table](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~SchemaTable.md).

Adds a new row, copying values from the specified original row, and schedules it for creation in the database when [Update](fcSDK~FChoice.Foundation.FCGeneric~Update.md) is called.

Syntax

```vbnet
'Declaration

Public Overloads Function AddNew( _
   ByVal _rowToDuplicate_ As [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) _
) As [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md)
```

```csharp
public [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) AddNew( 
   [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) _rowToDuplicate_
)
```

#### Parameters

_rowToDuplicate_

Row to be duplicated that is based on the same [Table](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~SchemaTable.md).

#### Return Value

 A new [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) with the same fields and values as the **rowToDuplicate**.

Remarks

This method effectively copies a **ClarifyDataRow**. All available fields from the **rowToDuplicate** parameter are copied into the new row even if the field is not currently populated in this **ClarifyGeneric**. 

The new row added to the **ClarifyGeneric** will be at the end of the [Rows](/sdk/fcSDK~FChoice.Foundation.FCGeneric~Rows.md) collection.

If you do not supply an objId, **ClarifyGeneric**  will generate a proper objId for the newly-added row. A custom objId can be provided and **ClarifyGeneric** will not tamper with the objId. It is the responsibility of the caller to ensure that the custom objId is unique within the system, otherwise data corruption could occur.

**NOTE:** If you have previously executed a query on this generic using a list of specific data fields, only those fields will be available to set. This is different than previous functionality in FCFL(COM) which would throw an error if data fields were used to query originally.

Example

This example shows how to add a new row with the values copied from an existing row and update it to the database. In this example, the objId is generated automatically for the row.

```csharp
// First, create a new ClarifyDataSet ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Get one specific contact ClarifyGeneric gContact = dataSet.CreateGeneric("contact");
gContact.AppendFilter("objid", NumberOps.Equals, 268435457);

// Get one specific site ClarifyGeneric gSite = dataSet.CreateGeneric("site");
gSite.AppendFilter("objid", NumberOps.Equals, 268435457);

// Query both via the ClarifyDataSet dataSet.Query(gContact, gSite);

// Query for the primary role at this site ClarifyGeneric gRole = dataSet.CreateGeneric("contact_role");
gRole.AppendFilter("primary_site", NumberOps.Equals, 1);
gRole.Query();

// Create a new secondary role for this site by duplicating the primary ClarifyDataRow newRow = gRole.AddNew( gRole\[0\] );
// Make it the secondary site newRow\["primary_site"\] = 2;
newRow.Update();
```

```vbnet
' First, create a new ClarifyDataSet Dim dataSet As New ClarifyDataSet(session)

' Get one specific contact Dim gContact As ClarifyGeneric = dataSet.CreateGeneric("contact")
gContact.AppendFilter("objid", NumberOps.Equals, 268435457)

' Get one specific site Dim gSite As ClarifyGeneric = dataSet.CreateGeneric("site")
gSite.AppendFilter("objid", NumberOps.Equals, 268435457)

' Query both via the ClarifyDataSet dataSet.Query(gContact, gSite)

' Query for the primary role at this site Dim gRole As ClarifyGeneric = dataSet.CreateGeneric("contact_role")
gRole.AppendFilter("primary_site", NumberOps.Equals, 1)
gRole.Query()

' Create a new secondary role for this site by duplicating the primary Dim newRow As ClarifyDataRow = gRole.AddNew( gRole(0) )
' Make it the secondary site newRow("primary_site") = 2
newRow.Update()
```

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~AddNew.md)