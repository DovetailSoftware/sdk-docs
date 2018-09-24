### GetLocationsServicingSite(GetLocationsServicingSiteSetup) Method

Setup object for API invocation.

Returns a list of the locations (in the proper order) servicing this site. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function GetLocationsServicingSite( _
   ByVal _setupParam_ As GetLocationsServicingSiteSetup _
) As GetLocationsServicingSiteResult
```

```csharp
public GetLocationsServicingSiteResult GetLocationsServicingSite(
   GetLocationsServicingSiteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the GetLocationsServicingSiteResult object returned by the API method:

*   InventoryLocationObjidList \- An array of Inventory Location objid's.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~GetLocationsServicingSite.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteSetup.md)
