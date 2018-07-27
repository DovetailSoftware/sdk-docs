### UpdateSchedule(String,String) Method

Contract Identifier.

Schedule Identifier.

Used to update a contract schedule. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UpdateSchedule( _
   ByVal _contractIDNum_ As String, _
   ByVal _scheduleIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateSchedule( 
   string _contractIDNum_,
   string _scheduleIDNum_
)
```

#### Parameters

_contractIDNum_

Contract Identifier.

_scheduleIDNum_

Schedule Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The contract ID must be specified, and the ID of the schedule is also specified. You may specify the bill-to or ship-to site, the price program, and the code list values. In addition, you may specify a variety of dates.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~UpdateSchedule.md)