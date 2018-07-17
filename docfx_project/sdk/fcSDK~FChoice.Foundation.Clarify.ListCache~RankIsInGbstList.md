     RankIsInGbstList Method (ListCache)                                                   

fcSDK Documentation

RankIsInGbstList Method (ListCache)

The name of the GBST/application pop-up list

The rank of the element to verify

Gets whether or not an element with the specified rank exists in an application pop-up list

Syntax

```vbnet
```csharp

'Declaration
 

Public Function RankIsInGbstList( _
   ByVal _listTitle_ As String, _
   ByVal _rank_ As [Integer](#) _
) As Boolean

public bool RankIsInGbstList( 
   string _listTitle_,
   [int](#) _rank_
)

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

_rank_

The rank of the element to verify

#### Return Value

Whether or not an element with the specified rank exists in an application pop-up list

Remarks

If no list with title _listTitle_ exists, false is returned. Otherwise, true or false is returned depending on whether an element with the specified _rank_ exists in the specified list.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)