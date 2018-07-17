     CreatePriceInstance Method (ContractsToolkit)                                                   

fcSDK Documentation

CreatePriceInstance Method (ContractsToolkit)

Used to create a new price instance for a support program. This overload takes a set of required parameters for the API.

Used to create a new price instance for a support program.

Overload List

| Overload | Description |
| --- | --- |
| [CreatePriceInstance(String,String,String,String,String,PriceInstanceType,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreatePriceInstance(String,String,String,String,String,PriceInstanceType,Int32).md) | Used to create a new price instance for a support program. This overload takes a set of required parameters for the API.   |
| [CreatePriceInstance(CreatePriceInstanceSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreatePriceInstance(CreatePriceInstanceSetup).md) | Used to create a new price instance for a support program. This overload takes a setup object.   |
| [CreatePriceInstance(CreatePriceInstanceSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreatePriceInstance(CreatePriceInstanceSetup,IDbTransaction).md) | Used to create a new price instance for a support program. This overload takes a setup object and a database transaction.   |

Remarks

You may specify the part for product based support programs, or leave it blank when creating price instances for either site or independent support programs.  If you do specify a part, you must include its domain and revision (mod level).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup.md)