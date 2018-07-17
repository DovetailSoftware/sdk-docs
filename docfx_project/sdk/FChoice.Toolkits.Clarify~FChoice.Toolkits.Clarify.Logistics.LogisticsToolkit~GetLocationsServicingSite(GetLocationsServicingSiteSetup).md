     GetLocationsServicingSite(GetLocationsServicingSiteSetup) Method                                                   

fcSDK Documentation

GetLocationsServicingSite(GetLocationsServicingSiteSetup) Method

Setup object for API invocation.

Returns a list of the locations (in the proper order) servicing this site. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function GetLocationsServicingSite( _
   ByVal _setupParam_ As [GetLocationsServicingSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteSetup.md) _
) As [GetLocationsServicingSiteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteResult.md)

public [GetLocationsServicingSiteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteResult.md) GetLocationsServicingSite( 
   [GetLocationsServicingSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [GetLocationsServicingSiteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteResult.md) object returned by the API method:

*   [InventoryLocationObjidList](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteResult~InventoryLocationObjidList.md) \- An array of Inventory Location objid's.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~GetLocationsServicingSite.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteSetup", Caption="GetLocationsServicingSiteSetup Class"**