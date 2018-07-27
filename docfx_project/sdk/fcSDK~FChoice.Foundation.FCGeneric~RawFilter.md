### RawFilter Property

Sets an optional WHERE clause constraint. (**WARNING:** See remarks for potential security implications)

#### Syntax

```vbnet
'Declaration

Public Property RawFilter As String
```

```csharp
public string RawFilter {get; set;}
```

#### Property Value

Returns an optional WHERE clause constraint.

#### Remarks

**WARNING**: Setting this property can expose your application to SQL injection attacks. Please [read this best practices guide](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnnetsec/html/SecNetch12.asp) published by Microsoft.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)