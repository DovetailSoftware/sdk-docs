### ConvertDate(DateTime,ITimeZone,ITimeZone) Method

date to convert

Timezone input date is currently in

Timezone input date is being converted to

Converts a DateTime from one [TimeZone](fcSDK~FChoice.Foundation.DataObjects.ITimeZone.md) to another.

Syntax

```vbnet
'Declaration

Public Overloads Overridable Function ConvertDate( _
   ByVal _date_ As Date, _
   ByVal _fromTZ_ As ITimeZone, _
   ByVal _toTZ_ As ITimeZone _
) As Date
```

```csharp
public virtual DateTime ConvertDate( 
   DateTime _date_,
   ITimeZone _fromTZ_,
   ITimeZone _toTZ_
)
```

#### Parameters

_date_

date to convert

_fromTZ_

Timezone input date is currently in

_toTZ_

Timezone input date is being converted to

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCSession~ConvertDate.md)