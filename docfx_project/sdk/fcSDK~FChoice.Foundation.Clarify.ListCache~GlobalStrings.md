### GlobalStrings Property (ListCache)

Gets a reference to the [GlobalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection.md) cache of all application pop-up lists in the database

Syntax

```vbnet
'Declaration

Public ReadOnly Property GlobalStrings As IGlobalStringListCollection
```

```csharp
public IGlobalStringListCollection GlobalStrings {get;}
```

#### Property Value

A reference to the [GlobalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection.md) cache of all application pop-up lists in the database

Remarks

The GetGgbst* methods provide an easy-to-use API for accessing user-defined lists. It is recommend that these be used instead of directly accessing the master GBST collection itself.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)