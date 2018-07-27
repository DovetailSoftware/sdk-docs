### ErrorMessageID Property

Gets the message identifier for this exception.

#### Syntax

```vbnet
'Declaration

Public ReadOnly Property ErrorMessageID As String
```

```csharp
public string ErrorMessageID {get;}
```

#### Property Value

The message identifier for this exception.

#### Remarks

The error message identifier is used by FCExceptionBase to look up actual user-friendly, localized and/or implementation-customized messages. This is the key used to look up a resource string.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCExceptionBase Class](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
[FCExceptionBase Members](FChoice.Common~FChoice.Common.FCExceptionBase_members.md)