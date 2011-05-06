# GDocs2Pdf

Have you ever been in need of a convenient way to convert a Word document (.doc) into a Portable Document Format (.pdf)?  

I do this fairly often, which prompted me to write this script using Google Docs.

It works by uploading the input file to a collection named "GDocs2Pdf" in your Google Docs account, and then requesting a Pdf version for download.  If conversion is successful, the filename will have a .pdf extension appended and will be downloaded to the directory containing the input file.

Once installed and placed on your path, simply type `gdocs2pdf.sh example-file.doc` to run the script.

While I regularly use this script to convert Word documents to Pdf, other input formats are acceptable.  Also, by modifying the `--format=pdf` argument on line 16, you can request alternative output file formats.  Log into your Google Docs account to see which input and output formats are currently supported.

# Prerequisites

1. A Google Docs account
1. A collection named "GDocs2Pdf" in your account
1. The _GoogleCL_ command line utility installed^(1,2) on your system
1. A connection to the internet

# Installation

1. Paste the script into a file named "gdocs2pdf.sh"
1. Modify the path to the _GoogleCL_ utility on line 8 as appropriate
1. Place it on your path, for example in your `~/bin` directory
1. Make it executable `chmod u+x gdocs2pdf.sh`

__Notes__

[1]
: [[_GoogleCL_ webpage](http://code.google.com/p/googlecl/)].  The utility is written in Python.  Please see this page for installation instructions.

[2]
: Configuration of _GoogleCL_ is required to authorize access to your account.  Configuration settings are initialized upon the first invocation of the tool, whether they are supplied as command line arguments or as answers to the interactive prompts.  These defaults are used unless overridden using the flagged arguments.  To change the defaults, see [[Configuration Options](http://code.google.com/p/googlecl/wiki/ConfigurationOptions)].



