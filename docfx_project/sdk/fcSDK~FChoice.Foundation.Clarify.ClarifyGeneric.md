### ClarifyGeneric Class                                                   

fcSDK Documentation

ClarifyGeneric Class

Provides core Clarify business logic and managed access to Clarify data.

Syntax

```vbnet
'Declaration

<[DefaultMemberAttribute](#)("Item")>
Public Class ClarifyGeneric 
   Inherits [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)
```

```csharp
\[[DefaultMemberAttribute](#)("Item")\]
public class ClarifyGeneric : [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md) 
```

Remarks

This is the core business object in FCFL.NET.  Each instance of ClarifyGeneric represents records from tables and views in the Clarify database.  The generic object allows you to query the database for rows in the table or view, add new table rows, or update or delete existing table rows (**NOTE**: updates are only available for tables, views are read-only).

Generics are created from a [ClarifyDataSet](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md) object using [CreateGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet~CreateGeneric.md), or by traversing from a parent generic (using [Traverse](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Traverse.md)). Generics inherit properties from their session such as whether or not they are distinct by default ([DefaultDistinctGenerics](fcSDK~FChoice.Foundation.FCSession~DefaultDistinctGenerics.md)) or whether First Choice Data Restrictions are enabled ([RestrictionsEnabled](fcSDK~FChoice.Foundation.FCSession~DataRestrictionsEnabled.md)).

Generics created using [Traverse](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Traverse.md) from a parent generic always belong to the same [ClarifyDataSet](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md) as the parent generic.

Example

This example shows the various ways to create a generic.

```csharp
// First, create a new ClarifyDataSet ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Create a generic from the ClarifyDataSet based on the site table ClarifyGeneric gSite = dataSet.CreateGeneric("site");
gSite.Query();

// Also, generics can be created by traversing from a parent
// In this example, gAddr is a child of gSite using the cust_primaddr2address
// relation ClarifyGeneric gAddr = gSite.Traverse("cust_primaddr2address");

// This queries both gSite and gAddr gSite.Query()
```

```vbnet
' First, create a new ClarifyDataSet Dim dataSet As New ClarifyDataSet(session)

' Create a generic from the ClarifyDataSet based on the site table Dim gSite As ClarifyGeneric = dataSet.CreateGeneric("site")
gSite.Query()

' Also, generics can be created by traversing from a parent
' In this example, gAddr is a child of gSite using the cust_primaddr2address
' relation Dim gAddr As ClarifyGeneric = gSite.Traverse("cust_primaddr2address")

' This queries both gSite and gAddr gSite.Query()
```

Inheritance Hierarchy

[System.Object](#)  
   [FChoice.Foundation.FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md)  
      **FChoice.Foundation.Clarify.ClarifyGeneric**  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify](fcSDK~FChoice.Foundation.Clarify_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

See Also

#### Reference

[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)  
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)