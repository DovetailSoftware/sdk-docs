     NewStatus Property (ChangeCRStatusSetup)                                                   

fcSDK Documentation

NewStatus Property (ChangeCRStatusSetup)

The new status for the Change Request. If not set, the default status is used.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property NewStatus As String

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public string NewStatus {get; set;}

Remarks

The condition of the new status for the CR **must** match the CR's current condition.

You cannot use this API to change the condition of a CR. To change the condition of the CR you need to use the proper API: [FixCR](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~FixCR.md), [CloseCR](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CloseCR.md), [ReopenCR](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ReopenCR.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ChangeCRStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ChangeCRStatusSetup.md)  
[ChangeCRStatusSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ChangeCRStatusSetup_members.md)