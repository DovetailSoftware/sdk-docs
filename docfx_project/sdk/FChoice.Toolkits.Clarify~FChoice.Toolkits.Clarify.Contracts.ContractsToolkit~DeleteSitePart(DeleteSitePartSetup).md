### DeleteSitePart(DeleteSitePartSetup) Method

Setup object for API invocation.

Used to delete a site_part in Clarify, and then unrelate the site_part from all other related records. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function DeleteSitePart( _
   ByVal _setupParam_ As [DeleteSitePartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.DeleteSitePartSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DeleteSitePart( 
   [DeleteSitePartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.DeleteSitePartSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~DeleteSitePart.md)  
[DeleteSitePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.DeleteSitePartSetup.md)