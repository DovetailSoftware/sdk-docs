     GenerateCommitmentEmail Property (LogSubcaseCommitmentSetup)                                                   

fcSDK Documentation

GenerateCommitmentEmail Property (LogSubcaseCommitmentSetup)

Specifies if the API should add the email notifications for the commitment time and prior warning time.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property GenerateCommitmentEmail As Boolean

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public bool GenerateCommitmentEmail {get; set;}

Remarks

Base Clarify sends two emails each time a Commitment is logged. The first notifies the owner when the Commitment expires, and the second notifies the owner when the prior warning (if any) expires. 

To control what is sent in the Commitment email please see your Clarify documentation concerning the 'com_tmplte' record.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogSubcaseCommitmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseCommitmentSetup.md)  
[LogSubcaseCommitmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseCommitmentSetup_members.md)