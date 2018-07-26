### LogCaseEmailIn(LogCaseEmailInSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates an email in log against a Case.

Syntax

```vbnet
'Declaration

Public Overloads Function LogCaseEmailIn( _
   ByVal _setup_ As LogCaseEmailInSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult LogCaseEmailIn( 
   LogCaseEmailInSetup _setup_,
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

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmailIn.md)