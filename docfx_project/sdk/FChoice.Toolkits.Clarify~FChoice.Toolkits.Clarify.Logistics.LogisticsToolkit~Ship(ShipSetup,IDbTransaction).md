﻿### Ship(ShipSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Causes the specified part request to be shipped.

This overload takes a setup object and a database transaction.

#### Syntax

```vbnet
'Declaration

Public Overloads Function Ship( _
   ByVal _setupParam_ As ShipSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult Ship( 
   ShipSetup _setupParam_,
   IDbTransaction _transaction_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the ship_parts record.

#### Remarks

By default, all the shipping information parameters will default to the Part Request Header's shipping site and contact information. 

If no status is provided, the default status will be used (for condition 'Shipped').

If no carrier name is provided, the dummy site will be used (objid of -2).

**NOTE**: This API will validate that the user has authority to make the status transition.

Example

[**Developer Walkthrough - Transaction Support**](../articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Ship.md)