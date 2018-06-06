# Developer Walkthrough - Web Services Fundamentals

## Web Services Fundamentals

**NOTE: The Web Services have been moved to to a public GitHub repository: [Dovetail SDK Web Services](https://github.com/DovetailSoftware/dovetail-sdk-web-services). Please use the services there to view the code, fork it, etc. The documentation provided here is still applicable, but Web Services are not included as part of the fcSDK installation.**

**NOTE: Dovetail Bootstrap, also available as a public GitHub repository, (Dovetail Bootstrap) can also be used to create applications to provide whatever information or user experiences you wish to expose for your Dovetail/Clarify applications. This project includes examples for building Web Applications and Windows Services, including exposing Dovetail SDK API calls as RESTful web service APIs.**

### Overview

This walkthrough will provide an overview of the basic usage pattern involved in using the fcSDK Web Services.

A typical web service scenario is composed of two parts: the server which hosts the web services and the client or clients who will make request and receive responses from those web services. The web service server will be the machine where the fcSDK is installed which is also typically a web application server. The fcSDK Web Services is an ASP.NET web application runing under IIS.

Making web service calls is not unlike making browser request to a web page. The main difference being that web service calls are generally made from applications instead of a client browser. Just as a web application can provide a user interface into fcSDK, the fcSDK Web Services provides a programmatically way to interface with fcSDK from a remote machine.

![verifier](/images/webservices.png)

Web services may be consumed by any language or platform that can send requests and receive responses over HTTP. This makes it possible to use Java to call .NET web services such as the fcSDK Web Services.

The fcSDK Web Services are implemented as typical ASP.NET Web Services. The following web service pages are installed as part of the fcSDK Web Services installation.

* ClarifyApplicationSrv.asmx - contains web methods for dealing with application level information such as schema cache and string cache
* ClarifySessionSrv.asmx - an abstraction of a ClarifySession which deals with session level information
* ClarifyDataAccessSrv.asmx - an abstraction of a ClarifyGeneric which allows querying and data modifications
* ContractsToolkitSrv.asmx - an abstraction of the API ContractsToolkit
* DepotRepairToolkitSrv.asmx - an abstraction of the API DepotRepairToolkit
* FieldOpsToolkitSrv.asmx - an abstraction of the API FieldOpsToolkit
* InterfacesToolkitSrv.asmx - an abstraction of the API InterfacesToolkit
* LogisticsToolkitSrv.asmx - an abstraction of the API LogisticsToolkit
* QualityToolkitSrv.asmx - an abstraction of the API QualityToolkit
* SalesToolkitSrv.asmx - an abstraction of the API SalesToolkit
* SupportToolkitSrv.asmx - an abstraction of the API SupportToolkit

### WSDL

To retrieve the WSDL (Web Service Description Language) for a particular web service, all you have to do is make an HTTP request to the web service page with '?WSDL' appended to the end of the URL. For example, if you would like the WSDL for the ClarifyApplicationSrv web service you would do something like the following:

![wsdl](/images/webservices_wsdl.png)

Replace 'localhost' with the fcSDK Web Services server and 'FChoice.WebServices.Clarify' with the correct virtual directory where the web services are installed.

If you are using the [fcSDK Web Services Client for .NET]() to access the web services, then you probably will not need to use the WSDLs for the web services.

### Protocol Classes

Web services are composed of requests and responses. Each of these is a XML message which is transported over HTTP using the SOAP protocol. Many of the messages contain nested data structures (called complex types) which define the data needed for a particular request or response. The client and server components of these web services generally transform these data structures into a hierarchy of classes which make them easier to deal with programmatically. The process of converting classes to XML data structures is call serialization and the process of converting the XML data structures back to classes is called deserialization. When using modern languages like .NET and Java, this is all handled for you. If you are using a platform that does not provide tools to do serialization, then you may need to write your own.

Because there are limits on what types may be serialized, it is often necessary to create a class that its sole purpose is to be used to transport data in requests and responses for web services. This is the case for many of the types in fcSDK Web Services.

For example, in the FChoice.Toolkit.Clarify.Support namespaces there are setup objects for each of the toolkit APIs that allow one to specify invocation data for a particular API. To extend this behavior to a web service implementation, protocol classes where created for each of these setup object. The fcSDK Web Services use these protocol objects for input parameters and for return results.

[C#] 
```
// Signature for standard SupportToolkit.CreateCase()
public ToolkitResult CreateCase(CreateCaseSetup setupParam)

// Signature for SupportToolkitWS.CreateCase()
public ToolkitResultProtocol CreateCase(CreateCaseSetupProtocol setupParam)
```

The web services convert these protocol classes to the real type counterparts which are passed in to the underlying fcSDK API during invocation. As shown in the previous example, many results are returned as protocol objects which contain properties that are nearly identical to there non-protocol counterpart.

### Web Service Sessions and Authentication

The ClarifyApplication Web Service ( ClarifyApplicationSrv ) is the starting point for all client applications consuming the fcSDK Web Services. From here CreateSession() is called to create a ClarifySession on the web services server which will live until either Logout() is called on the ClarifySessionSrv, or a configurable timeout period is reached. This method returns an authentication token which will be passed in the SOAP header of each web service call which requires authentication. The server will read the authentication token from the SOAP header and match it back up to a ClarifySession that was previously created using ClarifyApplicationWS.CreateSession(). If it can not find a ClarifySession to match to due to invalid authentication token or an expired session, the API will throw an exception. Each ClarifySession consumes a fcSDK license, so it's important to call Logout() on the Clarify Session Web Service after use so that the license can be released. If you are using the [fcSDK Web Services Client for .NET](), then the SOAP headers and the controlling of authentication token is handled for you.

### fcSDK Web Services Client for .NET

#### Web Services Client Overview

The recommended way to use the fcSDK Web Services in a .NET environment is to use the provided client which ships with the fcSDK. The client makes writing code to use the web services very similar to writing code to use native fcSDK.

The client classes completely hide the complexities of the SOAP headers and the session authentication token. They also provide required state information to the web services such as which properties have been changed from their original values on the toolkit setup objects.

Protocol classes only have default public constructor with no parameters (requirement for serialization) which makes it difficult to determine which values of a complex type are required before invocation. The fcSDK Web Services Client solves this problem by providing the user with a client side API (which looks nearly identical to server side fcSDK code) which handles the creation and transport of the protocol classes under the hood.

#### Client Protocol Classes

The client contains all the protocol classes needed to transport data to and from the server. Each web service page (each asmx page) has it's own version of a protocol class. These protocol classes live in the following namespaces:

* FChoice.WebServices.Clarify.Client.Protocols.ClarifyApplicationSrv
* FChoice.WebServices.Clarify.Client.Protocols.ClarifySessionSrv
* FChoice.WebServices.Clarify.Client.Protocols.ClarifyDataAccessSrv
* FChoice.WebServices.Clarify.Client.Protocols.ContractsToolkitSrv
* FChoice.WebServices.Clarify.Client.Protocols.FieldOpsToolkitSrv
* FChoice.WebServices.Clarify.Client.Protocols.InterfacesToolkitSrv
* FChoice.WebServices.Clarify.Client.Protocols.LogisticsToolkitSrv
* FChoice.WebServices.Clarify.Client.Protocols.QualityToolkitSrv
* FChoice.WebServices.Clarify.Client.Protocols.SalesToolkitSrv
* FChoice.WebServices.Clarify.Client.Protocols.SupportToolkitSrv

When using a client class that corresponds to a particular web service page, it may also be necessary to use some of the protocol class for that service. In some cases, such as the setup objects for the web services for the API Toolkits, the will be not be used. Instead client versions of these classes are provided to provide the necessary constructors and state information needed to invoke the server side API correctly. You can look at the signature of the APIs to see their inputs and outputs to determine the types need. Please refer to the FChoice.WebServices.Clarify.Client API documentation for details.

#### Working with Application and Session Information

The base client classes live in the FChoice.WebServices.Clarify.Client namespace.

The starting point in engaging the web service client is to create an instance of the ClarifyApplicationWS class which takes a single parameter that is the URL of the location where the fcSDK Web Services were installed.

[C#] 
```
ClarifyApplicationWS application = new ClarifyApplicationWS("http://myserver/FChoice.WebServices.Clarify/");
```

There are several methods that can be called on ClarifyApplicationWS for getting application related information such as retrieve list from the ListCache. Please see ClarifyApplicationWS for more details.

As with standard fcSDK, you create a session object by calling CreateSession().

[C#] 
```
ClarifyApplicationWS application = new ClarifyApplicationWS("http://myserver/FChoice.WebServices.Clarify/");

ClarifySessionWS session = application.CreateSession( username, password );
```

There are several methods that can be called on ClarifySessionWS for getting session related information such as getting the current time zone.

#### Accessing and Modifying Data using the Web Services Client

The ClarifyDataAccessWS class provides a means of doing ClarifyGeneric queries and data modifications. Please refer to the [Accessing Data with the Web Services]() guide for more details.

#### Accessing the API Toolkits using the Web Services Client

The fcSDK Web Services Client contains toolkit classes for each of the fcSDK API Toolkit classes which live under their own namespaces as follows:

* FChoice.WebServices.Clarify.Client.Contracts.ContractsToolkitWS
* FChoice.WebServices.Clarify.Client.DepotRepair.DepotRepairToolkitWS
* FChoice.WebServices.Clarify.Client.FieldOps.FieldOpsToolkitWS
* FChoice.WebServices.Clarify.Client.Interfaces.InterfacesToolkitWS
* FChoice.WebServices.Clarify.Client.Logistics.LogisticsToolkitWS
* FChoice.WebServices.Clarify.Client.Quality.QualityToolkitWS
* FChoice.WebServices.Clarify.Client.Support.SupportToolkitWS

Each of these toolkit classes can be instantiated by passing a valid ClarifySessionWS.

[C#] 

```
SupportToolkitWS supportWS = new SupportToolkitWS( session );
```

You may then call the non setup APIs directly.

[C#] 

```
ToolkitResultProtocol result = supportWS.CreateCase(siteIDNum, firstName, lastName, phone);
```

The toolkit API result will contain the same properties as the result of the equivalent fcSDK toolkit API.

[C#] 

```
Console.WriteLine( "IDNum : {0}", result.IDNum );
Console.WriteLine( "Objid : {0}", result.Objid );
Console.WriteLine( "ReturnCode : {0}", result.ReturnCode );
```

The output should look something like the following:

```
IDNum : 123456
Objid : 268435499
ReturnCode : 0
```

You may also choose to create a setup object to pass into the API just as you would with the native fcSDK API Toolkits. The following is a more complete example:

[C#] 

```
// Create ClarifyApplicationWS
ClarifyApplicationWS application = new ClarifyApplicationWS("http://myserver/FChoice.WebServices.Clarify/");

// Create ClarifySessionWS
ClarifySessionWS session = application.CreateSession( username, password );

// Create toolkit
SupportToolkitWS supportWS = new SupportToolkitWS( session );

// Create setup
CreateCaseSetupWS setup = new CreateCaseSetupWS( siteIDNum, firstName, lastName, phone );

// Supply additional data
setup.Title = "This is a test title";

// Invoke API
ToolkitResultProtocol result = supportWS.CreateCase( setup );

// Output results
Console.WriteLine( "IDNum : {0}", result.IDNum );
Console.WriteLine( "Objid : {0}", result.Objid );
Console.WriteLine( "ReturnCode : {0}", result.ReturnCode );

// Release the ClarifySession from the web service server
session.Logout();
```

The output should look something like the following:

```
IDNum : 123456
Objid : 268435499
ReturnCode : 0
```

For more information on the API Toolkits and how they should be used, please refer to the [Developer Walkthrough - Toolkit Fundamentals](transaction.md).
