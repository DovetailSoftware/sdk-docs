### CreatePartRequestHeader(CreatePartRequestHeaderSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to create a new part request header.

This overload takes a setup object and a database transaction.

Syntax

```vbnet
'Declaration

Public Overloads Function CreatePartRequestHeader( _
   ByVal _setupParam_ As CreatePartRequestHeaderSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult CreatePartRequestHeader( 
   CreatePartRequestHeaderSetup _setupParam_,
   IDbTransaction _transaction_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

If using the [CreatePartRequestHeaderSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup.md) variant of this API, and if the [CaseIDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup~CaseIDNum.md) property on the [CreatePartRequestHeaderSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup.md) object is set to a value, and there is a dash ("-") in the identifier, it will be assumed that it is a subcase identifier. Otherwise, it will be treated as a case identifier.

To create a Part Request Header for a case or subcase, without respect for dashes ("-") in the case/subcase identifier, see the [CreatePartRequestHeaderCase](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderCase.md) or the [CreatePartRequestHeaderSubcase](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderSubcase.md) APIs respectively.

**NOTE**: If you have one or more dashes ("-") in your case identifier numbering scheme, you **MUST** use one of the two CreatePartRequestHeaderCase/Subcase variants. Do not use this API (CreatePartRequestHeader) as it will mistakenly identify every case identifier as a subcase.

**NOTE**: The [ContractObjId](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup~ContractObjid.md) property on the [CreatePartRequestHeaderSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup.md) object should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeader.md)