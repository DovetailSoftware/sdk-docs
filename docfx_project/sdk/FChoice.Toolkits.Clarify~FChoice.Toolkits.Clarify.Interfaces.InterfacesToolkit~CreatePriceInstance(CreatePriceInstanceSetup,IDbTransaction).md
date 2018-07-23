### CreatePriceInstance(CreatePriceInstanceSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates a Price Instance. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function CreatePriceInstance( _
   ByVal _setupParam_ As [CreatePriceInstanceSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreatePriceInstance( 
   [CreatePriceInstanceSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

You many not have two prices (in the same schedule for the same part and quantity) overlap or have the price's [StartDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup~StartDate.md) or [EndDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePriceInstanceSetup~EndDate.md) extend outside the span of the price program.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePriceInstance.md)