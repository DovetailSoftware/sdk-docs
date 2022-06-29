### AltNameAttribute Class

#### Syntax

```vbnet
'Declaration

<AttributeUsageAttribute(ValidOn=AttributeTargets.Class Or  _
    AttributeTargets.Method Or  _
    AttributeTargets.Parameter, 
   AllowMultiple=False, 
   Inherited=True)>
Public Class AltNameAttribute 
   Inherits System.Attribute
```

```csharp
[AttributeUsageAttribute(ValidOn=AttributeTargets.Class | 
    AttributeTargets.Method | 
    AttributeTargets.Parameter, 
   AllowMultiple=false, 
   Inherited=true)]
public class AltNameAttribute : System.Attribute
```

#### Inheritance Hierarchy

System.Object  
   System.Attribute  
      **FChoice.Foundation.Clarify.Attributes.AltNameAttribute**  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify.Attributes](fcSDK~FChoice.Foundation.Clarify.Attributes_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[AltNameAttribute Members](fcSDK~FChoice.Foundation.Clarify.Attributes.AltNameAttribute_members.md)  
[FChoice.Foundation.Clarify.Attributes Namespace](fcSDK~FChoice.Foundation.Clarify.Attributes_namespace.md)