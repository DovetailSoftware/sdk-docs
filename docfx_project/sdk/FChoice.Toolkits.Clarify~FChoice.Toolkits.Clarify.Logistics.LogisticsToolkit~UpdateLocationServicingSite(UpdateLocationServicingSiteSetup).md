     UpdateLocationServicingSite(UpdateLocationServicingSiteSetup) Method                                                   

fcSDK Documentation

UpdateLocationServicingSite(UpdateLocationServicingSiteSetup) Method

Setup object for API invocation.

Used to change the order of the locations servicing a site. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UpdateLocationServicingSite( _
   ByVal _setupParam_ As [UpdateLocationServicingSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdateLocationServicingSiteSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateLocationServicingSite( 
   [UpdateLocationServicingSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdateLocationServicingSiteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Role record.

Remarks

This API will give a new rank to the. All other ranks are changed as necessary.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdateLocationServicingSite.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdateLocationServicingSiteSetup", Caption="UpdateLocationServicingSiteSetup Class"**