     CreateQuoteLineItem(String,String,String,String,Int32,String,Int32) Method                                                   

fcSDK Documentation

CreateQuoteLineItem(String,String,String,String,Int32,String,Int32) Method

Quote/Contract Identifier.

The part number for this line item.

The domain of the part for this line item.

The revision of the part for this line item.

The number of units for this line item.

The name of the Price Schedule for this line item.

The objid of the parent line item.

Used to create a Quote/Contract line item. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateQuoteLineItem( _
   ByVal _contractIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _quantity_ As [Integer](#), _
   ByVal _priceSchedule_ As String, _
   ByVal _parentLineItemObjid_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateQuoteLineItem( 
   string _contractIDNum_,
   string _partNumber_,
   string _partDomain_,
   string _partRevision_,
   [int](#) _quantity_,
   string _priceSchedule_,
   [int](#) _parentLineItemObjid_
)

#### Parameters

_contractIDNum_

Quote/Contract Identifier.

_partNumber_

The part number for this line item.

_partDomain_

The domain of the part for this line item.

_partRevision_

The revision of the part for this line item.

_quantity_

The number of units for this line item.

_priceSchedule_

The name of the Price Schedule for this line item.

_parentLineItemObjid_

The objid of the parent line item.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the ContractItem.

Remarks

Requires that a valid quote already exist, and that it have at least one valid schedule. In addition, the supplied part/revision must have a price defined for it in the schedule, or you must provide an override.

The API will create a line item, add it to the proper contract/quote, and adjust all of the totals. In addition, the schedule adjustments (if any) for the schedule of the line item will be recalculated, given the new schedule totals.

 The API does not do a few other items in the base GUI function. By and large, they are expected to be supplied with other API calls. For example, line item adjustments are not part of this API. If they are required, the line should be created, and then the adjustment should be applied. Parent/child line items are not provided for in the default API. Also, proration (ClearContracts) is currently hard-coded.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateQuoteLineItem.md)