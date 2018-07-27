### GetHgbstElmDefaultElement(String,String\[\]) Method

The title of the user-defined list (HGBST)

One or more element titles which define the level in the list to retrieve

#### Syntax

```vbnet
'Declaration

Public Overloads Function GetHgbstElmDefaultElement( _
   ByVal _listTitle_ As String, _
   ByVal ParamArray _elementTitles_() As String _
) As IHierarchicalStringElement
```

```csharp
public IHierarchicalStringElement GetHgbstElmDefaultElement( 
   string _listTitle_,
   params string[] _elementTitles_
)
```

#### Parameters

_listTitle_

The title of the user-defined list (HGBST)

_elementTitles_

One or more element titles which define the level in the list to retrieve

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstElmDefaultElement.md)