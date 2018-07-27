### Queue Property (CreateCRSetup)

Queue where the CR will be dispatched.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Queue As String
```

```csharp
[PropertyBitValueAttribute()]
public string Queue {get; set;}
```

#### Remarks

If not set, the CR will be located in the user's default WipBin.

If set, a timebomb will be created for the Dispatch operation.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup.md)  
[CreateCRSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup_members.md)