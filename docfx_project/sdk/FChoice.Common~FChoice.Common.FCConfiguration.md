     FCConfiguration Class                                                   

FCConfiguration Class

The FCConfiguration class provides access to the application configuration and ensures that basic required configuration parameters are present.

Syntax

```vbnet
```csharp

'Declaration
 

Public NotInheritable Class FCConfiguration 

public sealed class FCConfiguration 

Remarks

Values stored in the collection can be modified and new values can be added and removed.

**NOTE:** changing required application configuration values like [ConfigValues.CONNECT_STRING](FChoice.Common~FChoice.Common.ConfigValues~CONNECT_STRING.md) may cause the current application to crash.

Inheritance Hierarchy

[System.Object](#)  
   **FChoice.Common.FCConfiguration**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

See Also

#### Reference

[FCConfiguration Members](FChoice.Common~FChoice.Common.FCConfiguration_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)