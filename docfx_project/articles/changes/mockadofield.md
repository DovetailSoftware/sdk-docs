# fcSDK - FCFL.NET Compatibility Layer

## MockAdoField Object

In the past, code accessing FCFL Generic Fields was in fact being returned a [ADO Field object](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/ado270/htm/mdobjfieldpme.asp?frame=false&hidetoc=true). Most developers were not aware of this as by default the return value of the ADO Field object is the field value. However, for whatever reason, some applications would use other properties of the ADO Field. To maintain compatibility we have implemented a subset of the ADO Field object called MockADOField. For more information on this matter please see [FCGeneric Object Changes](fcgeneric-changes.md).

### ProgID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| N/A | FCFLCompat.MockAdoField |

### Interface Name, IID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| N/A | IMockAdoField<br/>F7AED485-957A-4ad6-90C8-7D475C87F9C7 |

### CoClass Name, CLSID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| N/A | MockAdoField  <br/>78A3320B-100C-4225-A3C1-58C2A3E73A86 |

### Properties

The following properties are available on the FCFLCompat.MockAdoField object.

| Property | Comments |
|:--- |:--- |
| DefinedSize	| The Size of the Field |
| Name | The Name of the Field |
| Type | The Type of the Field<br/><br/>Textual fields will always return type **200 - VARCHAR** even if they are non VARCHAR types such as CHAR, TEXT. |
| Value |	The Value of the Field.  
This is the default property. |

### Example of using the MockAdoField Object

[JavaScript]
```
var genContact = FCSession.CreateGeneric('contact');
genContact.AppendFilter('first_name','=',"Roger");
genContact.Query();

field_value = genContact("first_name");
length = new String(genContact("first_name")).length;

WScript.Echo('Length of "' + field_value + '" = ' + length);  
WScript.Echo('DefinedSize of "first_name" = ' + genContact("first_name").DefinedSize);  
WScript.Echo('Field Name of "first_name"= ' + genContact("first_name").Name);  
WScript.Echo('Type of "first_name" = ' + genContact("first_name").Type);  
WScript.Echo('Value of "first_name" = ' + genContact("first_name").Value);  
```

### Example output:

```
Length of "Roger" = 5 
DefinedSize of "first_name" = 30 
Field Name of "first_name"= first_name 
Type of "first_name" = 200 
Value of "first_name" = Roger
```
