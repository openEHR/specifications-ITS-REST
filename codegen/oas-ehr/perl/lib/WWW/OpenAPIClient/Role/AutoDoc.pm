=begin comment

EHR API

<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to openAPI format</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in yaml format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

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
package WWW::OpenAPIClient::Role::AutoDoc;
use List::MoreUtils qw(uniq);

use Moose::Role;

sub autodoc {
    my ($self, $how) = @_;

    die "Unknown format '$how'" unless $how =~ /^(pod|wide|narrow)$/;

    $self->_printisa($how);
    $self->_printmethods($how);
    $self->_printattrs($how);
    print "\n";
}

sub _printisa {
    my ($self, $how) = @_;
    my $meta = $self->meta;

    my $myclass = ref $self;

    my $super = join ', ', $meta->superclasses;
    my @roles = $meta->calculate_all_roles;
    #shift(@roles) if @roles > 1; # if > 1, the first is a composite, the rest are the roles

    my $isa =   join ', ', grep {$_ ne $myclass} $meta->linearized_isa;
    my $sub =   join ', ', $meta->subclasses;
    my $dsub =  join ', ', $meta->direct_subclasses;

    my $app_name = $self->version_info->{app_name};
    my $app_version = $self->version_info->{app_version};
    my $generated_date = $self->version_info->{generated_date};
    my $generator_class = $self->version_info->{generator_class};

    $~ = $how eq 'pod' ? 'INHERIT_POD' : 'INHERIT';
    write;

    my ($rolepkg, $role_reqs);

    foreach my $role (@roles) {
        $rolepkg = $role->{package} || next; # some are anonymous, or something
        next if $rolepkg eq 'WWW::OpenAPIClient::Role::AutoDoc';
        $role_reqs = join ', ', keys %{$role->{required_methods}};
        $role_reqs ||= '';
        $~ = $how eq 'pod' ? 'ROLES_POD' : 'ROLES';
        write;
    }

    if ($how eq 'pod') {
        $~ = 'ROLES_POD_CLOSE';
        write;
    }

# ----- format specs -----
    format INHERIT =

@* -
$myclass
                  ISA: @*
                       $isa
    Direct subclasses: @*
                       $dsub
       All subclasses: @*
                       $sub

           Target API: @* @*
                       $app_name, $app_version
         Generated on: @*
                       $generated_date
      Generator class: @*
                       $generator_class

.
    format ROLES =
             Composes: ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ~
                       $rolepkg
                       requires: ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ~
                                 $role_reqs
                                 ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ~~
                                 $role_reqs
.

    format INHERIT_POD =
=head1 NAME

@*
$myclass

=head1 VERSION

=head2 @* version: @*
       $app_name,  $app_version

Automatically generated by the Perl Generator in the OpenAPI Generator project:

=over 4

=item Build date: @*
                  $generated_date

=item Build package: @*
                     $generator_class

=item Codegen version:


=back

=head1 INHERITANCE

=head2 Base class(es)

@*
$isa

=head2 Direct subclasses

@*
$dsub

=head2 All subclasses

@*
$sub


=head1 COMPOSITION

@* composes the following roles:
$myclass


.
    format ROLES_POD =
=head2 C<@*>
       $rolepkg

Requires:

@*
$role_reqs

.
    format ROLES_POD_CLOSE =


.
# ----- / format specs -----
}

sub _printmethods {
    my ($self, $how) = @_;

    if ($how eq 'narrow') {
        print <<HEAD;
METHODS
-------
HEAD
    }
    elsif ($how eq 'wide') {
        $~ = 'METHODHEAD';
        write;
    }
    elsif ($how eq 'pod') {
        $~ = 'METHODHEAD_POD';
        write;
    }
    else {
        die "Don't know how to print '$how'";
    }

    $self->_printmethod($_, $how) for uniq sort $self->meta->get_all_method_names; #$self->meta->get_method_list,

    if ($how eq 'pod') {
        $~ = 'METHOD_POD_CLOSE';
        write;
    }


}

