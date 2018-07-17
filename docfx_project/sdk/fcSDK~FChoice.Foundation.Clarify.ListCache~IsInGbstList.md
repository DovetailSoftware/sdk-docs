     IsInGbstList Method (ListCache)                                                   

fcSDK Documentation

IsInGbstList Method (ListCache)

The name of the GBST/application pop-up list

The value of the element to verify

Gets whether or not the specified element value exists in a given application pop-up list

Syntax

```vbnet
```csharp

'Declaration
 

Public Function IsInGbstList( _
   ByVal _listTitle_ As String, _
   ByVal _element_ As String _
) As Boolean

public bool IsInGbstList( 
   string _listTitle_,
   string _element_
)

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

_element_

The value of the element to verify

#### Return Value

Whether not the specified element value exists in this application pop-up list

Remarks

If no list is found with the title of _listTitle_, or the value does not exist in this list, false is returned. Otherwise, true is returned.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)