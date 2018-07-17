     GetGbstElmRankObjID Method (ListCache)                                                   

fcSDK Documentation

GetGbstElmRankObjID Method (ListCache)

The name of the GBST/application pop-up list

The rank of the element whose objid to retrieve

Gets the objid of the specified element by rank in the specified application pop-up list

Syntax

```vbnet
```csharp

'Declaration
 

Public Function GetGbstElmRankObjID( _
   ByVal _listTitle_ As String, _
   ByVal _elementRank_ As [Integer](#) _
) As [Integer](#)

public [int](#) GetGbstElmRankObjID( 
   string _listTitle_,
   [int](#) _elementRank_
)

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

_elementRank_

The rank of the element whose objid to retrieve

#### Return Value

The objid of the specified element

Remarks

If the no list exists with the specified _listTitle_, an exception will be thrown.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)