# Guide to the features in the fcSDK

The **fcSDK** provides some impressive features as well as a solid architecture from which to build new or upgrade existing applications. Please view the following sections for more information about the features that **fcSDK** provides.

## Clarify Compatibility and Multi-version Support

The **fcSDK** has been written to be 100% Clarify compliant for Clarify versions 7 and later. All of the conventions you expect and require for a working Clarify system are implemented with the **fcSDK**. Some of the more common of these are support for:

Objid generation
Numbering scheme generation
Relation support (relate from either side of a table)
MTM table support
Change date/change fields
Cached common data available
Cached schema (available in the **fcSDK**, but not in Clarify's system)
Case sensitive fields (s_ fields) – Oracle&trade; only
Exclusive relations
Mandatory relations
When you commit multiple objects in a single transaction, the condition object is committed first, and then the objects are committed in order of their table number. This is done to minimize deadlock issues
NULL field values
Starting date in 1753 support (needed for ?/?/? dates in thick client)
The crucial design point for the **fcSDK** is that you should not (and will not) be able to tell if data were written or read from Clarify with the **fcSDK** or with a Clarify tool.

**NOTE:** The current version of the **fcSDK** has not been validated against Clarify's Traveler product.

## .NET Object Oriented and Managed Code Environment

Since **fcSDK** is based on the [Microsoft&trade; .NET Framework](http://www.microsoft.com/net/), it inherently gains powerful features such as an object-oriented, managed code, highly secure operating environment. The features and advantages of the Microsoft&trade; .NET Framework are too numerous to list here, but a few of the major ones are:

* Common Language Runtime (CLR)

    The CLR is a language-neutral development and execution environment that provides modern features such as memory management, Just In Time (JIT) compilation performance enhancements, strongly typed code enforcement, and code access security (CAS) among many others.

    The CLR executes code compiled from any standard Common Language System (CLS) compiler. <u>This means code written in C# can interoperate 100% with code written in Visual Basic.NET or C++ with Managed Extensions and vice versa.</u>

* Framework Class Libraries (FCL)

    A consistent, object-oriented set of libraries with prepackaged functionality such as data access, XML technologies (XML, XSD, XPath, XSLT, etc), IO access, managed threading, etc.

    This allows **fcSDK** to take advantage of many features already provided for in the .NET Framework. These features are already well tested and used widely so they help make **fcSDK** a more stable and major product out-of-the-box.

* Garbage Collection -With FCFL, the programmer is responsible for manually cleaning up and disposing of all objects (particularly FCGeneric objects). It is not uncommon to find FCFL programs that are not as well written as they could be. They usually have memory leaks because not all FCGeneric objects were closed properly.

    With **fcSDK** this is no longer an issue. The .NET framework contains a robust garbage collector. When objects are no longer needed, and are no longer referenced they are automatically reclaimed for you.

* Support for modern technologies such as XML and Web Services

    The .NET FCL provides standardized access to modern technologies and standards such as XML, SOAP (Web Services), TCP/IP, HTTP, and other networking protocols, etc. This allows the **fcSDK** to support more features and standards out-of-the-box by taking advantage of the standard features in the .NET Framework which is well tested and widely used in the development community.

* Multi-threaded runtime - Microsoft&trade; .NET was written from the ground up and does not inherit any of the design restrictions imposed by previous Microsoft&trade; technologies such as COM. This means that .NET components are fully multithreaded and able to be used from multiple threads without any restrictions from the Framework itself as was true in a COM environment (STA, MTA, etc).

    The **fcSDK** engine is built to be completely thread safe and to take advantage of the .NET multi-threaded paradigm. This yields large gains in both scalability and performance. The single-threaded nature of the FCApplication was perhaps the largest performance bottleneck with FCFL, due to limitations in the base COM subsystem. This meant that cached item requests were all passed in a serialized manner to the cache management routines.

    With **fcSDK**, all such requests are able to be processed in parallel. Our tests show an asymptotic improvement in performance for such caching requests.

* Open, standardized, and multi-platform

    The Microsoft&trade; .NET Common Language Infrastructure (CLI) which defines all the core operating principles behind how the CLR works was published by Microsoft&trade; as a [standard](http://www.ecma-international.org/publications/standards/ecma-335.htm) to the [ECMA International](http://www.ecma-international.org/) standards body in December of 2002. Along with this standard, Microsoft&trade; submitted a [standard for C#](http://www.ecma-international.org/publications/standards/ecma-334.htm) as a language to accompany the CLI. Later, both standards were later adopted by the [International Standards Organization](http://www.iso.org/) (ISO) as [ISO 23270 - C# Language Specification](http://www.iso.org/iso/en/CatalogueDetailPage.CatalogueDetail?CSNUMBER=36768&ICS1=35&ICS2=60&ICS3=) and [ISO 23271 - Common Language Infrastructure](http://www.iso.org/iso/en/CatalogueDetailPage.CatalogueDetail?CSNUMBER=36769&ICS1=35&ICS2=60&ICS3=).

    Microsoft&trade; officially supports .NET on Windows 98, Windows 2000, Windows XP, and Windows 2003 Server. Since .NET is an open standard, there have been several 3rd party implementations on other platforms such as Microsoft&trade;'s own [Shared Source CLI implementation](http://msdn.microsoft.com/net/sscli/) for Windows and FreeBSD (which has been adapted for other platforms including Linux).

    There have been several open source implementations of the CLI and C# standards, most notable are the [Mono Project](http://www.mono-project.com/) by [Ximian and Novell](http://www.novell.com/linux/ximian.html) and the [DotGNU/Portable.NET Project](http://www.dotgnu.org/) by the [GNU Project/Free Software Foundation](http://www.gnu.org/).

    Dovetail Software is considering the possibility of releasing a version of **fcSDK** for the [Mono](http://www.mono-project.com/) platform. This could potentially allow **fcSDK** to run on Sun Microsystems&trade; Solaris&trade;, Hewlett Packard&trade; HP-UX&trade;, and several Linux distributions in addition to Microsoft&trade; Windows&trade;. Support for **fcSDK** for the Mono platform will be based on customer demand. If this is of interest to you, please contact Dovetail Software.

## Performance Enhancements

Several inherent design features of the .NET runtime give the **fcSDK** a performance boost naturally. In addition to this, great care has been taken during the development of the **fcSDK** to ensure that, at least, no major bottlenecks or inefficiencies exist and, at best, various data access and processing functions are optimized as much as possible.

Here are some of the inherent and designed performance enhancements in the **fcSDK**:

* Multi-threading. All .NET objects, when called from a COM client, are seen as 'Free-Threaded', 'Multi-Threaded Apartment' (MTA), or 'Both'. Previous products were either 'Apartment' or 'Single-Threaded Apartment' which could cause blocking in a multi-user system (like a Web Application).
* The **fcSDK** benefits from the well-designed, well-tested, and high-performing data structures and objects that are provided natively in the .NET Framework Base Class Library (BCL).
* All major data access used by or through the **fcSDK** uses SQL prepared statements and bind variable support. This allows Microsoft&trade; SQL Server&trade; and Oracle&trade; to cache the execution plan of a statement, allowing it to execute faster on subsequent calls.
* Support for batching of SQL INSERT and UPDATE Statements (for Microsoft&trade; SQL Server&trade; only)
* Other SQL improvements have been made in the base SQL generated by **fcSDK**
More objects are cached than in previous products. This allows for faster access and fewer database round-trips.

## Object Oriented Libraries Design

The **fcSDK** is a pure object oriented environment. Every useful artifact is defined as an object, and many objects may be overridden to allow you to customize in your own desired behavior. A good example of this is the new CacheManager and CacheBase objects. While **fcSDK** ships with a variety of predefined objects (that are cached on the application server), it is trivial for you to define your own user-defined cache for some commonly-used, user-specific data. For example, suppose that your implementation contained a new, user-defined, table for common product configurations. You might desire to have these configurations cached, so that they did not need to be queried from the database each time they were used. By adding a few lines of XML to the **fcSDK** configuration file, the **fcSDK** will create an indexed cache based on the specified table.

The API in the **fcSDK** has been greatly refined. Many naming and calling convention inconsistencies have been eliminated. Various inconsistent or non-standard concepts have been removed or changed to fall in line with generally accepted practices and good design. For example, the concept of a "Bulk" no longer exists in **FCFL.NET** since it provided ambiguity and confusion of purpose and overlap of functionality. Its functionality has been consolidated into other areas and new usage patterns have replaced its use.

Another example of this refinement is the calling of API toolkits. Previously, to create a case, you might call the create_case API on the FCCS API Toolkit for FCFL. This method took more than two dozen required or optional parameters. All the APIs have been replaced with a consistent and well-designed pattern. Every API can be called one of two ways: A minimal way with only the required parameters, or an Advanced way where you can create a "Setup" object (i.e. CreateCaseSetup) and set many different options for advanced functionality and pass that to the particular API method.

## Caching of Frequently Used Data

**FCFL.NET** provides a new multi-threaded cache manager. This manager allows access to cached data. The cached data includes user-defined lists, string lists, countries/states/time-zones, and the ADP schema itself.

All of the cached data is indexed and quickly accessible. It can be accessed in a consistent, standard, and object-oriented way making it easy to use, for example, DataBinding in WinForms or ASP.NET. Since the CacheManager can be accessed from multiple threads, cached data access is now much faster with **FCFL.NET**. The CacheManager is flexible and configurable, easily allowing for custom data to be cached and accessed the same way as other cached data.

## Advanced Instrumentation and Logging

**FCFL.NET** provides a new logging framework that allows for dynamic configuration of logging on-the-fly (while a program is running), among other features. Log entries can be configured to send emails, write to a database, write to a syslog server, to a rolling file set, and several other locations. In addition to configuring where the log entries are written, you can control what is written and how it appears in the log destination. New log filters allow you to configure SQL statements to go to one log file, warnings to another, and errors to an email address, for example. It is also possible to log entries related to a particular user to a separate log destination. Large or lengthy SQL queries can be sent to a database administrator to alert him/her of problems in the database.

**FCFL.NET** also includes integration with the Windows Performance Monitor utility. Specific aspects of **FCFL.NET**'s performance can be monitored while an application is running such as "Average Query Duration", "Queries / Sec", "# Errors Total", and "# Active Sessions". There is also a PerfManager class that assists developers in instrumenting their own applications with Performance Monitor counters.

## Flexible Licensing Framework

**FCFL.NET** provides a flexible and comprehensive licensing framework to allow maximum flexibility and customization to match the needs of customers. Multiple products can be licensed differently under different conditions with different restrictions or provisions. There is now a new concept of "grace periods" and "grace logons". If the number of licensed users is exceeded, a few more can still log on and warnings are logged to alert the administrator about a potential problem.

This new framework allows First Chocie to be more flexible with respect to customer needs and gives the customer more options and choices.

## Unicode Support

Since the **fcSDK** is based on the inherently Unicode-based .NET Framework, Unicode support is native and natural. The **fcSDK** allows for Unicode support even in Clarify versions earlier than 11.5 (which is when the first official support of Unicode was offered by Amdocs).

For more information on working with Unicode data using the **fcSDK**, please see the [Unicode Storage Guide](unicode-data.md) in this documentation.

## Localization and Internationalization

The **fcSDK** also gains another out-of-the-box advantage by being based on the .NET Framework. The .NET Framework is internationally-aware and provides support for over 200 different, distinct cultures. **FCFL.NET** provides extra functionality that helps application developers write localized applications, such as localized error messages, localized string resource storage and retrieval, date/time format handling, and currency to name a few.

## Compatibility With Existing Applications

The **fcSDK** includes a COM "Compatibility Layer" which allows it to appear as and behave similar to the original Dovetail FCFL and FCFL-based API Toolkit products. This allows **fcSDK** to be used "plug and play" with existing applications written for FCFL and FCFL-based API Toolkits.
