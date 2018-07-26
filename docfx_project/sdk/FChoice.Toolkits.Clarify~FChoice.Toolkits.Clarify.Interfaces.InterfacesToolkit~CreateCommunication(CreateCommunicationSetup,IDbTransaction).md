### CreateCommunication(CreateCommunicationSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates a new Communication.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateCommunication( _
   ByVal _setup_ As CreateCommunicationSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateCommunication( 
   CreateCommunicationSetup _setup_,
   IDbTransaction _transaction_
)
```

#### Parameters

_setup_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateCommunication.md)