     GetHgbstElmDefaultElement(String,String\[\]) Method                                                   

fcSDK Documentation

GetHgbstElmDefaultElement(String,String\[\]) Method

The title of the user-defined list (HGBST)

One or more element titles which define the level in the list to retrieve

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function GetHgbstElmDefaultElement( _
   ByVal _listTitle_ As String, _
   ByVal ParamArray _elementTitles_() As String _
) As [IHierarchicalStringElement](fcSDK~FChoice.Foundation.Clarify.DataObjects.IHierarchicalStringElement.md)

public [IHierarchicalStringElement](fcSDK~FChoice.Foundation.Clarify.DataObjects.IHierarchicalStringElement.md) GetHgbstElmDefaultElement( 
   string _listTitle_,
   params string\[\] _elementTitles_
)

#### Parameters

_listTitle_

The title of the user-defined list (HGBST)

_elementTitles_

One or more element titles which define the level in the list to retrieve

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstElmDefaultElement.md)