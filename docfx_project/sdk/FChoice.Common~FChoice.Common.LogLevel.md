### LogLevel Enumeration

LogLevel is an enumeration of supported logging levels. This is used in conjunction with [LogManager](FChoice.Common~FChoice.Common.LogManager.md) and [Logger](FChoice.Common~FChoice.Common.Logger.md) to control how log messages are filtered or written to the output appender.

#### Syntax

```vbnet
'Declaration

Public Enum LogLevel 
   Inherits System.Enum
```

```csharp
public enum LogLevel : System.Enum 
```

Members

| Member | Description |
| --- | --- |
| **DEBUG** | The DEBUG level symbolizes the most detailed and exhaustive level. This should only be used for troubleshooting or debugging information not necessary during normal operation or even basic troubleshooting. |
| **ERROR** | The ERROR level symbolizes events in the system from which the application cannot continue processing the current task (note that this doesn't necessarily mean the application will crash). The system could be in a potentially dangerous state and steps should be taken to immediately resolve the problem. |
| **FATAL** | The FATAL level symbolizes an unrecoverable error that is causing the application to cease execution to prevent data loss or corruption. FATAL messages should be resolved immediately and are of the highest importance. |
| **INFO** | The INFO level symbolizes normal logging that details major events in the systems and perhaps some informational or status messages that might be useful to a systems administrator monitoring the system or troubleshooting a basic problem. |
| **UNDEFINED** | This level is provided only for compatibility and is not used. |
| **WARN** | The WARN level symbolizes events in the system that systems administrators and developers should be aware of and should probably be fixed soon. |

#### Inheritance Hierarchy

System.Object  
System.ValueType  
System.Enum  
**FChoice.Common.LogLevel**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)