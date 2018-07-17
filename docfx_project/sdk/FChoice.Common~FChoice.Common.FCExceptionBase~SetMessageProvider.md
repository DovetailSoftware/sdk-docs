     SetMessageProvider Method                                                   

SetMessageProvider Method

An implementation of [IErrorMessageProvider](FChoice.Common~FChoice.Common.IErrorMessageProvider.md).

Sets the [IErrorMessageProvider](FChoice.Common~FChoice.Common.IErrorMessageProvider.md) that FCExceptionBase will use for loading custom exception error message strings for localization or customization.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Sub SetMessageProvider( _
   ByVal _provider_ As [IErrorMessageProvider](FChoice.Common~FChoice.Common.IErrorMessageProvider.md) _
) 

public static void SetMessageProvider( 
   [IErrorMessageProvider](FChoice.Common~FChoice.Common.IErrorMessageProvider.md) _provider_
)

#### Parameters

_provider_

An implementation of [IErrorMessageProvider](FChoice.Common~FChoice.Common.IErrorMessageProvider.md).

Remarks

Setting this property will override all error message resolution in for all exceptions deriving from this class. Please see the documentation for [IErrorMessageProvider](FChoice.Common~FChoice.Common.IErrorMessageProvider.md) on the details of providing custom error messages.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCExceptionBase Class](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
[FCExceptionBase Members](FChoice.Common~FChoice.Common.FCExceptionBase_members.md)  
[IErrorMessageProvider Interface](FChoice.Common~FChoice.Common.IErrorMessageProvider.md)