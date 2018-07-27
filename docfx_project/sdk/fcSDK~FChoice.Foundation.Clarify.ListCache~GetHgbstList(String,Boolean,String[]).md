### GetHgbstList(String,Boolean,String\[\]) Method

The title of the user-defined list (HGBST)

An optional list of element titles specifying the level in the user-defined list to retrieve

#### Syntax

```vbnet
'Declaration

Public Overloads Function GetHgbstList( _
   ByVal _listTitle_ As String, _
   ByVal _includeInactive_ As Boolean, _
   ByVal ParamArray _elementTitles_() As String _
) As IHierarchicalStringElementCollection
```

```csharp
public IHierarchicalStringElementCollection GetHgbstList( 
   string _listTitle_,
   bool _includeInactive_,
   params string[] _elementTitles_
)
```

#### Parameters

_listTitle_

The title of the user-defined list (HGBST)

_includeInactive_

_elementTitles_

An optional list of element titles specifying the level in the user-defined list to retrieve

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstList.md)