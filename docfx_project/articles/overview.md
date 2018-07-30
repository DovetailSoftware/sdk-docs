# Overview of the fcSDK

## What is the fcSDK?

The **fcSDK** is a software development kit for writing applications, using .NET, to access Clarify&trade; databases. This kit includes code libraries, documentation, examples, sample applications, and utilities to help with configuration and database management. The core of the **fcSDK** is comprised of two main sets of libraries: the **FCFL.NET** libraries and the API Toolkit libraries.

## FCFL.NET

**FCFL.NET** provides a number of basic application services such as configuration, logging, provider-independent data access, licensing, etc. The main purpose of **FCFL.NET**, however, is to provide low-level, direct access to a Clarify database without having to involve any other Clarify products. Using **FCFL.NET**, you can query, insert, update, and delete data from your database without worrying about corrupting data or interferring with the use of other software attached to your database. **FCFL.NET** uses the same semantics that the Clarify Classic Client uses for performing database operations. **FCFL.NET** can peacefully coexist at the same time against the same database with other Clarify applications as well as other First Choice appplications. **FCFL.NET** is a completely rewritten, rearchitected, and fully .NET library based on the concepts and ideas used in the original FCFL for COM product, but without any of the limitations.

**FCFL.NET** is based on and emulates the successful First Choice FCFL platform. **FCFL.NET** provides most of the same concepts and employs the same basic paradigms as FCFL. If you know how to write FCFL programs, it will be very easy to move up to **FCFL.NET**.

**FCFL.NET** has two major components: The [FChoice.Common]() assembly and the [FChoice.Foundation.Clarify]() assembly.

The [FChoice.Common]() assembly is designed to provide basic application services such as configuration, logging, cross-platform database access, and structured, localized error handling. [FChoice.Common]() will be used by multiple First Choice products and can be used independently of First Choice products by First Choice customers directly.

The [FChoice.Foundation.Clarify]() assembly provides a specific implementation of the [FChoice.Foundation]() abstraction layer for Amdocs Clarify&trade; CRM systems. This assembly adds extra functionality above [FChoice.Foundation]() that is specific to Clarify systems. For example, object-oriented access to cached frequently-used data allows easy access to user-defined lists (HGBST's) and global string lists (GBST's) via the ListCache property of ClarifyApplication, country, state, and time zone information via the LocaleCache property, and ADP schema information via the SchemaCache property, and much more. For more specific inforamtion on Clarify-specific features in the [FChoice.Foundation.Clarify]() assembly, see the [API reference for the FChoice.Foundation.Clarify]() namespace.

## API Toolkits

The API Toolkits provide convenient business logic wrappers for most of the common tasks performed by the Clarify Classic Client. These include, but are not limited to: Creating cases, solutions, contacts, change requests, and site parts, performing workflow operations like assigning cases and dispatching change requests, and performing logistical operations such as moving and installing parts.

The toolkits cover some or all of the functionality in the Classic Client that are associated with ClearSupport, ClearLogistics, ClearQuality, and several others.

The API Toolkits in the **fcSDK** are divided into functional areas that map closely to Clarify&trade; products. For example, the [FChoice.Toolkits.Clarify.Support]() namespace and, specifically, the [SupportToolkit]() object reflect most or all of the functionality in the ClearSupport product for Clarify&trade;.

For more information on how to get started writing applications using the API Toolkits, please see the developer walkthrough of [Toolkit Fundamentals](walkthroughs/toolkit.md).

## FCFL and API Toolkit COM Compatibility Layer

For current First Choice customers perhaps the most important feature included with the **fcSDK**, is the [COM Compatibility Layer](compatibility-guide.md). This set of COM objects included with the **fcSDK** emulate the existing FCFL interface. Allowing you to use the **FCFL and API Toolkit COM Compatibility Layer** instead of FCFL or the original FCFL-based COM API Toolkits.

By doing this you will gain most of the benefits of the **fcSDK** without having to change a single line of code. This means, for example, that current *fcClient* or *fcSelfService* thin client users can see performance and scalability improvements simply by substituting the **fcSDK** for FCFL and the FCFL-based API Toolkits.

Later, when you are ready, you can start to add new features to your system with native **fcSDK** programming. This can be either for writing new, general programs, or to take advantage of specific features of **fcSDK** that are not available with the FCFL-based platform.

It should be noted that there is a small amount of overhead added when using the compatibility layer as compared to using the **fcSDK** directly. The COM to .NET translations do take a very small amount of time. But the overall the underlying improvements in the **fcSDK** are so significant that it is well worth your time to upgrade to the **fcSDK**, even if you don't write any native **fcSDK** programming for a long while.

Any new programming projects you start (for example, a new web application) should be written with the **fcSDK** – the advantages available to you in this new system are numerous and significant, justifying a migration to the new platform. Also, the **fcSDK** is faster in the native mode than in the compatibility mode, and there is no additional penalty in using both modes in the same code module.

For a sampling of some of the great new features in the **fcSDK**, please the the [Guide to the features in the fcSDK](feature-guide.md).

## Web Services

The Web Services provide a web service interface into many of the **fcSDK** features such as querying and modifiying data as well as invoking API Toolkit methods. These web services are built using the SOAP standards defined by the W3C, which means you can use them with any langauge or platform that supports the HTTP protocol such as Java&trade;. The **fcSDK** ships with a client assembly for .NET which makes calling the web services very similar to native **FCFL.NET** and API Toolkit calls.

**Note:** The Web Services have been moved to to a public GitHub repository: [Dovetail SDK Web Services](https://github.com/DovetailSoftware/dovetail-sdk-web-services). Please use the services there to view the code, fork it, etc. The documentation provided here is still applicable, but Web Services are not included as part of the **fcSDK** installation.

For more information on how to get started writing applications using the Web Services, please see the developer walkthrough of [Web Services Fundamentals](walkthroughs/web-services.md).

## Utilities

The **fcSDK** ships with several utilities to help you manage your Clarify database, configure the **fcSDK** and other tasks. For more information on these utilities, see the [Utilities Overview]() section of this documentation.

## Samples and Examples

Throughout the **fcSDK** documentation you will see helpful, working examples of how to use the system.

If you copy and paste these examples into your solutions, you will quickly get a head start on your application based on the fcSDK.

## Getting More Information

For more information about **FCFL.NET**, or any other Dovetail Software product, please contact us at [sales@dovetailsoftware.com](mailto:sales@dovetailsoftware.com) or [support@dovetailsoftware.com](mailto:support@dovetailsoftware.com), or visit our website at [http://www.dovetailsoftware.com/](http://www.dovetailsoftware.com/).
