### RelateContractItemToSitePart(RelateContractItemToSitePartSetup) Method

Setup object for API invocation.

Used to relate (or unrelate) a Site Part from a contract line item. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function RelateContractItemToSitePart( _
   ByVal _setupParam_ RelateContractItemToSitePartSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult RelateContractItemToSitePart( 
   RelateContractItemToSitePartSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The line item’s objid is specified, along with the details for locating the site_part.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RelateContractItemToSitePart.md)  
[RelateContractItemToSitePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.RelateContractItemToSitePartSetup.md)