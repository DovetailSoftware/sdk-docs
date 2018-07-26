### UnlinkCRFromSolution(UnlinkCRFromSolutionSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Unlink CR from Solution. This overload takes a setup object and a database transaction.

Syntax

```vbnet
'Declaration

Public Overloads Function UnlinkCRFromSolution( _
   ByVal _setupParam_ As UnlinkCRFromSolutionSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult UnlinkCRFromSolution( 
   UnlinkCRFromSolutionSetup _setupParam_,
   IDbTransaction _transaction_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UnlinkCRFromSolution.md)