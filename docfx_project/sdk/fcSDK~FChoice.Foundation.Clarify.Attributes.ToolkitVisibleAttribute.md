﻿### ToolkitVisibleAttribute Class

#### Syntax

```vbnet
'Declaration

<AttributeUsageAttribute(ValidOn=AttributeTargets.Class Or  _
    AttributeTargets.Struct Or  _
    AttributeTargets.Method, 
   AllowMultiple=False, 
   Inherited=True)>
Public Class ToolkitVisibleAttribute 
   Inherits System.Attribute
```

```csharp
[AttributeUsageAttribute(ValidOn=AttributeTargets.Class | 
    AttributeTargets.Struct | 
    AttributeTargets.Method, 
   AllowMultiple=false, 
   Inherited=true)]
public class ToolkitVisibleAttribute : System.Attribute 
```

#### Inheritance Hierarchy

System.Object  
   System.Attribute  
      **FChoice.Foundation.Clarify.Attributes.ToolkitVisibleAttribute**  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify.Attributes](fcSDK~FChoice.Foundation.Clarify.Attributes_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[ToolkitVisibleAttribute Members](fcSDK~FChoice.Foundation.Clarify.Attributes.ToolkitVisibleAttribute_members.md)  
[FChoice.Foundation.Clarify.Attributes Namespace](fcSDK~FChoice.Foundation.Clarify.Attributes_namespace.md)