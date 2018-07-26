### NewStatus Property (ChangeCRStatusSetup)

The new status for the Change Request. If not set, the default status is used.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property NewStatus As String
```

```csharp
[PropertyBitValueAttribute()]
public string NewStatus {get; set;}
```

#### Remarks

The condition of the new status for the CR **must** match the CR's current condition.

You cannot use this API to change the condition of a CR. To change the condition of the CR you need to use the proper API: [FixCR](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~FixCR.md), [CloseCR](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CloseCR.md), [ReopenCR](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ReopenCR.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ChangeCRStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ChangeCRStatusSetup.md)  
[ChangeCRStatusSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ChangeCRStatusSetup_members.md)