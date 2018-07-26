### UpdatePartRevision(String,String,String) Method

Part number of the part

Domain of the part

Revision to create

Update a Part Revision (mod_level) This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function UpdatePartRevision( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partRevision_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdatePartRevision( 
   string _partNumber_,
   string _partDomain_,
   string _partRevision_
)
```

#### Parameters

_partNumber_

Part number of the part

_partDomain_

Domain of the part

_partRevision_

Revision to create

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PartRevision.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdatePartRevision.md)