### ConvertDate(DateTime,String,String) Method

date to convert

Timezone [name](fcSDK~FChoice.Foundation.DataObjects.ITimeZone~Name.md) input date is currently in

Timezone [name](fcSDK~FChoice.Foundation.DataObjects.ITimeZone~Name.md) input date is being converted to

Converts a DateTime from one [TimeZone](fcSDK~FChoice.Foundation.DataObjects.ITimeZone.md) to another.

Syntax

```vbnet
'Declaration

Public Overloads Overridable Function ConvertDate( _
   ByVal _date_ As Date, _
   ByVal _fromTZName_ As String, _
   ByVal _toTZName_ As String _
) As Date
```

```csharp
public virtual DateTime ConvertDate( 
   DateTime _date_,
   string _fromTZName_,
   string _toTZName_
)
```

#### Parameters

_date_

date to convert

_fromTZName_

Timezone [name](fcSDK~FChoice.Foundation.DataObjects.ITimeZone~Name.md) input date is currently in

_toTZName_

Timezone [name](fcSDK~FChoice.Foundation.DataObjects.ITimeZone~Name.md) input date is being converted to

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCSession~ConvertDate.md)