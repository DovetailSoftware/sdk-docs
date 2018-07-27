### HierarchicalStrings Property (ListCache)

Gets a reference to the [HierarchicalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElementCollection.md) cache of all user-defined lists in the database

#### Syntax

```vbnet
'Declaration

Public ReadOnly Property HierarchicalStrings As IHierarchicalStringListCollection
```

```csharp
public IHierarchicalStringListCollection HierarchicalStrings {get;}
```

#### Property Value

A reference to the [HierarchicalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElementCollection.md) cache of all user-defined lists in the database

#### Remarks

The GetHgbst* methods provide an easy-to-use API for accessing user-defined lists. It is recommend that these be used instead of directly accessing the master HGBST collection itself.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)