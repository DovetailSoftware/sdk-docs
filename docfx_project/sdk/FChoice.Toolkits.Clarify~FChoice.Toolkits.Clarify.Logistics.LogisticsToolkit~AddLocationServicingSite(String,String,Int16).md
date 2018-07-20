### AddLocationServicingSite(String,String,Int16) Method

The identifier of the Site that the inventory location is servicing

The name of the location that will be servicing the Site

The rank of this inventory location at the associated site

Used to relate sites to the inventory locations that service them. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function AddLocationServicingSite( _
   ByVal _siteIDNum_ As String, _
   ByVal _locationName_ As String, _
   ByVal _locationRank_ As Short _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddLocationServicingSite( 
   string _siteIDNum_,
   string _locationName_,
   short _locationRank_
)

#### Parameters

_siteIDNum_

The identifier of the Site that the inventory location is servicing

_locationName_

The name of the location that will be servicing the Site

_locationRank_

The rank of this inventory location at the associated site

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Role record.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AddLocationServicingSite.md)