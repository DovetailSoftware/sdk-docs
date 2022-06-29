### GlobalStringListCollection Class

#### Syntax

```vbnet
'Declaration

<DefaultMemberAttribute("Item")>
Public Class GlobalStringListCollection 
   Inherits FChoice.Foundation.DataObjects.DataObjectCollection(Of IGlobalStringList)
   Implements IGlobalStringListCollection 
```

```csharp
[DefaultMemberAttribute("Item")]
public class GlobalStringListCollection : FChoice.Foundation.DataObjects.DataObjectCollection<IGlobalStringList>, IGlobalStringListCollection
```

#### Inheritance Hierarchy

System.Object  
   [System.Collections.Generic.List<T>](#)  
      [FChoice.Foundation.DataObjects.DataObjectCollection<T>](fcSDK~FChoice.Foundation.DataObjects.DataObjectCollection`1.md)  
         **FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection**  
#### Requirements

**Namespace:** [FChoice.Foundation.Clarify.DataObjects](fcSDK~FChoice.Foundation.Clarify.DataObjects_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[GlobalStringListCollection Members](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection_members.md)  
[FChoice.Foundation.Clarify.DataObjects Namespace](fcSDK~FChoice.Foundation.Clarify.DataObjects_namespace.md)