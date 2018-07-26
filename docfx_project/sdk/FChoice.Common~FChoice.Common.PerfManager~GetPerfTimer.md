### GetPerfTimer Method

Gets the current value of the high-resolution performance counter

Syntax

```vbnet
'Declaration

Public Shared Function GetPerfTimer() As Long
```

```csharp
public static long GetPerfTimer()
```

#### Return Value

A value representing the number of "ticks" since a specific time in history. The start time may vary from system to system and is only intended to be used from measuring from one recent instant in time to another recent instant in time with great accuracy for the purpose of timing the duration of operations in code.

Remarks

This method wraps the Win32 API function [QueryPerformanceCounter](http://msdn.microsoft.com/library/en-us/winui/winui/windowsuserinterface/windowing/timers/timerreference/timerfunctions/queryperformancecounter.asp).

For more information on instrumenting code to performing timing and performance testing, please see [MSKB Article 172338](http://support.microsoft.com/kb/q172338/) entitled "How to use QueryPerformanceCounter to Time Code."

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PerfManager Class](FChoice.Common~FChoice.Common.PerfManager.md)  
[PerfManager Members](FChoice.Common~FChoice.Common.PerfManager_members.md)