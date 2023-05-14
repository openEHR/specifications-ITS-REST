# NAME

WWW::OpenAPIClient::Role - a Moose role for the EHR API

<table>
    <colgroup>
        <col style=\"width: 20%;\">
        <col style=\"width: 80%;\">
    </colgroup>
    <thead>
    <tr>
        <th colspan=\"2\">© 2018 - 2023 The openEHR Foundation</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td colspan=\"2\">
            The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.
        </td>
    </tr>
    <tr>
        <td><strong>Licence</strong></td>
        <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.
            <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>
        </td>
    </tr>
    <tr>
        <td><strong>Support</strong></td>
        <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>
            Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>
        </td>
    </tr>
    </tbody>
</table>

### Amendment Record

<table>
    <colgroup>
        <col style=\"width: 9%;\">
        <col style=\"width: 55%;\">
        <col style=\"width: 18%;\">
        <col style=\"width: 18%;\">
    </colgroup>
    <thead>
    <tr>
        <th>Issue</th>
        <th>Details</th>
        <th>Raiser, Implementer</th>
        <th>Completed</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3</a></th>
    </tr>
    <tr>
        <td>5.1</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:
            Migrate REST API specs to OpenAPI Specification</td>
        <td>S Iancu</td>
        <td>19 Dec 2022</td>
    </tr>
    <tr>
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>
    </tr>
    <tr>
        <td>4.2</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:
            Add double quotes to ETag and If-Match headers</td>
        <td>S Iancu</td>
        <td>21 Mar 2021</td>
    </tr>
    <tr>
        <td>4.1</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:
            Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>
        <td>J Smolka, M Polajnar, S Iancu</td>
        <td>08 Mar 2021</td>
    </tr>
    <tr>
        <td>4.0</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:
            Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>
        <td>J Smolka, S Iancu</td>
        <td>06 Mar 2021</td>
    </tr>
    <tr>
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>
    </tr>
    <tr>
        <td>3.2</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:
            Fix response status code for semantic validation errors (fixes also
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>
        <td>P Pazos, S Iancu</td>
        <td>01 Oct 2019</td>
    </tr>
    <tr>
        <td>3.1</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:
            Fix and improve documentation on EHR (fixes also
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>
        <td>P Pazos, S Iancu</td>
        <td>28 Sep 2019</td>
    </tr>
    <tr>
        <td>3.0</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>
        <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>
        <td>1 Sep 2019</td>
    </tr>
    <tr>
        <td>2.2</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>
        <td>J Smolka, S Iancu</td>
        <td>12 May 2019</td>
    </tr>
    <tr>
        <td></td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>
        <td>J Smolka, S Iancu</td>
        <td>12 May 2019</td>
    </tr>
    <tr>
        <td>2.1</td>
        <td>Update links to new openEHR specifications website</td>
        <td>S Iancu</td>
        <td>16 Dec 2018</td>
    </tr>
    <tr>
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>
    </tr>
    </tbody>
</table>


# Intro


## Acknowledgements

### Editor
- Sebastian Iancu, Architect, Code24, Netherlands

### Contributors
This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions.
- Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany
- Bjørn Næss, DIPS, Norway
- Bostjan Lah, Senior Architect, Better, Slovenia
- Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden
- Heath Frankel, Ocean Informatics, Australia
- Ian McNicoll MD, FreshEHR, UK
- Jake Smolka, Software Engineer, Better, Slovenia
- Matija Polajnar, PhD, Software Engineer, Better, Slovenia
- Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay
- Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden
- Sebastian Iancu, Architect, Code24, Netherlands
- Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK
- Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board

### Trademarks
- 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org)
- 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)


## Preface

### Purpose

This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.

### Related Documents

Prerequisite documents for reading this document include:

- The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)

Related documents include:

- The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html)
- The [openEHR Global Class Index](https://specifications.openehr.org/classes)
- The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest)
- The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html)
- The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)

### Status

This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml).
Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.

The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.

### Feedback

Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).

Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).

To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).

### Conformance

tbd.



# VERSION

Automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: latest
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.PerlClientCodegen
For more information, please visit [https://specifications.openehr.org/](https://specifications.openehr.org/)

## A note on Moose

This role is the only component of the library that uses Moose. See
WWW::OpenAPIClient::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Generator in the OpenAPI Generator project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'WWW::OpenAPIClient::Role';

        package main;

        my $api = MyApp->new({ tokens => $tokens });

        my $pet = $api->get_pet_by_id(pet_id => $pet_id);


## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,

        # oauth
        access_token => $oauth_token,

        # keys
        $some_key => { token => $token,
                       prefix => $prefix,
                       in => $in,             # 'head||query',
                       },

        $another => { token => $token,
                      prefix => $prefix,
                      in => $in,              # 'head||query',
                      },
        ...,

        };

        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string.

The tokens will be placed in a L<WWW::OpenAPIClient::Configuration> instance
as follows, but you don't need to know about this.

- `$cfg->{username}`

    String. The username for basic auth.

- `$cfg->{password}`

    String. The password for basic auth.

- `$cfg->{api_key}`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $cfg->{api_key} = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$cfg->{api_key_prefix}`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $cfg->{api_key_prefix} = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$cfg->{access_token}`

    String. The OAuth access token.

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method
returns the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a WWW::OpenAPIClient::PetApi instance

        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://openapi-generator.tech` for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/openapitools/openapi-generator
          $ cd openapi-generator
          $ mvn package
          $ java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate \
    -i [URL or file path to JSON OpenAPI API spec] \
    -g perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API
you just built.

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format
    -H           HTML format
    -m           Markdown format
    -h           print this help message
    -c           your application class


The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the OpenAPI
spec. If so, this is available via the `class_documentation()` and
`method_documentation()` methods on each generated object class, and the
`method_documentation()` method on the endpoint API classes:

        my $cmdoc = $api->pet_api->method_documentation->{$method_name};

        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};


Each of these calls returns a hashref with various useful pieces of information.

# Installation Prerequisites

