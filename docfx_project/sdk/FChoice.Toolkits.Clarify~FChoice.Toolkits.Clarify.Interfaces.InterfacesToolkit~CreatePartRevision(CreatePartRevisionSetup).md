### CreatePartRevision(CreatePartRevisionSetup) Method

Setup object for API invocation.

Create a Part Revision (mod_level) This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CreatePartRevision( _
   ByVal _setupParam_ CreatePartRevisionSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreatePartRevision( 
   CreatePartRevisionSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PartRevision.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePartRevision.md)  
[CreatePartRevisionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartRevisionSetup.md)