### AddNew() Method

fcSDK Documentation

AddNew() Method

Adds a new row and schedules it for creation in the database when [Update](fcSDK~FChoice.Foundation.FCGeneric~Update.md) is called

Syntax

```vbnet
'Declaration

Public Overloads Function AddNew() As ClarifyDataRow
```

```csharp
public ClarifyDataRow AddNew()
```

#### Return Value

A new ClarifyDataRow with the same fields as the current **ClarifyGeneric** present.

Remarks

All fields are initialized with their default values (i.e. NULL for relations, 0 for integer fields, etc). You can set individual fields using the [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) indexer and relate rows using one of the relate methods, such as RelateRecord. You can relate newly-added rows to other rows (even other newly-added rows). [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) will resolve the objIds of new records properly when Update or [UpdateAll](fcSDK~FChoice.Foundation.FCGeneric~UpdateAll.md) is called.

If you do not supply an objId, **ClarifyGeneric**  will generate a proper objId for the newly-added row. A custom objId can be provided and **ClarifyGeneric** will not tamper with the objId. It is the responsibility of the caller to ensure that the custom objId is unique within the system, otherwise data corruption could occur.

**NOTE**: If you have previously executed a query on this generic using a list of specific data fields, only those fields will be available to set. This is different than previous functionality in FCFL(COM) which would throw an error if data fields were used to query originally.

Example

This example shows how to add a new row, associate it with other rows and update it to the database. In this example, the objId is generated automatically for the row.

```csharp
// First, create a new ClarifyDataSet ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Get one specific contact ClarifyGeneric gContact = dataSet.CreateGeneric("contact");
gContact.AppendFilter("objid", NumberOps.Equals, 268435457);

// Get one specific site ClarifyGeneric gSite = dataSet.CreateGeneric("site");
gSite.AppendFilter("objid", NumberOps.Equals, 268435457);

// Query both via the ClarifyDataSet dataSet.Query(gContact, gSite);

// Now create a new contact role
// Set it as a secondary role and relate it to the contact
// and site
// NOTE: In order for RelateRecord to work, the two generics
//    must be in the same ClarifyDataSet ClarifyGeneric gRole = dataSet.CreateGeneric("contact_role");
ClarifyDataRow row = gRole.AddNew();
row\["primary_site"\] = 2;
row\["role_name"\] = "Default";
row.RelateRecord( gContact\[0\], "contact_role2contact" );
row.RelateRecord( gSite\[0\], "contact_role2site" );
row.Update();
```

```vbnet
' First, create a new ClarifyDataSet Dim dataSet As New ClarifyDataSet(session)

' Get one specific contact Dim gContact As ClarifyGeneric = dataSet.CreateGeneric("contact")
gContact.AppendFilter("objid", NumberOps.Equals, 268435457)

' Get one specific site Dim gSite As ClarifyGeneric = dataSet.CreateGeneric("site")
gSite.AppendFilter("objid", NumberOps.Equals, 268435457)

' Query both via the ClarifyDataSet dataSet.Query(gContact, gSite)

' Now create a new contact role
' Set it as a secondary role and relate it to the contact
' and site
' NOTE: In order for RelateRecord to work, the two generics
'    must be in the same ClarifyDataSet Dim gRole As ClarifyGeneric = dataSet.CreateGeneric("contact_role")
Dim row As ClarifyDataRow = gRole.AddNew()
row("primary_site") = 2
row("role_name") = "Default"
row.RelateRecord( gContact(0), "contact_role2contact" )
row.RelateRecord( gSite(0), "contact_role2site" )
row.Update()
```

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~AddNew.md)