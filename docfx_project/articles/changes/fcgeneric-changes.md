# FCGeneric Changes

## ProgID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| FCFL.FCGeneric | FCFLCompat.FCGeneric |

## Interface Name, IID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| _FCGeneric<br/>582D426C-696F-44A2-897C-DC6767BF29C9 | IFCGeneric<br/>545582EE-2D64-4869-AC88-7D1B5031A960 |

## CoClass Name, CLSID


| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| FCGeneric<br/>DD53D6F2-A7D9-45BC-AB5F-4222D6016E06 | FCGeneric<br/>2888C9FF-F557-4CEA-BDDF-08DF16715D6E |

## Changed Properties

The following properties have changed between FCFL.FCGeneric and FCFLCompat.FCGeneric.

| Changed Property | FCFL.FCGeneric | FCFLCompat.FCGeneric |
|:--- |:--- |:--- |
| RowsReturned | read/write | read-only |
| Records | Returns an ADO Recordset that is a pointer to the actual data. | FCFL.Net uses ADO.NET DataSets, replacing ADO RecordSets. This property now returns a snapshot of the FCGeneric's current contents. Any changes to this recordset will NOT be reflected by the FCGeneric. Please note that the snapshot creation occurs every time this property is accessed.<br/><br/>It is highly recommended that any code that uses the Records property be re-coded to not use this property. At a minimum, the code should be examined so that the Records property is called as few times as possible. See the example below.<br/><br/><br/>One common use of the Records property is setting the maximum records returned from a query.<br/><br/>Example:<br/><br/>`genCase.records.MaxRecords=10;`<br/><br/>Instead of this, use the MaxRecords property of the fcGeneric object directly.<br/><br/>Example:<br/><br/>`genCase.MaxRecords=10;`<br/><br/><span style="color:red;">WARNING:</span> The use of the MaxRecords property is **NOT** supported on Oracle 7.x and Oracle 8.0.x. Setting this property will only cause an entry to be logged to the log file. The query will proceed normally, but all rows will be returned (unconstrained).<br/><br/>The data type of the recordset's Field objects that are textual (e.g. CHAR, TEXT, VARCHAR) will alway return the type VARCHAR. See [MockAdoField's Type](mockadofield.md) property for more details. |
| Item (Default) | Returns an ADO Field class instance | As ADO is no longer used within FCGeneric (ADO.NET is used instead), this method returns an object that emulates the ADO Field class behavior. The class is actually an MockAdoField object.<br/><br/>In FCFL after querying a generic with a limited number of datafields. If you attempt to access a field that is present in the database table but was not present in the generic's datafields property. FCFL will throw an error. In fcSDK it will return the default value that is specified by the schema, no error will be thrown. |

## Changed Methods

The following methods have changed between FCFL.FCGeneric and FCFLCompat.FCGeneric.

| Changed Method | FCFL.FCGeneric | FCFLCompat.FCGeneric |
|:--- |:--- |:--- |
| RelateRecords | Parameters are ByRef | Parameters are ByVal |

## Deleted Properties

The following properties are no longer available in FCFLCompat.FCGeneric.

| Deleted Property | Comments |
|:--- |:--- |
| QuerySQL | No longer supported | 

## Use of the Records Property

### Here is an example of <u>improper</u> use of the Records property:

[JavaScript] 
```
var genContact = FCSession.CreateGeneric('contact');
genContact.Query();

while (!genContact.Records.EOF){
  //A new ADO recordset is created here:
    field = genContact.Records.Fields("first_name");

  //A new ADO recordset is created here:
    length = genContact.Records.Fields("first_name").ActualSize;

  WScript.Echo('Length of ' + field + " = " + length);  
  genContact.Records.MoveNext;
}
```

The example above is bad because each time the records property is accessed, a new ADO recordset object is created. So, if your query returned 100 records, you would actually be creating 200 ADO recordsets.

### Here is the same example re-coded for better performance:

[JavaScript] 
```
var genContact = FCSession.CreateGeneric('contact');
genContact.Query();
//A new ADO recordset is created here:
  var records = genContact.Records;

while (!records.EOF){
  field = records.Fields("first_name");
  length = records.Fields("first_name").ActualSize;
  WScript.Echo('Length of ' + field + " = " + length);  
  records.MoveNext;
}
```

Notice that in the re-coded example, only one ADO recordset is created.

### Here is the same example re-coded again completely eliminating use of the Records property:

[JavaScript] 
```
var genContact = FCSession.CreateGeneric('contact');
genContact.Query();

while (!genContact.EOF){
  field = genContact("first_name");
  length = new String(genContact("first_name")).length;
  WScript.Echo('Length of ' + field + " = " + length);  
  genContact.MoveNext();
}
```

Notice that in the re-coded example, an ADO recordset is not created at all.
