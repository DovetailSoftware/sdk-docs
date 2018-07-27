### FCExceptionBase Class

FCExceptionBase is the base exception from which all other First Choice exception classes derive. It provides pluggable error message strings which allows for easy runtime customization and localization of error messages.

#### Syntax

```vbnet
'Declaration

<SerializableAttribute()>
Public MustInherit Class FCExceptionBase 
   Inherits System.ApplicationException
```

```csharp
[SerializableAttribute()]
public abstract class FCExceptionBase : System.ApplicationException 
```

#### Remarks

**Notes to implementors**: 

*    FCExceptionBase will attempt to load default string resources from an embedded resource in your derived class' assembly called "Your.Assembly.Name.ErrorStrings.txt". The format of this file is:  
      
    MESSAGEID = This would be your error message with {0} replacement variables  
      
    If you wish to override this behavior and manage the resource loading manually, you can override the GetResourceData() and GetErrorMessageFormat() protected methods.
*   It is recommended that you use unique error numbers every time you throw an exception based on FCExceptionBase. You should choose a range of error numbers and stay consistent in using them.
*   First Choice has reserved error numbers 0 to 1,073,741,824 (0x4000000 hex). Customers should use positive numbers above this range. An easy way to assure this is to always OR your error numbers with 0x4000000.

* * *

**IMPORTANT**: It is important to note that even if you override GetErrorMessageFormat, if a custom message provider is set using [SetMessageProvider](FChoice.Common~FChoice.Common.FCExceptionBase~SetMessageProvider.md), the custom message provider will be used before your override of GetErrorMessageFormat. If the custom message provider is unable to load a message, GetErrorMessageFormat will be called next.

* * *

#### Inheritance Hierarchy

System.Object  
System.Exception  
[System.ApplicationException](#)  
**FChoice.Common.FCExceptionBase**  
[FChoice.Common.CommonException](FChoice.Common~FChoice.Common.CommonException.md)  
[FChoice.Common.FCInvalidConfigurationException](FChoice.Common~FChoice.Common.FCInvalidConfigurationException.md)  
[FChoice.Common.FCLicenseException](FChoice.Common~FChoice.Common.FCLicenseException.md)  
[FChoice.Common.InvalidLoggingConfigException](FChoice.Common~FChoice.Common.InvalidLoggingConfigException.md)  
[FChoice.Common.State.StateManagerException](FChoice.Common~FChoice.Common.State.StateManagerException.md)  
[FChoice.Foundation.Clarify.ClarifyException](fcSDK~FChoice.Foundation.Clarify.ClarifyException.md)  
[FChoice.Foundation.Clarify.Compatibility.CompatibilityException](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.CompatibilityException.md)  
[FChoice.Foundation.Clarify.Workflow.WorkflowException](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowException.md)  
[FChoice.Foundation.FoundationException](fcSDK~FChoice.Foundation.FoundationException.md)  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[FCExceptionBase Members](FChoice.Common~FChoice.Common.FCExceptionBase_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)