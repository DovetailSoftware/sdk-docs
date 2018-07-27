### GetGbstList Method (ListCache)

The name of the GBST/application pop-up list

Gets a reference to a [GlobalStringList](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringList.md) object representing an application pop-up list in the database

#### Syntax

```vbnet
'Declaration

Public Function GetGbstList( _
   ByVal _listTitle_ As String _
) As IGlobalStringList
```

```csharp
public IGlobalStringList GetGbstList( 
   string _listTitle_
)
```

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

#### Return Value

A [GlobalStringList](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringList.md) representing the specified application pop-up list or a null reference (**Nothing** in Visual Basic) if no list exists with that _listTitle_.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)