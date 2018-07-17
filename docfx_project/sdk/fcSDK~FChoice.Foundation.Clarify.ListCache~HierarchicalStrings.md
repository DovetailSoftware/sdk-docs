     HierarchicalStrings Property (ListCache)                                                   

fcSDK Documentation

HierarchicalStrings Property (ListCache)

Gets a reference to the [HierarchicalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElementCollection.md) cache of all user-defined lists in the database

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property HierarchicalStrings As [IHierarchicalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.IHierarchicalStringListCollection.md)

public [IHierarchicalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.IHierarchicalStringListCollection.md) HierarchicalStrings {get;}

#### Property Value

A reference to the [HierarchicalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElementCollection.md) cache of all user-defined lists in the database

Remarks

The GetHgbst* methods provide an easy-to-use API for accessing user-defined lists. It is recommend that these be used instead of directly accessing the master HGBST collection itself.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)