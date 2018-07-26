### DeleteLocationServicingSite(String,String) Method

Identifier of the Site that the inventory location was servicing

The inventory location being removed

Used to remove the relationship between a site and a location servicing it. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function DeleteLocationServicingSite( _
   ByVal _siteIDNum_ As String, _
   ByVal _locationName_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult DeleteLocationServicingSite( 
   string _siteIDNum_,
   string _locationName_
)
```

#### Parameters

_siteIDNum_

Identifier of the Site that the inventory location was servicing

_locationName_

The inventory location being removed

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Role record.

Remarks

As a result of a call to this API, all of the other locations that service this site will have their ranks changed as necessary.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~DeleteLocationServicingSite.md)