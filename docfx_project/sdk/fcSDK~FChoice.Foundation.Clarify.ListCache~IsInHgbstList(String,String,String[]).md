### IsInHgbstList(String,String,String\[\]) Method

The title of the user-defined list (HGBST)

The title of the element to verify

An optional list of element titles that defines what level in the user-defined list to search

#### Syntax

```vbnet
'Declaration

Public Overloads Function IsInHgbstList( _
   ByVal _listTitle_ As String, _
   ByVal _elementTitle_ As String, _
   ByVal ParamArray _elementTitles_() As String _
) As Boolean
```

```csharp
public bool IsInHgbstList( 
   string _listTitle_,
   string _elementTitle_,
   params string[] _elementTitles_
)
```

#### Parameters

_listTitle_

The title of the user-defined list (HGBST)

_elementTitle_

The title of the element to verify

_elementTitles_

An optional list of element titles that defines what level in the user-defined list to search

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ListCache~IsInHgbstList.md)