     Instance Property (PerfManager)                                                   

Instance Property (PerfManager)

Retreives a reference to the singleton instance of PerfManager

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared ReadOnly Property Instance As [PerfManager](FChoice.Common~FChoice.Common.PerfManager.md)

public static [PerfManager](FChoice.Common~FChoice.Common.PerfManager.md) Instance {get;}

#### Property Value

A reference to the singleton instance of PerfManager

Remarks

Most of the methods on PerfManager are instance methods and require a reference to a specific instance. There is only one singleton instance of PerfManager available. Use this property to retrieve a reference to it.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[PerfManager Class](FChoice.Common~FChoice.Common.PerfManager.md)  
[PerfManager Members](FChoice.Common~FChoice.Common.PerfManager_members.md)