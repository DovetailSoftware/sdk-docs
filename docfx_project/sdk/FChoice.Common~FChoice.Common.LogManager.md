### LogManager Class

LogManager provides access to the logging subsystem so that classes and write log entries and allow those entries to be processed according to the application logging configuration.

Syntax

```vbnet
' Declaration
Public NotInheritable Class LogManager 

public sealed class LogManager 

Remarks

LogManager provides classes with access to the logging subsystem, as well as some basic ability to programmatically control it's behavior at runtime.

**NOTE**: Changing logging configuration at runtime is an expensive operation and should not be done frequently. The main use case for runtime configuration is occasional changes driven by a human system administrator or developer troubleshooting a problem.

Inheritance Hierarchy

System.Object  
   **FChoice.Common.LogManager**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)



#### Reference

[LogManager Members](FChoice.Common~FChoice.Common.LogManager_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)