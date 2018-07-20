### DataRestrictionsEnabled Property (ClarifyApplication)

Gets whether or not First Choice Data Restriction technology is enabled for this Clarify database.

Syntax

```vbnet
'Declaration

Public ReadOnly Property DataRestrictionsEnabled As Boolean
```

```csharp
public bool DataRestrictionsEnabled {get;}
```

#### Property Value

Whether or not First Choice Data Restriction technology is enabled for this Clarify database.

Remarks

When ClarifyApplication is initializing, it determines whether the data restriction tables and configuration is loaded and will set this value to true, otherwise it is always false.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)