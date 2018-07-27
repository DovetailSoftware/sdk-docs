### GetLocationsServicingSite(String) Method

Identifier of the Site that the inventory locations are servicing

Returns a list of the locations (in the proper order) servicing this site. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function GetLocationsServicingSite( _
   ByVal _siteIDNum_ As String _
) As GetLocationsServicingSiteResult
```

```csharp
public GetLocationsServicingSiteResult GetLocationsServicingSite( 
   string _siteIDNum_
)
```

#### Parameters

_siteIDNum_

Identifier of the Site that the inventory locations are servicing

#### Return Value

The following values are populated in the GetLocationsServicingSiteResult object returned by the API method:

*   InventoryLocationObjidList \- An array of Inventory Location objid's.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~GetLocationsServicingSite.md)