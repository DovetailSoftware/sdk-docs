### DataObjectCollection<T> Class

#### Syntax

```vbnet
'Declaration

Public MustInherit Class DataObjectCollection(Of T As IDataObject) 
   Inherits System.Collections.Generic.List(Of T)
```

```csharp
public abstract class DataObjectCollection<T\> : System.Collections.Generic.List<T> 
where T: [IDataObject
```

Type Parameters

_T_

#### Inheritance Hierarchy

System.Object  
   [System.Collections.Generic.List<T>](#)  
      **FChoice.Foundation.DataObjects.DataObjectCollection<T>**  
         [FChoice.Foundation.Clarify.DataObjects.CountryCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.CountryCollection.md)  
         [FChoice.Foundation.Clarify.DataObjects.DaylightSavingsCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.DaylightSavingsCollection.md)  
         [FChoice.Foundation.Clarify.DataObjects.FCTimeZoneCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.FCTimeZoneCollection.md)  
         [FChoice.Foundation.Clarify.DataObjects.GlobalStringElementCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringElementCollection.md)  
         [FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection.md)  
         [FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElementCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElementCollection.md)  
         [FChoice.Foundation.Clarify.DataObjects.HierarchicalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringListCollection.md)  
         [FChoice.Foundation.Clarify.DataObjects.StateCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.StateCollection.md)  
         [FChoice.Foundation.Clarify.Schema.SchemaFieldCollectionBase](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaFieldCollectionBase.md)  
         [FChoice.Foundation.Clarify.Schema.SchemaRelationCollection](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaRelationCollection.md)  
         [FChoice.Foundation.Clarify.Schema.SchemaTableCollection](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaTableCollection.md)  
         [FChoice.Foundation.Clarify.Schema.SchemaViewCollection](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaViewCollection.md)  
         [FChoice.Foundation.Clarify.Schema.SchemaViewFieldInfoCollection](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaViewFieldInfoCollection.md)  
         [FChoice.Foundation.Clarify.Schema.SchemaViewJoinCollection](fcSDK~FChoice.Foundation.Clarify.Schema.SchemaViewJoinCollection.md)  
         [FChoice.Foundation.DataObjects.ConfigItemCollection](fcSDK~FChoice.Foundation.DataObjects.ConfigItemCollection.md)  
         [FChoice.Foundation.DataObjects.RestrictionGroupCollection](fcSDK~FChoice.Foundation.DataObjects.RestrictionGroupCollection.md)  

#### Requirements

**Namespace:** [FChoice.Foundation.DataObjects](fcSDK~FChoice.Foundation.DataObjects_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[DataObjectCollection<T> Members](fcSDK~FChoice.Foundation.DataObjects.DataObjectCollection`1_members.md)  
[FChoice.Foundation.DataObjects Namespace](fcSDK~FChoice.Foundation.DataObjects_namespace.md)