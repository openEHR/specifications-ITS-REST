=begin comment

EHR API

<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

The version of the OpenAPI document: latest
Contact: info@openehr.org
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Role;
use utf8;

use Moose::Role;
use namespace::autoclean;
use Class::Inspector;
use Log::Any qw($log);
use WWW::OpenAPIClient::ApiFactory;

has base_url => ( is => 'ro',
                  required => 0,
                  isa => 'Str',
                  documentation => 'Root of the server that requests are sent to',
                  );

has api_factory => ( is => 'ro',
                     isa => 'WWW::OpenAPIClient::ApiFactory',
                     builder => '_build_af',
                     lazy => 1,
                     documentation => 'Builds an instance of the endpoint API class',
                     );

has tokens => ( is => 'ro',
                isa => 'HashRef',
                required => 0,
                default => sub { {} },
                documentation => 'The auth tokens required by the application - basic, OAuth and/or API key(s)',
                );

has _cfg => ( is => 'ro',
              isa => 'WWW::OpenAPIClient::Configuration',
              default => sub { WWW::OpenAPIClient::Configuration->new() },
              );

has version_info => ( is => 'ro',
                      isa => 'HashRef',
                      default => sub { {
                          app_name => 'EHR API',
                          app_version => 'latest',
                          generator_class => 'org.openapitools.codegen.languages.PerlClientCodegen',
                      } },
                      documentation => 'Information about the application version and the codegen codebase version'
                      );

sub BUILD {
    my $self = shift;

    $self->_cfg->accept_tokens( $self->tokens ) if keys %{$self->tokens};

    # ignore these symbols imported into API namespaces
    my %outsiders = map {$_ => 1} qw( croak );

    my %delegates;

    # collect the methods callable on each API
    foreach my $api_name ($self->api_factory->apis_available) {
        my $api_class = $self->api_factory->classname_for($api_name);
        my $methods = Class::Inspector->methods($api_class, 'expanded'); # not Moose, so use CI instead
        my @local_methods = grep {! /^_/} grep {! $outsiders{$_}} map {$_->[2]} grep {$_->[1] eq $api_class} @$methods;
        push( @{$delegates{$_}}, {api_name => $api_name, api_class => $api_class} ) for @local_methods;
    }

    # remove clashes
    foreach my $method (keys %delegates) {
        if ( @{$delegates{$method}} > 1 ) {
            my ($apis) = delete $delegates{$method};
        }
    }

    # build the flattened API
    foreach my $api_name ($self->api_factory->apis_available) {
        my $att_name = sprintf "%s_api", lc($api_name);
        my $api_class = $self->api_factory->classname_for($api_name);
        my @delegated = grep { $delegates{$_}->[0]->{api_name} eq $api_name } keys %delegates;
        $log->debugf("Adding API: '%s' handles %s", $att_name, join ', ', @delegated);
        $self->meta->add_attribute( $att_name => (
                                    is => 'ro',
                                    isa => $api_class,
                                    default => sub {$self->api_factory->get_api($api_name)},
                                    lazy => 1,
                                    handles => \@delegated,
                                    ) );
    }
}

sub _build_af {
    my $self = shift;
    my %args;
    $args{base_url} = $self->base_url if $self->base_url;
    return WWW::OpenAPIClient::ApiFactory->new(%args);
}

=head1 NAME

WWW::OpenAPIClient::Role - a Moose role for the EHR API

=head2 EHR API version: latest

=head1 VERSION

Automatically generated by the Perl OpenAPI Generator project:

=over 4
=item Build package: org.openapitools.codegen.languages.PerlClientCodegen

=item Codegen version:

=back

=head2 A note on Moose

This role is the only component of the library that uses Moose. See
WWW::OpenAPIClient::ApiFactory for non-Moosey usage.

=head1 SYNOPSIS

The Perl Generator in the OpenAPI Generator project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite *all*, see below) are flattened into this
role.

    package MyApp;
    use Moose;
    with 'WWW::OpenAPIClient::Role';

    package main;

    my $api = MyApp->new({ tokens => $tokens });

    my $pet = $api->get_pet_by_id(pet_id => $pet_id);

=head2 Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

=head2 Configuring authentication

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

Note these are all optional, as are C<prefix> and C<in>, and depend on the API
you are accessing. Usually C<prefix> and C<in> will be determined by the code generator from
the spec and you will not need to set them at run time. If not, C<in> will
default to 'head' and C<prefix> to the empty string.

The tokens will be placed in a L<WWW::OpenAPIClient::Configuration> instance
as follows, but you don't need to know about this.

=over 4

=item C<$cfg-\>{username}>

String. The username for basic auth.

=item C<$cfg-\>{password}>

String. The password for basic auth.

=item C<$cfg-\>{api_key}>

Hashref. Keyed on the name of each key (there can be multiple tokens).

    $cfg->{api_key} = {
        secretKey => 'aaaabbbbccccdddd',
        anotherKey => '1111222233334444',
        };

=item C<$cfg->{api_key_prefix}>

Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
all api keys require a prefix.

    $cfg->{api_key_prefix} = {
        secretKey => 'string',
        anotherKey => 'same or some other string',
        };

=item C<$config-\>{access_token}>

String. The OAuth access token.

=back

=head1 METHODS

=head2 C<base_url>

The generated code has the C<base_url> already set as a default value. This method
returns the current value of C<base_url>.

=head2 C<api_factory>

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a WWW::OpenAPIClient::PetApi instance

        $self->pet_api;            # the same

=head1 MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. C<new()>), these methods can't be delegated. So you need
to call C<$api-E<gt>pet_api-E<gt>new()>.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

    new()
    class_documentation()
    method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling C<$api-E<gt>foo_api> or by retrieving an object, e.g.
C<$api-E<gt>get_pet_by_id(pet_id =E<gt> $pet_id)>. They are class methods, so
you could also call them on class names.

=head1 BUILDING YOUR LIBRARY

See the homepage C<https://openapi-generator.tech> for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

    {"moduleName":"WWW::MyProjectName"}

Your library files will be built under C<WWW::MyProjectName>.

    $ git clone https://github.com/openapitools/openapi-generator
    $ cd openapi-generator
    $ mvn package
    $ java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate \
  -i [URL or file path to JSON OpenAPI API spec] \
  -g perl \
  -c /path/to/config/file.json \
  -o /path/to/output/folder

Bang, all done. Run the C<autodoc> script in the C<bin> directory to see the API
you just built.

=head1 AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
C<autodoc> script in the C<bin> directory of your generated library. A few
output formats are supported:

    Usage: autodoc [OPTION]

  -w           wide format (default)
  -n           narrow format
  -p           POD format
  -H           HTML format
  -m           Markdown format
  -h           print this help message
  -c           your application class

The C<-c> option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

=head1 DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the OpenAPI
spec. If so, this is available via the C<class_documentation()> and
C<method_documentation()> methods on each generated object class, and the
C<method_documentation()> method on the endpoint API classes:

    my $cmdoc = $api->pet_api->method_documentation->{$method_name};

    my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
    my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};

Each of these calls returns a hashref with various useful pieces of information.

=cut

1;
