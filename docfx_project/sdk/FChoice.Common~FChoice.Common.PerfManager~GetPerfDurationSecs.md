### GetPerfDurationSecs Method

The number of ticks representing a point in time from which this duration started. See the [GetPerfTimer Method](FChoice.Common~FChoice.Common.PerfManager~GetPerfTimer.md) for more information on how to obtain a valid tick count value

Returns the number of seconds that have elapsed since a specified time

#### Syntax

```vbnet
'Declaration

Public Shared Function GetPerfDurationSecs( _
   ByVal _startTicks_ As Long _
) As Decimal
```

```csharp
public static decimal GetPerfDurationSecs( 
   long _startTicks_
)
```

#### Parameters

_startTicks_

The number of ticks representing a point in time from which this duration started. See the [GetPerfTimer Method](FChoice.Common~FChoice.Common.PerfManager~GetPerfTimer.md) for more information on how to obtain a valid tick count value

#### Return Value

The number of seconds (or fraction of seconds) that have elapsed since the moment in time represented by the _startTicks_ parameter.

See the [GetPerfTimer Method](FChoice.Common~FChoice.Common.PerfManager~GetPerfTimer.md) for more information on how to obtain a valid tick count value.

For more information on instrumenting code to performing timing and performance testing, please see [MSKB Article 172338](http://support.microsoft.com/kb/q172338/) entitled "How to use QueryPerformanceCounter to Time Code."

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PerfManager Class](FChoice.Common~FChoice.Common.PerfManager.md)  
[PerfManager Members](FChoice.Common~FChoice.Common.PerfManager_members.md)