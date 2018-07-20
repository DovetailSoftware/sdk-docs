### MovePartRequestSetup Constructor

Part Request Detail Identifier

The new WipBin into which the PartRequest is to be moved.

Initializes a new instance of the MovePartRequestSetup class.

Syntax

```vbnet
' Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _newWipBin_ As String _
)

[ConstructorIndexAttribute()]
public MovePartRequestSetup( 
   string _partRequestDetailIDNum_,
   string _newWipBin_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_newWipBin_

The new WipBin into which the PartRequest is to be moved.

Remarks

The specified part request detail must be open and the specified WipBin name must be valid for the current owner.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[MovePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup.md)  
[MovePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup_members.md)