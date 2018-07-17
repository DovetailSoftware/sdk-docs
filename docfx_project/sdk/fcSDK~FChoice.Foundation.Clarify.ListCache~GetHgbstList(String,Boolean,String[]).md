     GetHgbstList(String,Boolean,String\[\]) Method                                                   

fcSDK Documentation

GetHgbstList(String,Boolean,String\[\]) Method

The title of the user-defined list (HGBST)

An optional list of element titles specifying the level in the user-defined list to retrieve

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function GetHgbstList( _
   ByVal _listTitle_ As String, _
   ByVal _includeInactive_ As Boolean, _
   ByVal ParamArray _elementTitles_() As String _
) As [IHierarchicalStringElementCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.IHierarchicalStringElementCollection.md)

public [IHierarchicalStringElementCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.IHierarchicalStringElementCollection.md) GetHgbstList( 
   string _listTitle_,
   bool _includeInactive_,
   params string\[\] _elementTitles_
)

#### Parameters

_listTitle_

The title of the user-defined list (HGBST)

_includeInactive_

_elementTitles_

An optional list of element titles specifying the level in the user-defined list to retrieve

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstList.md)