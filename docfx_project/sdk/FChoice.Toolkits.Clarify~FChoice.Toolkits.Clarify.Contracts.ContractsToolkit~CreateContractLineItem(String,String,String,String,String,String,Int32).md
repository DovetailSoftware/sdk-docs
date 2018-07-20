### CreateContractLineItem(String,String,String,String,String,String,Int32) Method

Contract Identifier.

The part number for the Line Item.

The domain of the part for the Line Item.

The revision of the part for the Line Item.

Name of the schedule from the Contract to put the Line Item on.

The serial number of the part for the Line Item.

The objid of the parent Line Item.

Used to create quote/contract line items. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function CreateContractLineItem( _
   ByVal _contractIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _priceSchedule_ As String, _
   ByVal _serialNumber_ As String, _
   ByVal _parentLineItemObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateContractLineItem( 
   string _contractIDNum_,
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   string _priceSchedule_,
   string _serialNumber_,
   int _parentLineItemObjid_
)
```

#### Parameters

_contractIDNum_

Contract Identifier.

_partNumber_

The part number for the Line Item.

_partDomain_

The domain of the part for the Line Item.

_partRevision_

The revision of the part for the Line Item.

_priceSchedule_

Name of the schedule from the Contract to put the Line Item on.

_serialNumber_

The serial number of the part for the Line Item.

_parentLineItemObjid_

The objid of the parent Line Item.

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the ContractLineItem.

Remarks

The API requires that a valid quote already exist, and that it have at least one valid schedule. In addition, the supplied part/revision must have a price defined for it in the schedule, or you must provide an override.

The API will create a line item, add it to the proper contract/quote, and adjust all of the totals. In addition, the schedule adjustments (if any) for the schedule of the line item will be recalculated, given the new schedule totals.

 The API does not do a few other items in the base GUI function. By and large, they are expected to be supplied with other API calls. For example, line item adjustments are not part of this API. If they are required, the line should be created, and then the adjustment should be applied. Parent/child line items are not provided for in the default API. Also, proration (ClearContracts) is currently hard-coded.  

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContractLineItem.md)