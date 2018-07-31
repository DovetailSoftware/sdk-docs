# Overview of the fcSDK Compatibility Layer

### General

For the last few years, many customers have been successfully using the First Choice Foundation Library (FCFL) and the FCFL API Toolkits for their Clarify programming needs. The fcSDK is the next generation framework for the Clarify environment - built on top of Microsoft's .NET Framework. The fcSDK has been written, from the ground up, to use the .NET framework to maximize your performance, scalability, and ease of programming.

We understand that many existing First Choice customers will not be able to switch over to the fcSDK immediately, due to the large number of applications already written to FCFL and the FCFL API Toolkits. For example, the web pages in our fcClient thin client are written to the FCFL API.

To address these issues, the fcSDK has been written with a special "Compatibility Layer", which allows existing code that uses FCFL and the FCFL API Toolkits (such as fcClient) to work with the fcSDK with virtually no code changes -- essentially allowing fcSDK to be a "plug and play" replacement for FCFL and the toolkits. There are very few changes that will affect existing FCFL/toolkit code. Most of the changes are minor, and should not affect users at all.

This section of the FCFL.NET documentation captures the differences between FCFL and the FCFL.NET Compatibility Layer.

**Notable exceptions**

ProgID, CoClass ID (CLSID), and Interface ID (IID) changes: As the compatibility objects are actually new objects with a different ProgID, CLSID, and IID, any references an object's ProgID, CLSID, or IID directly will be affected.

Web applications typically only reference the FCApplication and individual toolkit objects' ProgIDs

Compiled windows applications (such as programs written in Visual Basic or in C/C++) typically reference the FCFL and toolkit type libraries (typelib, TLB) directly and will be affected by the fcSDK's new type libraries and GUIDs. See the detail sections for more details on the new type libraries and their new CLSID's and IID's.

Use of the FCGeneric.Records property, although still compatible, is not recommended. Refer to the FCGeneric section of this document for more details on the caveats and limitations.

**Differences between FCFL and FCFL.NET Compatibility Layer:**

* FCFL/FCFL.NET Type Library Changes
* FCApplication Object Changes
* FCSession Object Changes
* FCGeneric Object Changes
* FCBulk Object Changes
* FCSQLExec Object Changes
* FCList Object Changes
* MockAdoField
* Configuration Changes

**Differences between FCFL API Toolkits and fcSDK API Toolkit Compatibility Layer:**

* First Choice API Toolkit for ClearContracts
* First Choice API Toolkit for ClearLogistics
* First Choice API Toolkit for ClearLogistics Field Operations
* First Choice API Toolkit for ClearQuality
* First Choice API Toolkit for ClearSupport
* First Choice API Toolkit for Depot Repair
* First Choice API Toolkit for Interfaces
* First Choice API Toolkit for ClearSales