sub _printmethod {
    my ($self, $methodname, $how) = @_;
    return if $methodname =~ /^_/;
    return if $self->meta->has_attribute($methodname);
    my %internal = map {$_ => 1} qw(BUILD BUILDARGS meta can new DEMOLISHALL DESTROY
        DOES isa BUILDALL does VERSION dump
        );
    return if $internal{$methodname};
    my $method = $self->meta->get_method($methodname) or return; # symbols imported into namespaces i.e. not known by Moose

    return if $method->original_package_name eq __PACKAGE__;

    my $delegate_to = '';
    my $via = '';
    my $on = '';
    my $doc = '';
    my $original_pkg = $method->original_package_name;
    if ($method->can('associated_attribute')) {
        $delegate_to = $method->delegate_to_method;
        my $aa = $method->associated_attribute;
        $on = $aa->{isa};
        $via = $aa->{name};
        $original_pkg = $on;
        $doc = $original_pkg->method_documentation->{$delegate_to}->{summary};
    }
    else {
        $doc = $method->documentation;
    }

    if ($how eq 'narrow') {
        $~ = 'METHOD_NARROW';
        write;
    }
    elsif ($how eq 'pod' and $delegate_to) {
        $~ = 'METHOD_POD_DELEGATED';
        write;
    }
    elsif ($how eq 'pod') {
        $~ = 'METHOD_POD';
        write;
    }
    else {
        $~ = 'METHOD';
        write;
    }

# ----- format specs -----
    format METHODHEAD =

METHODS
-------
Name                                                  delegates to                                             on                                      via
===========================================================================================================================================================================
.
    format METHOD =
@<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<... @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<... @<<<<<<<<<<<<<<<<...
$methodname,                                          $delegate_to,                                            $on,                                    $via
.

    format METHOD_NARROW =
@*
$methodname
    original pkg: @*
                  $original_pkg
    delegates to: @*
                  $delegate_to
              on: @*
                  $on
             via: @*
                  $via

.

    format METHODHEAD_POD =

=head1 METHODS

.

    format METHOD_POD =

=head2 C<@*()>
       $methodname

       Defined in: @*
            $original_pkg


.
    format METHOD_POD_DELEGATED =

=head2 C<@*()>
       $methodname

       Defined in: @*
                      $original_pkg
     Delegates to: @*()
                   $delegate_to
               On: @*
                   $on
              Via: @*()
                   $via
              Doc: @*
                   $doc
          Same as: $self->@*->@*()
                     $via, $delegate_to

.
    format METHOD_POD_CLOSE =

.
# ----- / format specs -----
}

sub _printattrs {
    my ($self, $how) = @_;

    if ($how eq 'narrow') {
        print <<HEAD;
ATTRIBUTES
----------
HEAD
    }
    elsif ($how eq 'wide') {
        $~ = 'ATTRHEAD';
        write;
    }
    elsif ($how eq 'pod') {
        $~ = 'ATTRHEAD_POD';
        write;
    }
    else {
        die "Don't know how to print attributes '$how'";
    }

    $self->_printattr($_, $how) for sort $self->meta->get_attribute_list;

    if ($how eq 'pod') {
        $~ = 'ATTR_POD_CLOSE';
        write;
    }
}

sub _printattr {
    my ($self, $attrname, $how) = @_;
    return if $attrname =~ /^_/;
    my $attr = $self->meta->get_attribute($attrname) or die "No attr for $attrname";

    my $is;
    $is = 'rw' if $attr->get_read_method && $attr->get_write_method;
    $is = 'ro' if $attr->get_read_method && ! $attr->get_write_method;
    $is = 'wo' if $attr->get_write_method && ! $attr->get_read_method;
    $is = '--' if ! $attr->get_write_method && ! $attr->get_read_method;
    $is or die "No \$is for $attrname";

    my $tc = $attr->type_constraint || '';
    my $from = $attr->associated_class->name || '';
    my $reqd = $attr->is_required ? 'yes' : 'no';
    my $lazy = $attr->is_lazy ? 'yes' : 'no';
    my $has_doc = $attr->has_documentation ? 'yes' : 'no'; # *_api attributes will never have doc, but other attributes might have
    my $doc = $attr->documentation || '';
    my $handles = join ', ', sort @{$attr->handles || []};
    $handles ||= '';

    if ($how eq 'narrow') {
        $~ = 'ATTR_NARROW';
    }
    elsif ($how eq 'pod') {
        $~ = 'ATTR_POD';
    }
    else {
        $~ = 'ATTR';
    }

    write;

# ----- format specs -----
    format ATTRHEAD =

ATTRIBUTES
----------
Name                is isa                       reqd lazy doc handles
==============================================================================================================
.
    format ATTR =
@<<<<<<<<<<<<<<<<<  @< @<<<<<<<<<<<<<<<<<<<<<<<< @<<< @<<< @<< ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
$attrname,          $is, $tc,                    $reqd, $lazy, $has_doc, $handles
                                                               ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ~~
                                                               $handles
.

    format ATTR_NARROW =
@*
$attrname
         is: @*
             $is
        isa: @*
             $tc
       reqd: @*
             $reqd
       lazy: @*
             $lazy
        doc: @*
             $doc
    handles: ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
             $handles
             ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ~~
             $handles

.
    format ATTRHEAD_POD =
=head1 ATTRIBUTES

.
    format ATTR_POD =

=head2 C<@*>
         $attrname

         is: @*
             $is
        isa: @*
             $tc
       reqd: @*
             $reqd
       lazy: @*
             $lazy
        doc: @*
             $doc
    handles: ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
             $handles
             ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< ~~
             $handles

.
    format ATTR_POD_CLOSE =


.
# ----- / format specs -----
}



1;
