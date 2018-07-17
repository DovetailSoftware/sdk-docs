     CreatePriceInstance(CreatePriceInstanceSetup) Method                                                   

fcSDK Documentation

CreatePriceInstance(CreatePriceInstanceSetup) Method

Setup object for API invocation.

Used to create a new price instance for a support program. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreatePriceInstance( _
   ByVal _setupParam_ As [CreatePriceInstanceSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreatePriceInstance( 
   [CreatePriceInstanceSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Price Instance record.

Remarks

You may specify the part for product based support programs, or leave it blank when creating price instances for either site or independent support programs.  If you do specify a part, you must include its domain and revision (mod level).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreatePriceInstance.md)  
[CreatePriceInstanceSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreatePriceInstanceSetup.md)