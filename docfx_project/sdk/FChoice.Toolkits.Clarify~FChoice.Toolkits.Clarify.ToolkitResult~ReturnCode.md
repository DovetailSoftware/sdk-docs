### ReturnCode Property

Return code of the API call.

#### Syntax

```vbnet
'Declaration

Public Property ReturnCode As Short
```

```csharp
public short ReturnCode {get; set;}
```

#### Property Value

Will usually be zero or a negative number representing an error condition.

#### Remarks

This property is provided primarily for compatibility with previous Toolkit coding practices that do not use structured error handling.

This value will always be zero unless an error occurred. However, if the application is using [FCFL.Net Compatibility](fcfl_html/fcapp_overview.md) with [Session.ThrowErrors](fcfl_html/ThrowErrors.md) set to **false** a non-zero result can occur. **Note**: _It is recommended that you do not set ThrowErrors to false and use structured error handling via try/catch statements._

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ToolkitResult Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)  
[ToolkitResult Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult_members.md)