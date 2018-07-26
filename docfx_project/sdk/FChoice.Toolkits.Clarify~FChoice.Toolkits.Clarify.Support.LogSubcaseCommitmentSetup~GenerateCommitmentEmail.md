### GenerateCommitmentEmail Property (LogSubcaseCommitmentSetup)

Specifies if the API should add the email notifications for the commitment time and prior warning time.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property GenerateCommitmentEmail As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool GenerateCommitmentEmail {get; set;}
```

#### Remarks

Base Clarify sends two emails each time a Commitment is logged. The first notifies the owner when the Commitment expires, and the second notifies the owner when the prior warning (if any) expires. 

To control what is sent in the Commitment email please see your Clarify documentation concerning the 'com_tmplte' record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogSubcaseCommitmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseCommitmentSetup.md)  
[LogSubcaseCommitmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseCommitmentSetup_members.md)