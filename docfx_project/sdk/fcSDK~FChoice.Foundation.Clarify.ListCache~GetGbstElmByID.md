### GetGbstElmByID Method (ListCache)

The name of the GBST/application pop-up list

The objid of the element to retrieve

Gets the value of an element with the specified objid in the specified application pop-up list

Syntax

```vbnet
' Declaration
Public Function GetGbstElmByID( _
   ByVal _listTitle_ As String, _
   ByVal _elmObjID_ As Integer _
) As String

public string GetGbstElmByID( 
   string _listTitle_,
   int _elmObjID_
)

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

_elmObjID_

The objid of the element to retrieve

#### Return Value

The value of the specified element

Remarks

If the no list exists with the specified _listTitle_, an exception will be thrown.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)