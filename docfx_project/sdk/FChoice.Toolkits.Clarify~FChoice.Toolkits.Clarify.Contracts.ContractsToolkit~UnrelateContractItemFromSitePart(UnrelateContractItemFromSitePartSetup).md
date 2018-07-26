### UnrelateContractItemFromSitePart(UnrelateContractItemFromSitePartSetup) Method

Setup object for API invocation.

Used to unrelate a Site Part from a contract line item. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function UnrelateContractItemFromSitePart( _
   ByVal _setupParam_ UnrelateContractItemFromSitePartSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult UnrelateContractItemFromSitePart( 
   UnrelateContractItemFromSitePartSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The line item’s objid must be specified, along with the details for locating the site_part.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~UnrelateContractItemFromSitePart.md)  
[UnrelateContractItemFromSitePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UnrelateContractItemFromSitePartSetup.md)