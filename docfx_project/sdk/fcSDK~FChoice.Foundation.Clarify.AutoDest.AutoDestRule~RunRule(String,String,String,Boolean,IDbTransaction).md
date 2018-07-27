### RunRule(String,String,String,Boolean,IDbTransaction) Method

#### Syntax

```vbnet
'Declaration

Public Overloads Shared Function RunRule( _
   ByVal _ruleTitle_ As String, _
   ByVal _ruleText_ As String, _
   ByVal _rootObjectId_ As String, _
   ByRef _isAutoDispatch_ As Boolean, _
   ByVal _transaction_ As IDbTransaction _
) As String()
```

```csharp
public static string[] RunRule( 
   string _ruleTitle_,
   string _ruleText_,
   string _rootObjectId_,
   out bool _isAutoDispatch_,
   IDbTransaction _transaction_
)
```

#### Parameters

_ruleTitle_

_ruleText_

_rootObjectId_

_isAutoDispatch_

_transaction_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[AutoDestRule Class](fcSDK~FChoice.Foundation.Clarify.AutoDest.AutoDestRule.md)  
[AutoDestRule Members](fcSDK~FChoice.Foundation.Clarify.AutoDest.AutoDestRule_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.AutoDest.AutoDestRule~RunRule.md)