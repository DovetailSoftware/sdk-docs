     GetGbstElmObjID Method (ListCache)                                                   

fcSDK Documentation

GetGbstElmObjID Method (ListCache)

The name of the GBST/application pop-up list

The title of the element whose objid to retrieve

Gets the objid of the specified element in the specified application pop-up list

Syntax

```vbnet
```csharp

'Declaration
 

Public Function GetGbstElmObjID( _
   ByVal _listTitle_ As String, _
   ByVal _elementTitle_ As String _
) As [Integer](#)

public [int](#) GetGbstElmObjID( 
   string _listTitle_,
   string _elementTitle_
)

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

_elementTitle_

The title of the element whose objid to retrieve

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