### SchemaViewCollection Class

#### Syntax

```vbnet
'Declaration

<DefaultMemberAttribute("Item")>
Public Class SchemaViewCollection 
   Inherits FChoice.Foundation.DataObjects.DataObjectCollection(Of SchemaView)
   Implements FChoice.Foundation.Schema.ISchemaViewCollection 
```

```csharp
[DefaultMemberAttribute("Item")]
public class SchemaViewCollection : FChoice.Foundation.DataObjects.DataObjectCollection<SchemaView>, FChoice.Foundation.Schema.ISchemaViewCollection  
```

#### Inheritance Hierarchy

System.Object  
   [System.Collections.Generic.List<T>](#)  
      [FChoice.Foundation.DataObjects.DataObjectCollection<T>](fcSDK~FChoice.Foundation.DataObjects.DataObjectCollection`1.md)  
         **FChoice.Foundation.Clarify.Schema.SchemaViewCollection**  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify.Schema](fcSDK~FChoice.Foundation.Clarify.Schema_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[SchemaViewCollection Members](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaViewCollection_members.md)  
[FChoice.Foundation.Clarify.Schema Namespace](fcSDK~FChoice.Foundation.Clarify.Schema_namespace.md)