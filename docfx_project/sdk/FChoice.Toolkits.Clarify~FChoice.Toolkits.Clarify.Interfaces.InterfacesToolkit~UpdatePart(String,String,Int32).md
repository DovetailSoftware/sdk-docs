### UpdatePart(String,String,Int32) Method

Part number for the part to update

Domain for the part to update.

Number of warranty days for the part

Update a Part. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function UpdatePart( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _warrantyDays_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdatePart( 
   string _partNumber_,
   string _partDomain_,
   int _warrantyDays_
)
```

#### Parameters

_partNumber_

Part number for the part to update

_partDomain_

Domain for the part to update.

_warrantyDays_

Number of warranty days for the part

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Part.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdatePart.md)