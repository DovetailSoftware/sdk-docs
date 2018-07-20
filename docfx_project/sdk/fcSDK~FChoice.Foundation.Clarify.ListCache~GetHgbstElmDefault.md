### GetHgbstElmDefault Method (ListCache)

The title of the user-defined list (HGBST)

One or more element titles which define the level in the list to retrieve

Gets the title of the default element for the given level in a user-defined list (HGBST).

Syntax

```vbnet
' Declaration

Public Function GetHgbstElmDefault( _
   ByVal _listTitle_ As String, _
   ByVal ParamArray _elementTitles_() As String _
) As String

public string GetHgbstElmDefault( 
   string _listTitle_,
   params string[] _elementTitles_
)

#### Parameters

_listTitle_

The title of the user-defined list (HGBST)

_elementTitles_

One or more element titles which define the level in the list to retrieve

#### Return Value

The title of the default element for the given level in the specified user-defined list

Remarks

If the specified _listTitle_ or any of the elements specified _elementTitles_ does not exist, an exception will be thrown.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)