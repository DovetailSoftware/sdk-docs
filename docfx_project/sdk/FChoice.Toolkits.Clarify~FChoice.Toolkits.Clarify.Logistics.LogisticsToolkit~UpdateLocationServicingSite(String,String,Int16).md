### UpdateLocationServicingSite(String,String,Int16) Method

Identifier of the Site that the inventory location is servicing

Name of the inventory location

The rank of this inventory location at the associated site

Used to change the order of the locations servicing a site. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UpdateLocationServicingSite( _
   ByVal _siteIDNum_ As String, _
   ByVal _locationName_ As String, _
   ByVal _locationRank_ As Short _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateLocationServicingSite( 
   string _siteIDNum_,
   string _locationName_,
   short _locationRank_
)
```

#### Parameters

_siteIDNum_

Identifier of the Site that the inventory location is servicing

_locationName_

Name of the inventory location

_locationRank_

The rank of this inventory location at the associated site

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Role record.

#### Remarks

This API will give a new rank to the. All other ranks are changed as necessary.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdateLocationServicingSite.md)