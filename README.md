# Intro
Thank you for downloading the Hovel House CloudKit Plugin

The plugin was written speficially with Apple Arcade in mind. It is a thin wrapper over the CloudKit framework and made to work on MacOS, iOS and TVOS. It was written as an alternative to Prime31's and Stan's Assets CloudKit plugins which do not offer full access to the CloudKit API.

If you got your cloud saves working with either of those plugins and didn't need access to things like CKRecord's ChangeToken then good on you! But if you were aggrivated that you didn't have access to more advanced functions than this plugin is for you.

The CloudKit plugin is a work in progress. While the majority of the API is covered. Some of it is not yet (some things are more difficult to marshal than others). These will become available in the following weeks. I welcome your feedback on what to prioritize.

The plugin is written using a DSL (Domain Specific Language) which automatically parses the API and generates intermediary code. It's aim is to be a close as possible to writing the equivalent in objctive-c and makes very few assumptions and how you intend to use it. It simply marshals your data to the appropriate API calls.

# Setup

Just do the standard unity asset import thing. There are three libraries provided. One dynamic library for MacOS, one static library for iOS, and one static library for TVOS.

The plugin comes with some examlpes that you can run to validate everything is working as intended. Nothing fancy here, just some code and logs to the screen. Add ExampleHub, and examples one through six to you build scenes list to run them on device. The examples will not run in editor. 

To use, import the namespace "HovelHouse". All class names and methods match their Objective-C counterparts. 

# Documentation

I don't have any generated yet. But since the plugin (with a few exceptions) is simply a facade over the Objective-C api. You may refer to apple's documentation for the method in question. The parameter list will usually be the same.

# Known Issues
* Callbacks are store with strong references to their instances (mem-leak)
* Some CloudKit api methods not implemented yet

## Road Map

### P1
* Fix compile warnings

### P2
* Get continuous integration up and running with UnityCloudBuild
* Use weak references for storing property callbacks
* Reuse existing C# instances instead of creating new when possible
* Support field arrays in CKRecord
* Remove the type-specific Set(Type)ForKey and replace them with overloaded versions of SetObjectForKey (Breaking Change)
* Array support for CKRecord's setObject forKey methods
* Figure out where example scenes are supposed to live, if you're not supposed to have scenes in packages.

### P3
* Support website
* Unit tests for everything
* Better code examples
* Tutorials
* Automated documentation

### P4
* Document storage support 
* Add classes / methods not supported on TVOS, and conditionally compile them out of TVOS
* ? you let me know
* CloudSaveManager? - a save system that helps with cloud saves and conforms to apple's save paradigm
* Helper event for account status changes

# License

Use of this plugin is allowed only with express written permission of it's author. You are not allowed to distribute or share this plugin with out express written consent of it's author.
