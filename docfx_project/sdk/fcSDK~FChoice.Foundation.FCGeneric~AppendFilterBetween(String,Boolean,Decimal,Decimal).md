     AppendFilterBetween(String,Boolean,Decimal,Decimal) Method                                                   

fcSDK Documentation

AppendFilterBetween(String,Boolean,Decimal,Decimal) Method

Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two Decimal values.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub AppendFilterBetween( _
   ByVal _fieldName_ As String, _
   ByVal _isBetween_ As Boolean, _
   ByVal _value1_ As [Decimal](#), _
   ByVal _value2_ As [Decimal](#) _
) 

public void AppendFilterBetween( 
   string _fieldName_,
   bool _isBetween_,
   [decimal](#) _value1_,
   [decimal](#) _value2_
)

#### Parameters

_fieldName_

_isBetween_

_value1_

_value2_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterBetween.md)