### GetGbstDefaultObjID Method (ListCache)

The name of the GBST/application pop-up list

Gets the objid of the default element for a given application pop-up list.

Syntax

```vbnet
' Declaration
Public Function GetGbstDefaultObjID( _
   ByVal _listTitle_ As String _
) As Integer

public int GetGbstDefaultObjID( 
   string _listTitle_
)

#### Parameters

_listTitle_

The name of the GBST/application pop-up list

#### Return Value

The objid of the default element for this list

Remarks

If the no list exists with the specified _listTitle_, an exception will be thrown.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)