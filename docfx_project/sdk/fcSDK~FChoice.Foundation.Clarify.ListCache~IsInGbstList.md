### IsInGbstList Method (ListCache)

The name of the GBST/application pop-up list

The value of the element to verify

Gets whether or not the specified element value exists in a given application pop-up list

#### Syntax

```vbnet
'Declaration

Public Function IsInGbstList( _
   ByVal _listTitle_ As String, _
   ByVal _element_ As String _
) As Boolean
```

```csharp
public bool IsInGbstList( 
   string _listTitle_,
   string _element_
)
```

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

_element_

The value of the element to verify

#### Return Value

Whether not the specified element value exists in this application pop-up list

#### Remarks

If no list is found with the title of _listTitle_, or the value does not exist in this list, false is returned. Otherwise, true is returned.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)