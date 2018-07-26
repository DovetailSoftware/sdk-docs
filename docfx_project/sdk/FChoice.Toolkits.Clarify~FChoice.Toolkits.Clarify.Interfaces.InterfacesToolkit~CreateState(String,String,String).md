### CreateState(String,String,String) Method

State name

Full name of the State

Name of the Country the State will belong to.

Create a State (Provence) and relate it to an existing Country. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateState( _
   ByVal _state_ As String, _
   ByVal _fullName_ As String, _
   ByVal _country_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateState( 
   string _state_,
   string _fullName_,
   string _country_
)
```

#### Parameters

_state_

State name

_fullName_

Full name of the State

_country_

Name of the Country the State will belong to.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the State.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateState.md)