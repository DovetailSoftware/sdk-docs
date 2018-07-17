     CreateContractLineItem(CreateContractLineItemSetup) Method                                                   

fcSDK Documentation

CreateContractLineItem(CreateContractLineItemSetup) Method

Setup object for API invocation.

Used to create quote/contract line items. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateContractLineItem( _
   ByVal _setupParam_ As [CreateContractLineItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateContractLineItem( 
   [CreateContractLineItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the ContractLineItem.

Remarks

The API requires that a valid quote already exist, and that it have at least one valid schedule. In addition, the supplied part/revision must have a price defined for it in the schedule, or you must provide an override.

The API will create a line item, add it to the proper contract/quote, and adjust all of the totals. In addition, the schedule adjustments (if any) for the schedule of the line item will be recalculated, given the new schedule totals.

 The API does not do a few other items in the base GUI function. By and large, they are expected to be supplied with other API calls. For example, line item adjustments are not part of this API. If they are required, the line should be created, and then the adjustment should be applied. Parent/child line items are not provided for in the default API. Also, proration (ClearContracts) is currently hard-coded.  

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContractLineItem.md)  
[CreateContractLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md)