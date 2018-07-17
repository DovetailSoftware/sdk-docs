     GetDBDate Method (DbProvider)                                                   

GetDBDate Method (DbProvider)

Executes a statement against the database to retrieve the current date/time on the database

Syntax

```vbnet
```csharp

'Declaration
 

Public MustOverride Function GetDBDate() As [Date](#)

public abstract [DateTime](#) GetDBDate()

#### Return Value

The current date and time on the database server

Remarks

The date and time returned by this method will be in the database's time zone. If the application is configured for a different time zone, conversion must be done manually. For information on performing time zone conversions using **FCFL.NET**, please see the following methods on the [FCSession](FChoice.Foundation~FChoice.Foundation.FCSession.md) class: [ChangeDate](FChoice.Foundation~FChoice.Foundation.FCSession~ConvertDate.md), [ConvertFromLocalToServerDate](FChoice.Foundation~FChoice.Foundation.FCSession~ConvertFromLocalToServerDate.md), and [ConvertFromServerToLocalDate](FChoice.Foundation~FChoice.Foundation.FCSession~ConvertFromLocalToServerDate.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
**FCSession Class**