### Ship Method

Causes the specified part request to be shipped.

This overload takes a set of required parameters for the API.

Causes the specified part request to be shipped.

#### Overload List

| Overload | Description |
| --- | --- |
| [Ship(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Ship(String).md) | Causes the specified part request to be shipped. This overload takes a set of required parameters for the API.   |
| [Ship(ShipSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Ship(ShipSetup).md) | Causes the specified part request to be shipped. This overload takes a setup object.   |
| [Ship(ShipSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Ship(ShipSetup,IDbTransaction).md) | Causes the specified part request to be shipped. This overload takes a setup object and a database transaction.   |

#### Remarks

By default, all the shipping information parameters will default to the Part Request Header's shipping site and contact information. 

If no status is provided, the default status will be used (for condition 'Shipped').

If no carrier name is provided, the dummy site will be used (objid of -2).

**NOTE**: This API will validate that the user has authority to make the status transition.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ShipSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ShipSetup.md)
