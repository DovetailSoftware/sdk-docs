SDK Documentation
=================

## Introduction

This repo includes the [Dovetail fcSDK documentation](docfx_project), which is the best resource for everything about how to install, configure, and use the SDK.

The documentation is built and used in two different ways.

* **Online documentation** - the 10K+ html pages that make up the SDK documentation are maintained in this repo, and are built from both markdown and YAML pages.

* **Compiled Help (CHM)** - using the html pages, a CHM file can be built for offline usage.

## Build Process

There are two different applications used to build the html pages and CHM file.

For the conversion of source code and markdown to online documentation, [DocFX](https://dotnet.github.io/docfx/index.html) is used to generate the files that make up the website.

1. Clone this repo - a local copy of this repo is necessary to build the documentation.

1. Install DocFX - To use DocFX as a command-line tool, it must be installed. DocFX ships as a chocolatey package. Install docfx through [Chocolatey](https://chocolatey.org/install) by calling `choco install docfx -y`.

1. Update the documentation - make the necessary changes to the html and markdown pages. Move the previous release notes from `whatsnew.md' to `version-history.md`, then add the new notes for the new release in  `whatsnew.md'. Check and update the copyright in the "_appFooter" key in `docfx.json` if the year is different than the previous release.

1. Build the website - from the working directory of your local copy of this repo, run the following command:

	```
	rake docfx
	```

	This rake task uses docfx to build the website, including the html, js, css, and images. When that process is finished, you can view the generated website at [http://localhost:8080](http://localhost:8080) but only until you hit Enter to let the build to finish.

	The generated _site folder that is the online documentation is not part of this repo.

1. To generate the CHM file, **HTML Help Workshop** is used to convert the website into the CHM file. To build the file, use this rake command:

	```
	rake chm
	```

	This task will build the CHM file in the working directory, and then it can be opened, viewed, and shared.

	The CHM file is not part of this repo. The Help Workshop uses the following files as it build the CHM file:

	* sdk.hhp - this is the project file, which has the options and files to be included.
	* sdk.hhc - this file is used to build the TOC in the CHM file.
	* sdk.hhk - this is used to build the index for the CHM file.

	If new APIs or other documentation files are added to (or removed from) the SDK, then these files need to get manually updated to include the changes in the CHM file.

	Since docfx does some website content handling via JavaScript, the `build-chm.bat` file is used to override the _main.css_ and _docfx.js_ files when building the CHM file.
  
	After the `*.chm` file has been generated and verified for correctness it needs to be copied to `docs` folder under the root folder of the cloned `dovetail-sdk` repository so the build release process may pick it up and include in the installer.

## The documentation

The markdown pages found in this repo consist of pages for features, installation, configuration, walk-throughs, and APIs. There are over 9,800 pages of markdown, so there is a lot of information within them.

Changes in SDK documentation should be done in the markdown files. As new configuration settings are added or changed, then the appropriate markdown pages need to get updated.

The latest SDK DLL files are found in `docfx_project\src`, and are used to keep the .Net API documentation up to date. The build process scans these files, and creates YAML files from them, which then get built into html pages.

If new properties are added to the .Net APIs, then the new DLL files need to get copied to this repo, and the API documentation will get updated by docfx.

### Sample Pages

* [Version History](docfx_project/articles/version-history.md)
* [Requirements](docfx_project/articles/install/requirements.md)
* [Installation Guide](docfx_project/articles/installation-guide.md)
* [Feature Guide](docfx_project/articles/feature-guide.md)

