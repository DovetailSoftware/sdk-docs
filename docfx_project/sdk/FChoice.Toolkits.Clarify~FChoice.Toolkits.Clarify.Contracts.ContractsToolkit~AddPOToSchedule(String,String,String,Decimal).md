     AddPOToSchedule(String,String,String,Decimal) Method                                                   

fcSDK Documentation

AddPOToSchedule(String,String,String,Decimal) Method

Contract Identifier.

Schedule Identifier.

Purchase Order Identifier.

The amount of the Purchase Order.

Used to add purchase orders to schedules of contracts. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AddPOToSchedule( _
   ByVal _contractIDNum_ As String, _
   ByVal _scheduleIDNum_ As String, _
   ByVal _poIDNum_ As String, _
   ByVal _poAmount_ As [Decimal](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddPOToSchedule( 
   string _contractIDNum_,
   string _scheduleIDNum_,
   string _poIDNum_,
   [decimal](#) _poAmount_
)

#### Parameters

_contractIDNum_

Contract Identifier.

_scheduleIDNum_

Schedule Identifier.

_poIDNum_

Purchase Order Identifier.

_poAmount_

The amount of the Purchase Order.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the PO.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PO.

Remarks

The PO number cannot be defined already for the schedule.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AddPOToSchedule.md)