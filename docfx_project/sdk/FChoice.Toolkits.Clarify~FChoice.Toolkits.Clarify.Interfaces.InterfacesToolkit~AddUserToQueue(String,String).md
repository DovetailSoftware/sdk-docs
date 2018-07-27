### AddUserToQueue(String,String) Method

Name of the Queue to which the User will be added.

Username of the user being added to the Queue.

Add a User to a Queue. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AddUserToQueue( _
   ByVal _queue_ As String, _
   ByVal _userName_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AddUserToQueue( 
   string _queue_,
   string _userName_
)
```

#### Parameters

_queue_

Name of the Queue to which the User will be added.

_userName_

Username of the user being added to the Queue.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Queue the user was added to.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddUserToQueue.md)