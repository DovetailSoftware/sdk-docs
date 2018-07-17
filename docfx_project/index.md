# Introduction to fcSDK

Welcome to the Dovetail Software Development Kit for Clarify (fcSDK ) SDK Documentation. The **fcSDK** is Dovetail Software's next-generation technology, based on Microsoft™'s .NET framework, that allows you to write Clarify-based customizations and programs easily and quickly.

The **fcSDK** contains libraries, utilities, documentation, examples, and sample applications. Among the list of libraries included is the First Choice Foundation Layer for .NET (FCFL.NET). FCFL.NET is based on and emulates the successful Dovetail FCFL platform. FCFL.NET provides most of the same concepts and employs the same basic paradigms as FCFL. If you know how to write FCFL programs, it will be very easy to move up to FCFL.NET and the fcSDK. For more information about FCFL, please see the FCFL Installation and User Guide.

Another set of libraries worth noting are the new Microsoft™ .NET-based FCFL.NET Toolkits. These toolkits allow you to perform, quickly and easily, almost every action that can be performed in the Clarify thick-client using familiar .NET object-oriented patterns. The FCFL.NET Toolkits are based on the popular Dovetail FCFL Toolkits (such as the FCFL API Toolkit for ClearSupport).

**NOTE:** For information about the latest version of the **fcSDK** and previous ones, please view the [version history](articles/version-history.md).

## In the fcSDK Documentation:

* [Installation Guide](articles/installation-guide.md)<br/>Provides a step-by-step guide on installing the **fcSDK** and the programmer demo applications.
* [Getting Started](articles/getting-started.md)<br/>Provides a quick checklist for getting started navigating the documentation and using the fcSDK
* [Overview of the fcSDK](articles/overview.md)<br/>Describes the basic architecture and features of the fcSDK
* [Guide to the features in the fcSDK](articles/feature-guide.md)<br/>Highlights the features of the **fcSDK** and advantages over previous versions
* [What's New in the **fcSDK** (Version History)](articles/version-history.md)<br/>Describes the changes from one version to another of the fcSDK
* Using and Configuring the fcSDK
    * [Developer Walkthrough - FCFL.NET Objects](articles/walkthroughs/fcfl-net-objects.md)
    * [Developer Walkthrough - Toolkit Fundamentals](articles/walkthroughs/toolkit.md)
    * [Accessing Data with ClarifyGeneric](articles/fcsdk-data-access.md)
    * [Using the Caching Features of the **fcSDK**](articles/caching-features.md)
    * [Application Logging](articles/logging/application-logging.md)
    * [Data Restrictions](articles/data-restrictions.md)
    * [fcSDK Configuration](articles/basic-configuration.md)
    * [Time Zones](articles/time-zones.md)
    * [Enabling Storage of Unicode Data](articles/unicode-data.md)
    * [Making World-Ready Applications With the **fcSDK**](articles/making-applications.md)
    * [Using the **fcSDK** Utilities](articles/fcsdk-utilities.md)
* [fcSDK System Requirements](articles/system-requirements.md)<br/>Provides the minimum and recommended system requirements for both the computer the **fcSDK** is on as well as the database server software and platform
* [Product Support Options](articles/product-support.md)<br/>Provides information for receiving technical assistance with the fcSDK
* [About Dovetail Software](articles/about-dovetail.md)<br/>Contains information about the history of Dovetail Software, legal notifications, and credits

## The fcSDK Compatibility Guide

The **fcSDK** includes a COM "Compatibility Layer" which allows it to appear as and behave similar to the original Dovetail FCFL and Dovetail Toolkit API products. This allows the **fcSDK** to be used "plug and play" with existing applications written for FCFL and the FCFL-based toolkit APIs.

* The [**fcSDK** COM Compatibility Guide](articles/compatibility-guide.md)

## [API Reference](api/index.md)

Supplies syntax, code samples, and related information for each class in the **fcSDK** namespaces.

* [FChoice.Common Namespace](api/FChoice.Common.yml)<br/>Provides basic supporting services like configuration, logging, and error management services to Dovetail .NET-based products.
* [FChoice.Foundation.Clarify Namespace](api/FChoice.Foundation.Clarify.yml)<br/>Provides Clarify-specific authentication, business logic, and data access for Clarify databases.
* Individual Toolkit Namespaces:
    * [FChoice.Toolkits.Clarify.Contracts](api/FChoice.Toolkits.Clarify.Contracts.yml) - API Toolkit for ClearContracts operations
    * [FChoice.Toolkits.Clarify.DepotRepair](api/FChoice.Toolkits.Clarify.DepotRepair.yml) - API Toolkit for Depot Repair operations
    * [FChoice.Toolkits.Clarify.FieldOps](api/FChoice.Toolkits.Clarify.FieldOps.yml) - API Toolkit for Field Operations
    * [FChoice.Toolkits.Clarify.Interfaces](api/FChoice.Toolkits.Clarify.Interfaces.yml) - API Toolkit for core operations such as sites and contact manipulation
    * [FChoice.Toolkits.Clarify.Logistics](api/FChoice.Toolkits.Clarify.Logistics.yml) - API Toolkit for ClearLogistics operations
    * [FChoice.Toolkits.Clarify.Quality](api/FChoice.Toolkits.Clarify.Quality.yml) - API Toolkit for ClearQuality operations
    * [FChoice.Toolkits.Clarify.Sales](api/FChoice.Toolkits.Clarify.Sales.yml) - API Toolkit for ClearSales operations
    * [FChoice.Toolkits.Clarify.Support](api/FChoice.Toolkits.Clarify.Support.yml) - API Toolkit for ClearSupport operations