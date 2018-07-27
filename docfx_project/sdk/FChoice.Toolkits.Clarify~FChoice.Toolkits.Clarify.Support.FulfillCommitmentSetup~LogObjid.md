### LogObjid Property

Log Objid of the log to be fulfilled.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property LogObjid As Integer
```

```csharp
[PropertyBitValueAttribute()]
public int LogObjid {get; set;}
```

#### Remarks

The commitment objid supplied must be for an open, unfulfilled commitment.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FulfillCommitmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.FulfillCommitmentSetup.md)  
[FulfillCommitmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.FulfillCommitmentSetup_members.md)