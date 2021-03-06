﻿### Ship(String) Method

Part Request Detail Identifier

Causes the specified part request to be shipped.

This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function Ship( _
   ByVal _partRequestDetailIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult Ship( 
   string _partRequestDetailIDNum_
)
```

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the ship_parts record.

#### Remarks

By default, all the shipping information parameters will default to the Part Request Header's shipping site and contact information. 

If no status is provided, the default status will be used (for condition 'Shipped').

If no carrier name is provided, the dummy site will be used (objid of -2).

**NOTE**: This API will validate that the user has authority to make the status transition.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Ship.md)