﻿### SchemaTableCollection Class

#### Syntax

```vbnet
'Declaration

<DefaultMemberAttribute("Item")>
Public Class SchemaTableCollection 
   Inherits FChoice.Foundation.DataObjects.DataObjectCollection(Of SchemaTable)
   Implements FChoice.Foundation.Schema.ISchemaTableCollection 
```

```csharp
[DefaultMemberAttribute("Item")]
public class SchemaTableCollection : FChoice.Foundation.DataObjects.DataObjectCollection<SchemaTable>, FChoice.Foundation.Schema.ISchemaTableCollection  
```

#### Inheritance Hierarchy

System.Object  
   [System.Collections.Generic.List<T>](#)  
      [FChoice.Foundation.DataObjects.DataObjectCollection<T>](fcSDK~FChoice.Foundation.DataObjects.DataObjectCollection`1.md)  
         **FChoice.Foundation.Clarify.Schema.SchemaTableCollection**  

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify.Schema](fcSDK~FChoice.Foundation.Clarify.Schema_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[SchemaTableCollection Members](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaTableCollection_members.md)  
[FChoice.Foundation.Clarify.Schema Namespace](fcSDK~FChoice.Foundation.Clarify.Schema_namespace.md)