Use [cpanm](https://metacpan.org/pod/distribution/App-cpanminus/bin/cpanm) to install the module dependencies:

```
cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
cpanm --quiet --no-interactive Class::Accessor Test::Exception Test::More Log::Any LWP::UserAgent URI::Query Module::Runtime DateTime Module::Find Moose::Role JSON
```

# LOAD THE MODULES

To load the API packages:
```perl
use WWW::OpenAPIClient::COMPOSITIONApi;
use WWW::OpenAPIClient::CONTRIBUTIONApi;
use WWW::OpenAPIClient::DIRECTORYApi;
use WWW::OpenAPIClient::EHRApi;
use WWW::OpenAPIClient::EHRSTATUSApi;

```

To load the models:
```perl
use WWW::OpenAPIClient::Object::AbstractEntry;
use WWW::OpenAPIClient::Object::Action;
use WWW::OpenAPIClient::Object::Activity;
use WWW::OpenAPIClient::Object::AdminEntry;
use WWW::OpenAPIClient::Object::ArchetypeId;
use WWW::OpenAPIClient::Object::Archetyped;
use WWW::OpenAPIClient::Object::Attestation;
use WWW::OpenAPIClient::Object::AuditDetails;
use WWW::OpenAPIClient::Object::CareEntry;
use WWW::OpenAPIClient::Object::Clstr;
use WWW::OpenAPIClient::Object::CodePhrase;
use WWW::OpenAPIClient::Object::Composition;
use WWW::OpenAPIClient::Object::ContentItem;
use WWW::OpenAPIClient::Object::Contribution;
use WWW::OpenAPIClient::Object::DataStructure;
use WWW::OpenAPIClient::Object::DataValue;
use WWW::OpenAPIClient::Object::DvAmount;
use WWW::OpenAPIClient::Object::DvBoolean;
use WWW::OpenAPIClient::Object::DvCodedText;
use WWW::OpenAPIClient::Object::DvCount;
use WWW::OpenAPIClient::Object::DvDate;
use WWW::OpenAPIClient::Object::DvDateTime;
use WWW::OpenAPIClient::Object::DvDuration;
use WWW::OpenAPIClient::Object::DvEhrUri;
use WWW::OpenAPIClient::Object::DvEncapsulated;
use WWW::OpenAPIClient::Object::DvIdentifier;
use WWW::OpenAPIClient::Object::DvInterval;
use WWW::OpenAPIClient::Object::DvIntervalOfDateTime;
use WWW::OpenAPIClient::Object::DvMultimedia;
use WWW::OpenAPIClient::Object::DvOrdered;
use WWW::OpenAPIClient::Object::DvOrdinal;
use WWW::OpenAPIClient::Object::DvParsable;
use WWW::OpenAPIClient::Object::DvProportion;
use WWW::OpenAPIClient::Object::DvQuantified;
use WWW::OpenAPIClient::Object::DvQuantity;
use WWW::OpenAPIClient::Object::DvScale;
use WWW::OpenAPIClient::Object::DvState;
use WWW::OpenAPIClient::Object::DvTemporal;
use WWW::OpenAPIClient::Object::DvText;
use WWW::OpenAPIClient::Object::DvTime;
use WWW::OpenAPIClient::Object::DvUri;
use WWW::OpenAPIClient::Object::Ehr;
use WWW::OpenAPIClient::Object::EhrStatus;
use WWW::OpenAPIClient::Object::Element;
use WWW::OpenAPIClient::Object::Error;
use WWW::OpenAPIClient::Object::Evaluation;
use WWW::OpenAPIClient::Object::Event;
use WWW::OpenAPIClient::Object::EventContext;
use WWW::OpenAPIClient::Object::FeederAudit;
use WWW::OpenAPIClient::Object::FeederAuditDetails;
use WWW::OpenAPIClient::Object::Folder;
use WWW::OpenAPIClient::Object::GenericId;
use WWW::OpenAPIClient::Object::HierObjectId;
use WWW::OpenAPIClient::Object::History;
use WWW::OpenAPIClient::Object::ImportedVersion;
use WWW::OpenAPIClient::Object::Instruction;
use WWW::OpenAPIClient::Object::InstructionDetails;
use WWW::OpenAPIClient::Object::IsmTransition;
use WWW::OpenAPIClient::Object::Item;
use WWW::OpenAPIClient::Object::ItemList;
use WWW::OpenAPIClient::Object::ItemSingle;
use WWW::OpenAPIClient::Object::ItemStructure;
use WWW::OpenAPIClient::Object::ItemTable;
use WWW::OpenAPIClient::Object::ItemTree;
use WWW::OpenAPIClient::Object::Link;
use WWW::OpenAPIClient::Object::Locatable;
use WWW::OpenAPIClient::Object::LocatableRef;
use WWW::OpenAPIClient::Object::NewContribution;
use WWW::OpenAPIClient::Object::ObjectId;
use WWW::OpenAPIClient::Object::ObjectRef;
use WWW::OpenAPIClient::Object::ObjectVersionId;
use WWW::OpenAPIClient::Object::Observation;
use WWW::OpenAPIClient::Object::OriginalVersion;
use WWW::OpenAPIClient::Object::Participation;
use WWW::OpenAPIClient::Object::PartyIdentified;
use WWW::OpenAPIClient::Object::PartyProxy;
use WWW::OpenAPIClient::Object::PartyRef;
use WWW::OpenAPIClient::Object::PartyRelated;
use WWW::OpenAPIClient::Object::PartySelf;
use WWW::OpenAPIClient::Object::Pathable;
use WWW::OpenAPIClient::Object::ReferenceRange;
use WWW::OpenAPIClient::Object::RevisionHistory;
use WWW::OpenAPIClient::Object::RevisionHistoryItem;
use WWW::OpenAPIClient::Object::TemplateId;
use WWW::OpenAPIClient::Object::TermMapping;
use WWW::OpenAPIClient::Object::TerminologyCode;
use WWW::OpenAPIClient::Object::TerminologyId;
use WWW::OpenAPIClient::Object::UidBasedId;
use WWW::OpenAPIClient::Object::UpdateAttestation;
use WWW::OpenAPIClient::Object::UpdateAudit;
use WWW::OpenAPIClient::Object::UpdateVersion;
use WWW::OpenAPIClient::Object::Version;
use WWW::OpenAPIClient::Object::Versionable;
use WWW::OpenAPIClient::Object::VersionedComposition;
use WWW::OpenAPIClient::Object::VersionedEhrStatus;
use WWW::OpenAPIClient::Object::VersionedObject;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use WWW::OpenAPIClient::COMPOSITIONApi;
use WWW::OpenAPIClient::CONTRIBUTIONApi;
use WWW::OpenAPIClient::DIRECTORYApi;
use WWW::OpenAPIClient::EHRApi;
use WWW::OpenAPIClient::EHRSTATUSApi;

# load the models
use WWW::OpenAPIClient::Object::AbstractEntry;
use WWW::OpenAPIClient::Object::Action;
use WWW::OpenAPIClient::Object::Activity;
use WWW::OpenAPIClient::Object::AdminEntry;
use WWW::OpenAPIClient::Object::ArchetypeId;
use WWW::OpenAPIClient::Object::Archetyped;
use WWW::OpenAPIClient::Object::Attestation;
use WWW::OpenAPIClient::Object::AuditDetails;
use WWW::OpenAPIClient::Object::CareEntry;
use WWW::OpenAPIClient::Object::Clstr;
use WWW::OpenAPIClient::Object::CodePhrase;
use WWW::OpenAPIClient::Object::Composition;
use WWW::OpenAPIClient::Object::ContentItem;
use WWW::OpenAPIClient::Object::Contribution;
use WWW::OpenAPIClient::Object::DataStructure;
use WWW::OpenAPIClient::Object::DataValue;
use WWW::OpenAPIClient::Object::DvAmount;
use WWW::OpenAPIClient::Object::DvBoolean;
use WWW::OpenAPIClient::Object::DvCodedText;
use WWW::OpenAPIClient::Object::DvCount;
use WWW::OpenAPIClient::Object::DvDate;
use WWW::OpenAPIClient::Object::DvDateTime;
use WWW::OpenAPIClient::Object::DvDuration;
use WWW::OpenAPIClient::Object::DvEhrUri;
use WWW::OpenAPIClient::Object::DvEncapsulated;
use WWW::OpenAPIClient::Object::DvIdentifier;
use WWW::OpenAPIClient::Object::DvInterval;
use WWW::OpenAPIClient::Object::DvIntervalOfDateTime;
use WWW::OpenAPIClient::Object::DvMultimedia;
use WWW::OpenAPIClient::Object::DvOrdered;
use WWW::OpenAPIClient::Object::DvOrdinal;
use WWW::OpenAPIClient::Object::DvParsable;
use WWW::OpenAPIClient::Object::DvProportion;
use WWW::OpenAPIClient::Object::DvQuantified;
use WWW::OpenAPIClient::Object::DvQuantity;
use WWW::OpenAPIClient::Object::DvScale;
use WWW::OpenAPIClient::Object::DvState;
use WWW::OpenAPIClient::Object::DvTemporal;
use WWW::OpenAPIClient::Object::DvText;
use WWW::OpenAPIClient::Object::DvTime;
use WWW::OpenAPIClient::Object::DvUri;
use WWW::OpenAPIClient::Object::Ehr;
use WWW::OpenAPIClient::Object::EhrStatus;
use WWW::OpenAPIClient::Object::Element;
use WWW::OpenAPIClient::Object::Error;
use WWW::OpenAPIClient::Object::Evaluation;
use WWW::OpenAPIClient::Object::Event;
use WWW::OpenAPIClient::Object::EventContext;
use WWW::OpenAPIClient::Object::FeederAudit;
use WWW::OpenAPIClient::Object::FeederAuditDetails;
use WWW::OpenAPIClient::Object::Folder;
use WWW::OpenAPIClient::Object::GenericId;
use WWW::OpenAPIClient::Object::HierObjectId;
use WWW::OpenAPIClient::Object::History;
use WWW::OpenAPIClient::Object::ImportedVersion;
use WWW::OpenAPIClient::Object::Instruction;
use WWW::OpenAPIClient::Object::InstructionDetails;
use WWW::OpenAPIClient::Object::IsmTransition;
use WWW::OpenAPIClient::Object::Item;
use WWW::OpenAPIClient::Object::ItemList;
use WWW::OpenAPIClient::Object::ItemSingle;
use WWW::OpenAPIClient::Object::ItemStructure;
use WWW::OpenAPIClient::Object::ItemTable;
use WWW::OpenAPIClient::Object::ItemTree;
use WWW::OpenAPIClient::Object::Link;
use WWW::OpenAPIClient::Object::Locatable;
use WWW::OpenAPIClient::Object::LocatableRef;
use WWW::OpenAPIClient::Object::NewContribution;
use WWW::OpenAPIClient::Object::ObjectId;
use WWW::OpenAPIClient::Object::ObjectRef;
use WWW::OpenAPIClient::Object::ObjectVersionId;
use WWW::OpenAPIClient::Object::Observation;
use WWW::OpenAPIClient::Object::OriginalVersion;
use WWW::OpenAPIClient::Object::Participation;
use WWW::OpenAPIClient::Object::PartyIdentified;
use WWW::OpenAPIClient::Object::PartyProxy;
use WWW::OpenAPIClient::Object::PartyRef;
use WWW::OpenAPIClient::Object::PartyRelated;
use WWW::OpenAPIClient::Object::PartySelf;
use WWW::OpenAPIClient::Object::Pathable;
use WWW::OpenAPIClient::Object::ReferenceRange;
use WWW::OpenAPIClient::Object::RevisionHistory;
use WWW::OpenAPIClient::Object::RevisionHistoryItem;
use WWW::OpenAPIClient::Object::TemplateId;
use WWW::OpenAPIClient::Object::TermMapping;
use WWW::OpenAPIClient::Object::TerminologyCode;
use WWW::OpenAPIClient::Object::TerminologyId;
use WWW::OpenAPIClient::Object::UidBasedId;
use WWW::OpenAPIClient::Object::UpdateAttestation;
use WWW::OpenAPIClient::Object::UpdateAudit;
use WWW::OpenAPIClient::Object::UpdateVersion;
use WWW::OpenAPIClient::Object::Version;
use WWW::OpenAPIClient::Object::Versionable;
use WWW::OpenAPIClient::Object::VersionedComposition;
use WWW::OpenAPIClient::Object::VersionedEhrStatus;
use WWW::OpenAPIClient::Object::VersionedObject;

# for displaying the API response data
use Data::Dumper;


my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $composition = WWW::OpenAPIClient::Object::Composition->new(); # Composition | The COMPOSITION. 
my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

eval {
    my $result = $api_instance->composition_create(ehr_id => $ehr_id, composition => $composition, prefer => $prefer);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->composition_create: $@\n";
}

```

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *https://openEHRSys.example.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*COMPOSITIONApi* | [**composition_create**](docs/COMPOSITIONApi.md#composition_create) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
*COMPOSITIONApi* | [**composition_delete**](docs/COMPOSITIONApi.md#composition_delete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*COMPOSITIONApi* | [**composition_get**](docs/COMPOSITIONApi.md#composition_get) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*COMPOSITIONApi* | [**composition_update**](docs/COMPOSITIONApi.md#composition_update) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*COMPOSITIONApi* | [**versioned_composition_get**](docs/COMPOSITIONApi.md#versioned_composition_get) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*COMPOSITIONApi* | [**versioned_composition_revision_history**](docs/COMPOSITIONApi.md#versioned_composition_revision_history) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*COMPOSITIONApi* | [**versioned_composition_version_get_at_time**](docs/COMPOSITIONApi.md#versioned_composition_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*COMPOSITIONApi* | [**versioned_composition_version_get_by_id**](docs/COMPOSITIONApi.md#versioned_composition_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*CONTRIBUTIONApi* | [**contribution_create**](docs/CONTRIBUTIONApi.md#contribution_create) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*CONTRIBUTIONApi* | [**contribution_get**](docs/CONTRIBUTIONApi.md#contribution_get) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*DIRECTORYApi* | [**directory_create**](docs/DIRECTORYApi.md#directory_create) | **POST** /ehr/{ehr_id}/directory | Create directory
*DIRECTORYApi* | [**directory_delete**](docs/DIRECTORYApi.md#directory_delete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
*DIRECTORYApi* | [**directory_get_at_time**](docs/DIRECTORYApi.md#directory_get_at_time) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
*DIRECTORYApi* | [**directory_get_by_version_id**](docs/DIRECTORYApi.md#directory_get_by_version_id) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*DIRECTORYApi* | [**directory_update**](docs/DIRECTORYApi.md#directory_update) | **PUT** /ehr/{ehr_id}/directory | Update directory
*EHRApi* | [**ehr_create**](docs/EHRApi.md#ehr_create) | **POST** /ehr | Create EHR
*EHRApi* | [**ehr_create_with_id**](docs/EHRApi.md#ehr_create_with_id) | **PUT** /ehr/{ehr_id} | Create EHR with id
*EHRApi* | [**ehr_get_by_id**](docs/EHRApi.md#ehr_get_by_id) | **GET** /ehr/{ehr_id} | Get EHR by id
*EHRApi* | [**ehr_get_by_subject**](docs/EHRApi.md#ehr_get_by_subject) | **GET** /ehr | Get EHR by subject id
*EHRSTATUSApi* | [**ehr_status_get_at_time**](docs/EHRSTATUSApi.md#ehr_status_get_at_time) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*EHRSTATUSApi* | [**ehr_status_get_by_version_id**](docs/EHRSTATUSApi.md#ehr_status_get_by_version_id) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*EHRSTATUSApi* | [**ehr_status_update**](docs/EHRSTATUSApi.md#ehr_status_update) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*EHRSTATUSApi* | [**versioned_ehr_status_get**](docs/EHRSTATUSApi.md#versioned_ehr_status_get) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*EHRSTATUSApi* | [**versioned_ehr_status_revision_history**](docs/EHRSTATUSApi.md#versioned_ehr_status_revision_history) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*EHRSTATUSApi* | [**versioned_ehr_status_version_get_at_time**](docs/EHRSTATUSApi.md#versioned_ehr_status_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*EHRSTATUSApi* | [**versioned_ehr_status_version_get_by_id**](docs/EHRSTATUSApi.md#versioned_ehr_status_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


# DOCUMENTATION FOR MODELS
 - [WWW::OpenAPIClient::Object::AbstractEntry](docs/AbstractEntry.md)
 - [WWW::OpenAPIClient::Object::Action](docs/Action.md)
 - [WWW::OpenAPIClient::Object::Activity](docs/Activity.md)
 - [WWW::OpenAPIClient::Object::AdminEntry](docs/AdminEntry.md)
 - [WWW::OpenAPIClient::Object::ArchetypeId](docs/ArchetypeId.md)
 - [WWW::OpenAPIClient::Object::Archetyped](docs/Archetyped.md)
 - [WWW::OpenAPIClient::Object::Attestation](docs/Attestation.md)
 - [WWW::OpenAPIClient::Object::AuditDetails](docs/AuditDetails.md)
 - [WWW::OpenAPIClient::Object::CareEntry](docs/CareEntry.md)
 - [WWW::OpenAPIClient::Object::Clstr](docs/Clstr.md)
 - [WWW::OpenAPIClient::Object::CodePhrase](docs/CodePhrase.md)
 - [WWW::OpenAPIClient::Object::Composition](docs/Composition.md)
 - [WWW::OpenAPIClient::Object::ContentItem](docs/ContentItem.md)
 - [WWW::OpenAPIClient::Object::Contribution](docs/Contribution.md)
 - [WWW::OpenAPIClient::Object::DataStructure](docs/DataStructure.md)
 - [WWW::OpenAPIClient::Object::DataValue](docs/DataValue.md)
 - [WWW::OpenAPIClient::Object::DvAmount](docs/DvAmount.md)
 - [WWW::OpenAPIClient::Object::DvBoolean](docs/DvBoolean.md)
 - [WWW::OpenAPIClient::Object::DvCodedText](docs/DvCodedText.md)
 - [WWW::OpenAPIClient::Object::DvCount](docs/DvCount.md)
 - [WWW::OpenAPIClient::Object::DvDate](docs/DvDate.md)
 - [WWW::OpenAPIClient::Object::DvDateTime](docs/DvDateTime.md)
 - [WWW::OpenAPIClient::Object::DvDuration](docs/DvDuration.md)
 - [WWW::OpenAPIClient::Object::DvEhrUri](docs/DvEhrUri.md)
 - [WWW::OpenAPIClient::Object::DvEncapsulated](docs/DvEncapsulated.md)
 - [WWW::OpenAPIClient::Object::DvIdentifier](docs/DvIdentifier.md)
 - [WWW::OpenAPIClient::Object::DvInterval](docs/DvInterval.md)
 - [WWW::OpenAPIClient::Object::DvIntervalOfDateTime](docs/DvIntervalOfDateTime.md)
 - [WWW::OpenAPIClient::Object::DvMultimedia](docs/DvMultimedia.md)
 - [WWW::OpenAPIClient::Object::DvOrdered](docs/DvOrdered.md)
 - [WWW::OpenAPIClient::Object::DvOrdinal](docs/DvOrdinal.md)
 - [WWW::OpenAPIClient::Object::DvParsable](docs/DvParsable.md)
 - [WWW::OpenAPIClient::Object::DvProportion](docs/DvProportion.md)
 - [WWW::OpenAPIClient::Object::DvQuantified](docs/DvQuantified.md)
 - [WWW::OpenAPIClient::Object::DvQuantity](docs/DvQuantity.md)
 - [WWW::OpenAPIClient::Object::DvScale](docs/DvScale.md)
 - [WWW::OpenAPIClient::Object::DvState](docs/DvState.md)
 - [WWW::OpenAPIClient::Object::DvTemporal](docs/DvTemporal.md)
 - [WWW::OpenAPIClient::Object::DvText](docs/DvText.md)
 - [WWW::OpenAPIClient::Object::DvTime](docs/DvTime.md)
 - [WWW::OpenAPIClient::Object::DvUri](docs/DvUri.md)
 - [WWW::OpenAPIClient::Object::Ehr](docs/Ehr.md)
 - [WWW::OpenAPIClient::Object::EhrStatus](docs/EhrStatus.md)
 - [WWW::OpenAPIClient::Object::Element](docs/Element.md)
 - [WWW::OpenAPIClient::Object::Error](docs/Error.md)
 - [WWW::OpenAPIClient::Object::Evaluation](docs/Evaluation.md)
 - [WWW::OpenAPIClient::Object::Event](docs/Event.md)
 - [WWW::OpenAPIClient::Object::EventContext](docs/EventContext.md)
 - [WWW::OpenAPIClient::Object::FeederAudit](docs/FeederAudit.md)
 - [WWW::OpenAPIClient::Object::FeederAuditDetails](docs/FeederAuditDetails.md)
 - [WWW::OpenAPIClient::Object::Folder](docs/Folder.md)
 - [WWW::OpenAPIClient::Object::GenericId](docs/GenericId.md)
 - [WWW::OpenAPIClient::Object::HierObjectId](docs/HierObjectId.md)
 - [WWW::OpenAPIClient::Object::History](docs/History.md)
 - [WWW::OpenAPIClient::Object::ImportedVersion](docs/ImportedVersion.md)
 - [WWW::OpenAPIClient::Object::Instruction](docs/Instruction.md)
 - [WWW::OpenAPIClient::Object::InstructionDetails](docs/InstructionDetails.md)
 - [WWW::OpenAPIClient::Object::IsmTransition](docs/IsmTransition.md)
 - [WWW::OpenAPIClient::Object::Item](docs/Item.md)
 - [WWW::OpenAPIClient::Object::ItemList](docs/ItemList.md)
 - [WWW::OpenAPIClient::Object::ItemSingle](docs/ItemSingle.md)
 - [WWW::OpenAPIClient::Object::ItemStructure](docs/ItemStructure.md)
 - [WWW::OpenAPIClient::Object::ItemTable](docs/ItemTable.md)
 - [WWW::OpenAPIClient::Object::ItemTree](docs/ItemTree.md)
 - [WWW::OpenAPIClient::Object::Link](docs/Link.md)
 - [WWW::OpenAPIClient::Object::Locatable](docs/Locatable.md)
 - [WWW::OpenAPIClient::Object::LocatableRef](docs/LocatableRef.md)
 - [WWW::OpenAPIClient::Object::NewContribution](docs/NewContribution.md)
 - [WWW::OpenAPIClient::Object::ObjectId](docs/ObjectId.md)
 - [WWW::OpenAPIClient::Object::ObjectRef](docs/ObjectRef.md)
 - [WWW::OpenAPIClient::Object::ObjectVersionId](docs/ObjectVersionId.md)
 - [WWW::OpenAPIClient::Object::Observation](docs/Observation.md)
 - [WWW::OpenAPIClient::Object::OriginalVersion](docs/OriginalVersion.md)
 - [WWW::OpenAPIClient::Object::Participation](docs/Participation.md)
 - [WWW::OpenAPIClient::Object::PartyIdentified](docs/PartyIdentified.md)
 - [WWW::OpenAPIClient::Object::PartyProxy](docs/PartyProxy.md)
 - [WWW::OpenAPIClient::Object::PartyRef](docs/PartyRef.md)
 - [WWW::OpenAPIClient::Object::PartyRelated](docs/PartyRelated.md)
 - [WWW::OpenAPIClient::Object::PartySelf](docs/PartySelf.md)
 - [WWW::OpenAPIClient::Object::Pathable](docs/Pathable.md)
 - [WWW::OpenAPIClient::Object::ReferenceRange](docs/ReferenceRange.md)
 - [WWW::OpenAPIClient::Object::RevisionHistory](docs/RevisionHistory.md)
 - [WWW::OpenAPIClient::Object::RevisionHistoryItem](docs/RevisionHistoryItem.md)
 - [WWW::OpenAPIClient::Object::TemplateId](docs/TemplateId.md)
 - [WWW::OpenAPIClient::Object::TermMapping](docs/TermMapping.md)
 - [WWW::OpenAPIClient::Object::TerminologyCode](docs/TerminologyCode.md)
 - [WWW::OpenAPIClient::Object::TerminologyId](docs/TerminologyId.md)
 - [WWW::OpenAPIClient::Object::UidBasedId](docs/UidBasedId.md)
 - [WWW::OpenAPIClient::Object::UpdateAttestation](docs/UpdateAttestation.md)
 - [WWW::OpenAPIClient::Object::UpdateAudit](docs/UpdateAudit.md)
 - [WWW::OpenAPIClient::Object::UpdateVersion](docs/UpdateVersion.md)
 - [WWW::OpenAPIClient::Object::Version](docs/Version.md)
 - [WWW::OpenAPIClient::Object::Versionable](docs/Versionable.md)
 - [WWW::OpenAPIClient::Object::VersionedComposition](docs/VersionedComposition.md)
 - [WWW::OpenAPIClient::Object::VersionedEhrStatus](docs/VersionedEhrStatus.md)
 - [WWW::OpenAPIClient::Object::VersionedObject](docs/VersionedObject.md)


# DOCUMENTATION FOR AUTHORIZATION
Endpoints do not require authorization.

