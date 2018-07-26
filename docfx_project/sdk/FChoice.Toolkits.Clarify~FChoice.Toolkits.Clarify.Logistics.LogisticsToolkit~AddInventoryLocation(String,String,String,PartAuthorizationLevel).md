### AddInventoryLocation(String,String,String,PartAuthorizationLevel) Method

Name of the inventory location to add

The name of the Capital GL account with which this inventory location is to be associated

The identifier of the Site with which the inventory location is to be associated

The part authorization level for this inventory location

Used to add inventory locations to the system.  

This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AddInventoryLocation( _
   ByVal _locationName_ As String, _
   ByVal _capitalGLAccount_ As String, _
   ByVal _siteIDNum_ As String, _
   ByVal _partAuthorizationLevel_ As PartAuthorizationLevel _
) As ToolkitResult
```

```csharp
public ToolkitResult AddInventoryLocation( 
   string _locationName_,
   string _capitalGLAccount_,
   string _siteIDNum_,
   PartAuthorizationLevel _partAuthorizationLevel_
)
```

#### Parameters

_locationName_

Name of the inventory location to add

_capitalGLAccount_

The name of the Capital GL account with which this inventory location is to be associated

_siteIDNum_

The identifier of the Site with which the inventory location is to be associated

_partAuthorizationLevel_

The part authorization level for this inventory location

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Location record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AddInventoryLocation.md)