### RemoveEmployeeFromAccountSetup Constructor

Username of the Employee to be removed from the Account.

Identifier for the Account the Employee will be removed from.

Employee Role to be removing from the Account

Initializes a new instance of the RemoveEmployeeFromAccountSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _userName_ As String, _
   ByVal _accountIDNum_ As String, _
   ByVal _roleName_ As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public RemoveEmployeeFromAccountSetup( 
   string _userName_,
   string _accountIDNum_,
   string _roleName_
)
```

#### Parameters

_userName_

Username of the Employee to be removed from the Account.

_accountIDNum_

Identifier for the Account the Employee will be removed from.

_roleName_

Employee Role to be removing from the Account

[!include[Requirements](../partials/requirements.md)]

#### Reference

[RemoveEmployeeFromAccountSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.RemoveEmployeeFromAccountSetup.md)  
[RemoveEmployeeFromAccountSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.RemoveEmployeeFromAccountSetup_members.md)