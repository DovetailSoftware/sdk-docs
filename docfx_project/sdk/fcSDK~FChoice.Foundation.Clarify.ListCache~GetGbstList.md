     GetGbstList Method (ListCache)                                                   

fcSDK Documentation

GetGbstList Method (ListCache)

The name of the GBST/application pop-up list

Gets a reference to a [GlobalStringList](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringList.md) object representing an application pop-up list in the database

Syntax

```vbnet
```csharp

'Declaration
 

Public Function GetGbstList( _
   ByVal _listTitle_ As String _
) As [IGlobalStringList](fcSDK~FChoice.Foundation.Clarify.DataObjects.IGlobalStringList.md)

public [IGlobalStringList](fcSDK~FChoice.Foundation.Clarify.DataObjects.IGlobalStringList.md) GetGbstList( 
   string _listTitle_
)

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

#### Return Value

A [GlobalStringList](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringList.md) representing the specified application pop-up list or a null reference (**Nothing** in Visual Basic) if no list exists with that _listTitle_.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)