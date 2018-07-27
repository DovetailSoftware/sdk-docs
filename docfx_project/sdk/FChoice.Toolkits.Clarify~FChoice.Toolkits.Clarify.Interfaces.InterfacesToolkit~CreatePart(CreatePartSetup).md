### CreatePart(CreatePartSetup) Method

Setup object for API invocation.

Create a Part. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreatePart( _
   ByVal _setupParam_ CreatePartSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreatePart( 
   CreatePartSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Part.

#### Remarks

Just calling this API will **NOT** cause the part to be visible in Clarify. There must be at least one [Part Revision](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePartRevision.md) present to view a Part.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePart.md)  
[CreatePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartSetup.md)