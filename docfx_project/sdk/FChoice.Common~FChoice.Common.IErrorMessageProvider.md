### IErrorMessageProvider Interface

The IErrorMessageProvider is the interface used by [FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md) to allow other assemblies to provide custom error message resolution.

#### Syntax

```vbnet
'Declaration

Public Interface IErrorMessageProvider 
```

```csharp
public interface IErrorMessageProvider 
```

#### Remarks

You can implement your own error message provider to load error message resources from other sources. If you implement this interface and wish to use it, simply call the [SetMessageProvider](FChoice.Common~FChoice.Common.FCExceptionBase~SetMessageProvider.md) static (**Shared** in Visual Basic) method on the [FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md) class.

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[IErrorMessageProvider Members](FChoice.Common~FChoice.Common.IErrorMessageProvider_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)