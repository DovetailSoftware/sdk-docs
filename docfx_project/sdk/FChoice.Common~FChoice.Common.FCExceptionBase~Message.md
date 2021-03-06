﻿### Message Property (FCExceptionBase)

Gets a message that describes the current exception.

#### Syntax

```vbnet
'Declaration

Public Overrides ReadOnly Property Message As String
```

```csharp
public override string Message {get;}
```

#### Property Value

The error message that explains the reason for the exception, or an empty string("").

#### Remarks

FCExceptionBase will first use the custom [IErrorMessageProvider](FChoice.Common~FChoice.Common.IErrorMessageProvider.md) that was set using the [SetMessageProvider](FChoice.Common~FChoice.Common.FCExceptionBase~SetMessageProvider.md) method. If no custom message provider is specified, FCExceptionBase will then call the protected GetErrorMessageFormat method which can be overridden by derived classes. This method will, by default, attempt to load a full message string from an embedded resource in the current class' assembly manifest. If none is present, then FCExceptionBase will simply return the [ErrorMessageID](FChoice.Common~FChoice.Common.FCExceptionBase~ErrorMessageID.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCExceptionBase Class](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
[FCExceptionBase Members](FChoice.Common~FChoice.Common.FCExceptionBase_members.md)  
**Base Implementation in Message**