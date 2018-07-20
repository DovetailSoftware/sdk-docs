### Instance Property (ClarifyApplication)

Returns the singleton instance of ClarifyApplication if initialized.

Syntax

```vbnet
' Declaration

Public Shared ReadOnly Property Instance As [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)

public static [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) Instance {get;}

#### Property Value

The singleton instance of ClarifyApplication if initialized.

Exceptions

| Exception | Description |
| --- | --- |
| [FoundationException](fcSDK~FChoice.Foundation.FoundationException.md) | The application is not yet initialized. Call ClarifyApplication.Initialize first. |

Remarks

If not already initialized, an exception will be thrown. First call [Initialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)