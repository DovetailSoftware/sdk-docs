     ENABLE_BATCH Field                                                   

ENABLE_BATCH Field

The key to the [FCConfiguration](FChoice.Common~FChoice.Common.FCConfiguration.md) collection which contains the configured switch for enabling or disabling database query batching.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared ReadOnly ENABLE_BATCH As String

public static readonly string ENABLE_BATCH

#### Field Value

A key used by the FCConfiguration collection.

Remarks

Note that the value returned from the FCConfiguration collection using this key will override whatever the default setting of the database provider is. However, if the database provider does not support batching (e.g. Oracle), setting this value will not affect batching behavior.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ConfigValues Class](FChoice.Common~FChoice.Common.ConfigValues.md)  
[ConfigValues Members](FChoice.Common~FChoice.Common.ConfigValues_members.md)