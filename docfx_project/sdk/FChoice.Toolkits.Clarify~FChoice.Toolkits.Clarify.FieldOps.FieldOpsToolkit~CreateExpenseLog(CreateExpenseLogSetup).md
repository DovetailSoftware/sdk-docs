### CreateExpenseLog(CreateExpenseLogSetup) Method

Setup object for API invocation.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateExpenseLog( _
   ByVal _setupParam_ As CreateExpenseLogSetup _
) As CreateExpenseLogResult
```

```csharp
public CreateExpenseLogResult CreateExpenseLog( 
   CreateExpenseLogSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the CreateExpenseLogResult object returned by the API method:

*   Objid \- The Objid of the ExpenseLog.
*   OnsiteLogObjid \- The Objid of the OnsiteLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateExpenseLog.md)  
[CreateExpenseLogSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateExpenseLogSetup.md)