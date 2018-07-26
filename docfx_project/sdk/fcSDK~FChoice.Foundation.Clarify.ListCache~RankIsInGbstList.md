### RankIsInGbstList Method (ListCache)

The name of the GBST/application pop-up list

The rank of the element to verify

Gets whether or not an element with the specified rank exists in an application pop-up list

Syntax

```vbnet
'Declaration

Public Function RankIsInGbstList( _
   ByVal _listTitle_ As String, _
   ByVal _rank_ As Integer _
) As Boolean
```

```csharp
public bool RankIsInGbstList( 
   string _listTitle_,
   int _rank_
)
```

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

_rank_

The rank of the element to verify

#### Return Value

Whether or not an element with the specified rank exists in an application pop-up list

Remarks

If no list with title _listTitle_ exists, false is returned. Otherwise, true or false is returned depending on whether an element with the specified _rank_ exists in the specified list.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)