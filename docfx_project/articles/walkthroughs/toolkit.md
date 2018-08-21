# Developer Walkthrough - Toolkit Fundamentals

This walkthrough will provide an overview of the basic usage pattern involved in using the Toolkit APIs.

## Toolkit Namespaces

The Toolkit APIs are split up into logical groupings with each group of APIs having their own namespace.

* Contracts	[FChoice.Toolkits.Clarify.Contracts](../../api/FChoice.Toolkits.Clarify.Contracts.html)
* Depot Repair	[FChoice.Toolkits.Clarify.DepotRepair](../../api/FChoice.Toolkits.Clarify.DepotRepair.html)
* Field Operations	[FChoice.Toolkits.Clarify.FieldOps](../../api/FChoice.Toolkits.Clarify.FieldOps.html)
* Interfaces	[FChoice.Toolkits.Clarify.Interfaces](../../api/FChoice.Toolkits.Clarify.Interfaces.html)
* Logistics	[FChoice.Toolkits.Clarify.Logistics](../../api/FChoice.Toolkits.Clarify.Logistics.html)
* Quality	[FChoice.Toolkits.Clarify.Quality](../../api/FChoice.Toolkits.Clarify.Quality.html)
* Sales	[FChoice.Toolkits.Clarify.Sales](../../api/FChoice.Toolkits.Clarify.Sales.html)
* Support	[FChoice.Toolkits.Clarify.Support](../../api/FChoice.Toolkits.Clarify.Support.html)

## Using API methods

Each Toolkit object has many methods each intended to encapsulate a Clarify operation or \'API\'.

### API method overloads

Each API call has two overloaded methods:

1. Required parameters only - This overload takes the bare minimum required parameters for the API call to work. This overload is the simplest possible way to invoke the API but limits what parameters can be set.
1. A single Setup object parameter - Each and every API has a setup object that is used to configure the API's possible parameters. The setup object's constructor will always take the required parameters for the API. Once the setup object is created, its properties can be set to control all of the possible actions the API can take.

### Toolkit Results

Each API method returns at minimum a ToolkitResult object which contains the ReturnCode of the operation and relavant Objid and Identifier of objects created if applicable. Some APIs have specialized Result objects for when more information is returned.

#### Result Return Code

The value of the ReturnCode will always be zero, no error occurred, unless the application is using Compatiblity and the Session has ThrowErrors set to false. Only if ThrowErrors is false will no exception be thrown and a non-zero value will be returned. **Note:** *It is recommended that you do not set ThrowErrors to false and use structured error handling via try/catch statements.*

#### Specialized Results

There are some APIs that return more information than the basic ToolkitResult object. These APIs return a custom result object, derived from ToolkitResult, that contains read-only Properties with the extra result information.

For example, the Support toolkit API PreCloseCase returns a PrecloseCaseResult object.

### Additional Fields

Many API setup objects have an AdditionalFields property which allows callers to set user defined fields ('x_fields') in a customized Clarify environment. It is also possible to use AdditionalFields to override the fields that are set by the API.

To set an additional field simply call the Append method on the API's AdditionalField property.

### Toolkit Example

The following example demonstrates use of ToolkitResults, both API calling conventions, and setting of AdditionalFields.

#### Using the Interfaces and Support Toolkits to create a case

[C#]
```csharp
//using the Interfaces toolkit create an address and a site
InterfacesToolkit interToolkit = new InterfacesToolkit( session );

//only required parameters are entered for these APIs so we do not require a setup object
ToolkitResult addressResult = interToolkit.CreateAddress(string'>"123 Lower Wacker Dr.", string'>"Chicago", string'>"IL", string'>"60601", string'>"USA", string'>"CST" );
ToolkitResult siteResult    = interToolkit.CreateSite(SiteType.Customer, SiteStatus.Active, addressResult.Objid);

//using the Support toolkit create a case using the handy CreateCaseSetup object.
SupportToolkit supportToolkit= new SupportToolkit( session );

//the setup class is created with the required case parameters. Then the optional properties we need are set.
CreateCaseSetup caseSetup = new CreateCaseSetup(siteResult.IDNum, string'>"Ferris", string'>"Bueller", string'>"(224) 555-1212");
caseSetup.CreateDate = DateTime.Now.AddDays(-1);
caseSetup.Title = string'>"Claim for Ferrari destroyed due to jack failure";
caseSetup.PhoneLogNotes = string'>"Life moves pretty fast. If you don't stop and look around once in awhile, you could miss it.";
caseSetup.Queue = string'>"Italian Auto Repair";
caseSetup.AdditionalFields.Append(string'>"x_Cameron_Freakout_Level", 90.2, string'>"Double");

//finally create the case using the setup object
ToolkitResult caseResult = supportToolkit.CreateCase( caseSetup );

//the results of the case creation are available from the ToolkitResult object
int caseObjid = caseResult.Objid;
string caseIDNum = caseResult.IDNum;
```

[Visual Basic]
```vbnet
'using the Interfaces toolkit create an address and a site
Dim interToolkit As New InterfacesToolkit(session)

'only required parameters are entered for these APIs so we do not require a setup object
Dim addressResult, siteResult As ToolkitResult
addressResult = interToolkit.CreateAddress("123 Lower Wacker Dr.", "Chicago", "IL", "60601", "USA", "CST")
siteResult = interToolkit.CreateSite(SiteType.Customer, SiteStatus.Active, addressResult.Objid)

'using the Support toolkit create a case using the handy CreateCaseSetup object.
Dim supportToolkit As New SupportToolkit(session)

'the setup class is created with the required case parameters. Then the optional properties we need are set.
Dim caseSetup As New CreateCaseSetup(siteResult.IDNum, "Ferris", "Bueller", "(224) 555-1212")
caseSetup.CreateDate = DateTime.Now.AddDays(-1)
caseSetup.Title = "Claim for Ferrari destroyed due to jack failure"
caseSetup.PhoneLogNotes = "Life moves pretty fast. If you don't stop and look around once in awhile, you could miss it."
caseSetup.Queue = "Italian Auto Repair"
caseSetup.AdditionalFields.Append("x_Cameron_Freakout_Level", 90.2, "Double")

'finally create the case using the setup object
Dim caseResult as ToolkitResult
caseResult = supportToolkit.CreateCase(caseSetup)

'the results of the case creation are available from the ToolkitResult object
Dim caseObjid as Integer
Dim caseIDNum as String
caseObjid = caseResult.Objid;
caseIDNum = caseResult.IDNum;
```
