### DeleteLocationServicingSite(DeleteLocationServicingSiteSetup) Method

Setup object for API invocation.

Used to remove the relationship between a site and a location servicing it. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DeleteLocationServicingSite( _
   ByVal _setupParam_ DeleteLocationServicingSiteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DeleteLocationServicingSite( 
   DeleteLocationServicingSiteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Role record.

#### Remarks

As a result of a call to this API, all of the other locations that service this site will have their ranks changed as necessary.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~DeleteLocationServicingSite.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.DeleteLocationServicingSiteSetup", Caption="DeleteLocationServicingSiteSetup Class"**