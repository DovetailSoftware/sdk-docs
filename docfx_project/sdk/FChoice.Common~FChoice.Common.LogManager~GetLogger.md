### GetLogger Method

GetLogger Method

Retrieves a logger for the given type name.

Retrieves a logger for the given logger or type name.

Overload List

| Overload | Description |
| --- | --- |
| [GetLogger(Type)](FChoice.Common~FChoice.Common.LogManager~GetLogger(Type).md) | Retrieves a logger for the given type name.   |
| [GetLogger(String)](FChoice.Common~FChoice.Common.LogManager~GetLogger(String).md) | Retrieves a logger for the given logger name.   |

Example

This example shows a variety of ways in which to create a logger. The reccommended way is to declare a static (**Shared** in Visual Basic) Logger member at the top of your class and use Reflection to get the current type as demonstrated. This way is reusable in that you can copy and paste it into the top of every class.

```csharp
// Reusable (cut-n-paste) declaration you can put at the top of every class (recommended). 
private static Logger log = LogManager.GetLogger( System.Reflection.MethodBase.GetCurrentMethod().DeclaringType );

// Will retieve a logger named the same as the full type name (i.e. "Your.Assembly.TypeName"). 
Logger log = LogManager.GetLogger( this.GetType() );

// Will retrieve a logger by a specific name (not recommended). 
Logger log = LogManager.GetLogger("some_unique_name");
```

```vbnet
' Reusable (cut-n-paste) declaration you can put at the top of every class (recommended).
Private Shared log As Logger = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType )

' Will retieve a logger named the same as the full type name (i.e. "Your.Assembly.TypeName").
Dim log As Logger = LogManager.GetLogger( this.GetType() )

' Will retrieve a logger by a specific name (not recommended).
Dim log As Logger = LogManager.GetLogger("some_unique_name")
```

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogManager Class](FChoice.Common~FChoice.Common.LogManager.md)  
[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)