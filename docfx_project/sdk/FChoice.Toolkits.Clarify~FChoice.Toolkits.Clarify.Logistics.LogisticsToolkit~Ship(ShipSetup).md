     Ship(ShipSetup) Method                                                   

fcSDK Documentation

Ship(ShipSetup) Method

Setup object for API invocation.

Causes the specified part request to be shipped.

This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function Ship( _
   ByVal _setupParam_ As [ShipSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ShipSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) Ship( 
   [ShipSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ShipSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the ship_parts record.

Remarks

By default, all the shipping information parameters will default to the Part Request Header's shipping site and contact information. 

If no status is provided, the default status will be used (for condition 'Shipped').

If no carrier name is provided, the dummy site will be used (objid of -2).

**NOTE**: This API will validate that the user has authority to make the status transition.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Ship.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ShipSetup", Caption="ShipSetup Class"**