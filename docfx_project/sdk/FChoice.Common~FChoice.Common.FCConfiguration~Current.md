### Current Property

Gets or sets the current configuration settings or null if none are currently configured.

Syntax

```vbnet
' Declaration

Public Shared Property Current As NameValueCollection

public static NameValueCollection Current {get; set;}

#### Property Value

The current configuration settings.

Remarks

If none are loaded, call [LoadEnvironmentSettings](FChoice.Common~FChoice.Common.FCConfiguration~LoadEnvironmentSettings.md) to load values.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCConfiguration Class](FChoice.Common~FChoice.Common.FCConfiguration.md)  
[FCConfiguration Members](FChoice.Common~FChoice.Common.FCConfiguration_members.md)