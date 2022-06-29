### GlobalStringElementCollection Class

#### Syntax

```vbnet
'Declaration

<DefaultMemberAttribute("Item")>
Public Class GlobalStringElementCollection 
   Inherits FChoice.Foundation.DataObjects.DataObjectCollection(Of IGlobalStringElement)
   Implements IGlobalStringElementCollection 
```

```csharp
[DefaultMemberAttribute("Item")]
public class GlobalStringElementCollection : FChoice.Foundation.DataObjects.DataObjectCollection<IGlobalStringElement>, IGlobalStringElementCollection
```

#### Inheritance Hierarchy

System.Object  
   [System.Collections.Generic.List<T>](#)  
      [FChoice.Foundation.DataObjects.DataObjectCollection<T>](fcSDK~FChoice.Foundation.DataObjects.DataObjectCollection`1.md)  
         **FChoice.Foundation.Clarify.DataObjects.GlobalStringElementCollection**  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify.DataObjects](fcSDK~FChoice.Foundation.Clarify.DataObjects_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[GlobalStringElementCollection Members](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringElementCollection_members.md)  
[FChoice.Foundation.Clarify.DataObjects Namespace](fcSDK~FChoice.Foundation.Clarify.DataObjects_namespace.md)