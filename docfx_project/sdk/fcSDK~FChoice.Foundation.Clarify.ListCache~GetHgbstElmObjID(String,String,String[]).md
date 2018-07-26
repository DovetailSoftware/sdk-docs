### GetHgbstElmObjID(String,String,String\[\]) Method

The title of the user-defined list (HGBST)

The title of the element whose objid to get

One or more element titles which define the level in the list to retrieve

Syntax

```vbnet
'Declaration

Public Overloads Function GetHgbstElmObjID( _
   ByVal _listTitle_ As String, _
   ByVal _elementTitle_ As String, _
   ByVal ParamArray _elementTitles_() As String _
) As Integer
```

```csharp
public int GetHgbstElmObjID( 
   string _listTitle_,
   string _elementTitle_,
   params string[] _elementTitles_
)
```

#### Parameters

_listTitle_

The title of the user-defined list (HGBST)

_elementTitle_

The title of the element whose objid to get

_elementTitles_

One or more element titles which define the level in the list to retrieve

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstElmObjID.md)