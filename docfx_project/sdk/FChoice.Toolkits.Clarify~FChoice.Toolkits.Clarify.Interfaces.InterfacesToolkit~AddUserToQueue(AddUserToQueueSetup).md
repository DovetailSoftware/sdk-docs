### AddUserToQueue(AddUserToQueueSetup) Method

Setup object for API invocation.

Add a User to a Queue. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AddUserToQueue( _
   ByVal _setupParam_ AddUserToQueueSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AddUserToQueue( 
   AddUserToQueueSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Queue the user was added to.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddUserToQueue.md)  
[AddUserToQueueSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddUserToQueueSetup.md)