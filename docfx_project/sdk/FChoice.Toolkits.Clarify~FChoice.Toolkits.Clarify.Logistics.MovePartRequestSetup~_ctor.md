     MovePartRequestSetup Constructor                                                   

fcSDK Documentation

MovePartRequestSetup Constructor

Part Request Detail Identifier

The new WipBin into which the PartRequest is to be moved.

Initializes a new instance of the MovePartRequestSetup class.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _newWipBin_ As String _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
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

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[MovePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup.md)  
[MovePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup_members.md)