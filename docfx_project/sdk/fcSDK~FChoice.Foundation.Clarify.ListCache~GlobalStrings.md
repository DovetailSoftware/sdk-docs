     GlobalStrings Property (ListCache)                                                   

fcSDK Documentation

GlobalStrings Property (ListCache)

Gets a reference to the [GlobalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection.md) cache of all application pop-up lists in the database

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property GlobalStrings As [IGlobalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.IGlobalStringListCollection.md)

public [IGlobalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.IGlobalStringListCollection.md) GlobalStrings {get;}

#### Property Value

A reference to the [GlobalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection.md) cache of all application pop-up lists in the database

Remarks

The GetGgbst* methods provide an easy-to-use API for accessing user-defined lists. It is recommend that these be used instead of directly accessing the master GBST collection itself.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)