     SetPartStockingLevel(SetPartStockingLevelSetup) Method                                                   

fcSDK Documentation

SetPartStockingLevel(SetPartStockingLevelSetup) Method

Setup object for API invocation.

Creates a part restocking authorization level. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function SetPartStockingLevel( _
   ByVal _setupParam_ As [SetPartStockingLevelSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetPartStockingLevelSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) SetPartStockingLevel( 
   [SetPartStockingLevelSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetPartStockingLevelSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Part Authorization record.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~SetPartStockingLevel.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetPartStockingLevelSetup", Caption="SetPartStockingLevelSetup Class"**