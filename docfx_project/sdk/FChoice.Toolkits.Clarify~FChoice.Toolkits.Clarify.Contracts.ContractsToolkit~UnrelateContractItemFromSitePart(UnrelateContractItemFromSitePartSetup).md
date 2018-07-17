     UnrelateContractItemFromSitePart(UnrelateContractItemFromSitePartSetup) Method                                                   

fcSDK Documentation

UnrelateContractItemFromSitePart(UnrelateContractItemFromSitePartSetup) Method

Setup object for API invocation.

Used to unrelate a Site Part from a contract line item. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UnrelateContractItemFromSitePart( _
   ByVal _setupParam_ As [UnrelateContractItemFromSitePartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UnrelateContractItemFromSitePartSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UnrelateContractItemFromSitePart( 
   [UnrelateContractItemFromSitePartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UnrelateContractItemFromSitePartSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The line item’s objid must be specified, along with the details for locating the site_part.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~UnrelateContractItemFromSitePart.md)  
[UnrelateContractItemFromSitePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UnrelateContractItemFromSitePartSetup.md)