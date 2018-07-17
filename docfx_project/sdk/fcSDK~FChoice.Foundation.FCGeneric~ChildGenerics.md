     ChildGenerics Property                                                   

fcSDK Documentation

ChildGenerics Property

Returns a dictionary (keyed by parent to child relation name) of child generics belonging to this **FCGeneric**.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property ChildGenerics As [ICollection(Of FCGeneric)](#)

public [ICollection<FCGeneric>](#) ChildGenerics {get;}

#### Property Value

Returns a dictionary (keyed by parent to child relation name) of child generics belonging to this **FCGeneric**.

Remarks

Changes to the dictionary will have no effect on the **FCGeneric**.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)