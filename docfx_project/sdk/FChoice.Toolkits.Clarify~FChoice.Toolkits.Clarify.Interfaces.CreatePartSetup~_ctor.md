     CreatePartSetup Constructor                                                   

fcSDK Documentation

CreatePartSetup Constructor

Part Number for the part to create.

Domain for the part to create.

Number of warranty days for the part

Type of repair. One of "Repairable" or "Expendable"

Initializes a new instance of the CreatePartSetup class.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _warrantyDays_ As [Integer](#), _
   ByVal _repairType_ As [PartRepairType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRepairType.md) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public CreatePartSetup( 
   string _partNumber_,
   string _partDomain_,
   [int](#) _warrantyDays_,
   [PartRepairType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRepairType.md) _repairType_
)

#### Parameters

_partNumber_

Part Number for the part to create.

_partDomain_

Domain for the part to create.

_warrantyDays_

Number of warranty days for the part

_repairType_

Type of repair. One of "Repairable" or "Expendable"

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreatePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartSetup.md)  
[CreatePartSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartSetup_members.md)