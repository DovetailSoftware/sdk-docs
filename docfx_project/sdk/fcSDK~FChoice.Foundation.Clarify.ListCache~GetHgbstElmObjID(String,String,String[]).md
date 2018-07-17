     GetHgbstElmObjID(String,String,String\[\]) Method                                                   

fcSDK Documentation

GetHgbstElmObjID(String,String,String\[\]) Method

The title of the user-defined list (HGBST)

The title of the element whose objid to get

One or more element titles which define the level in the list to retrieve

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function GetHgbstElmObjID( _
   ByVal _listTitle_ As String, _
   ByVal _elementTitle_ As String, _
   ByVal ParamArray _elementTitles_() As String _
) As [Integer](#)

public [int](#) GetHgbstElmObjID( 
   string _listTitle_,
   string _elementTitle_,
   params string\[\] _elementTitles_
)

#### Parameters

_listTitle_

The title of the user-defined list (HGBST)

_elementTitle_

The title of the element whose objid to get

_elementTitles_

One or more element titles which define the level in the list to retrieve

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstElmObjID.md)