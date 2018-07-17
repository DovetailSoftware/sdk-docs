     MovePartRequest(MovePartRequestSetup) Method                                                   

fcSDK Documentation

MovePartRequest(MovePartRequestSetup) Method

Setup object for API invocation.

Move the PartRequest from one WipBin to another WipBin. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function MovePartRequest( _
   ByVal _setupParam_ As [MovePartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) MovePartRequest( 
   [MovePartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the PartRequest, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~MovePartRequest.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.MovePartRequestSetup", Caption="MovePartRequestSetup Class"**