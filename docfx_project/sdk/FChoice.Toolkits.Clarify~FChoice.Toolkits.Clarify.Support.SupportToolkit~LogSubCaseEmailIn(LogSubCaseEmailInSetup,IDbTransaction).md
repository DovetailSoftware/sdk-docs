﻿### LogSubCaseEmailIn(LogSubCaseEmailInSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates an email in log against a Subcase.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogSubCaseEmailIn( _
   ByVal _setup_ As LogSubCaseEmailInSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult LogSubCaseEmailIn( 
   LogSubCaseEmailInSetup _setup_,
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubCaseEmailIn.md)