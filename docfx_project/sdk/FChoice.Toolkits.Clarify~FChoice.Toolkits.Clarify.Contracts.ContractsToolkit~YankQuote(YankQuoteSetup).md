### YankQuote(YankQuoteSetup) Method

Setup object for API invocation.

Yank the Quote from its current location to a new owner's WipBin. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function YankQuote( _
   ByVal _setupParam_ As [YankQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.YankQuoteSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) YankQuote( 
   [YankQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.YankQuoteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The WipBin to place the Quote in may also be specified. This is augmented function from base Clarify, where the Quote is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~YankQuote.md)  
[YankQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.YankQuoteSetup.md)