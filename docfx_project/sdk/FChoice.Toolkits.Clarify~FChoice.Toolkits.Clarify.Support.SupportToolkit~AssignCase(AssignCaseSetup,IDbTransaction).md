### AssignCase(AssignCaseSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Assign the Case to a new user. This overload takes a setup object and a database transaction.

Syntax

```vbnet
'Declaration

Public Overloads Function AssignCase( _
   ByVal _setupParam_ As AssignCaseSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult AssignCase( 
   AssignCaseSetup _setupParam_,
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

Remarks

The Case must be in the Open condition, and the user assigning the Case does not have to be the owner of the Case. In base Clarify, the assigner of a Case must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Case in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignCase.md)