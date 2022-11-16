# swagger_client

SwaggerClient - the Ruby gem for the EHR API

<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to openAPI format</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in yaml format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: latest
- Package version: 1.0.0
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen
For more information, please visit [https://specifications.openehr.org/](https://specifications.openehr.org/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

api_instance = SwaggerClient::COMPOSITIONApi.new
body = SwaggerClient::Composition.new # Composition | The COMPOSITION.

ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create COMPOSITION
  result = api_instance.composition_create(body, ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->composition_create: #{e}"
end

api_instance = SwaggerClient::COMPOSITIONApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = 'uid_based_id_example' # String | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 


begin
  #Delete COMPOSITION
  api_instance.composition_delete(ehr_id, uid_based_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->composition_delete: #{e}"
end

api_instance = SwaggerClient::COMPOSITIONApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = 'uid_based_id_example' # String | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
opts = { 
  version_at_time: 'version_at_time_example' # String | A given time in the extended ISO 8601 format. 
}

begin
  #Get COMPOSITION
  result = api_instance.composition_get(ehr_id, uid_based_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->composition_get: #{e}"
end

api_instance = SwaggerClient::COMPOSITIONApi.new
body = SwaggerClient::Composition.new # Composition | The new COMPOSITION.

ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = 'uid_based_id_example' # String | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
if_match = 'if_match_example' # String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Update COMPOSITION
  result = api_instance.composition_update(body, ehr_id, uid_based_id, if_match, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->composition_update: #{e}"
end

api_instance = SwaggerClient::COMPOSITIONApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = 'versioned_object_uid_example' # String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 


begin
  #Get versioned COMPOSITION
  result = api_instance.versioned_composition_get(ehr_id, versioned_object_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->versioned_composition_get: #{e}"
end

api_instance = SwaggerClient::COMPOSITIONApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = 'versioned_object_uid_example' # String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 


begin
  #Get versioned COMPOSITION revision history
  result = api_instance.versioned_composition_revision_history(ehr_id, versioned_object_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->versioned_composition_revision_history: #{e}"
end

api_instance = SwaggerClient::COMPOSITIONApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = 'versioned_object_uid_example' # String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
opts = { 
  version_at_time: 'version_at_time_example' # String | A given time in the extended ISO 8601 format. 
}

begin
  #Get versioned COMPOSITION version at time
  result = api_instance.versioned_composition_version_get_at_time(ehr_id, versioned_object_uid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->versioned_composition_version_get_at_time: #{e}"
end

api_instance = SwaggerClient::COMPOSITIONApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = 'versioned_object_uid_example' # String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
version_uid = 'version_uid_example' # String | VERSION identifier taken from VERSION.uid.value. 


begin
  #Get versioned COMPOSITION version by id
  result = api_instance.versioned_composition_version_get_by_id(ehr_id, versioned_object_uid, version_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->versioned_composition_version_get_by_id: #{e}"
end

api_instance = SwaggerClient::CONTRIBUTIONApi.new
body = SwaggerClient::NewContribution.new # NewContribution | The CONTRIBUTION.

ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create CONTRIBUTION
  result = api_instance.contribution_create(body, ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CONTRIBUTIONApi->contribution_create: #{e}"
end

api_instance = SwaggerClient::CONTRIBUTIONApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
contribution_uid = 'contribution_uid_example' # String | The CONTRIBUTION uid. 


begin
  #Get CONTRIBUTION by id
  result = api_instance.contribution_get(ehr_id, contribution_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CONTRIBUTIONApi->contribution_get: #{e}"
end

api_instance = SwaggerClient::DIRECTORYApi.new
body = SwaggerClient::Folder.new # Folder | The directory.

ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create directory
  result = api_instance.directory_create(body, ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_create: #{e}"
end

api_instance = SwaggerClient::DIRECTORYApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
if_match = 'if_match_example' # String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 


begin
  #Delete directory
  api_instance.directory_delete(ehr_id, if_match)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_delete: #{e}"
end

api_instance = SwaggerClient::DIRECTORYApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  version_at_time: 'version_at_time_example', # String | A given time in the extended ISO 8601 format. 
  path: 'path_example' # String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
}

begin
  #Get folder in directory version at time
  result = api_instance.directory_get_at_time(ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_get_at_time: #{e}"
end

api_instance = SwaggerClient::DIRECTORYApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
version_uid = 'version_uid_example' # String | VERSION identifier taken from VERSION.uid.value. 
opts = { 
  path: 'path_example' # String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
}

begin
  #Get folder in directory version
  result = api_instance.directory_get_by_version_id(ehr_id, version_uid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_get_by_version_id: #{e}"
end

api_instance = SwaggerClient::DIRECTORYApi.new
body = SwaggerClient::Folder.new # Folder | The new directory.

ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
if_match = 'if_match_example' # String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Update directory
  result = api_instance.directory_update(body, ehr_id, if_match, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_update: #{e}"
end

api_instance = SwaggerClient::EHRApi.new
opts = { 
  body: SwaggerClient::EhrStatus.new, # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create EHR
  result = api_instance.ehr_create(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRApi->ehr_create: #{e}"
end

api_instance = SwaggerClient::EHRApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  body: SwaggerClient::EhrStatus.new, # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create EHR with id
  result = api_instance.ehr_create_with_id(ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRApi->ehr_create_with_id: #{e}"
end

api_instance = SwaggerClient::EHRApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 


begin
  #Get EHR by id
  result = api_instance.ehr_get_by_id(ehr_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRApi->ehr_get_by_id: #{e}"
end

api_instance = SwaggerClient::EHRApi.new
subject_id = 'subject_id_example' # String | The EHR subject id. 
subject_namespace = 'subject_namespace_example' # String | The EHR subject id namespace. 


begin
  #Get EHR by subject id
  result = api_instance.ehr_get_by_subject(subject_id, subject_namespace)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRApi->ehr_get_by_subject: #{e}"
end

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  version_at_time: 'version_at_time_example' # String | A given time in the extended ISO 8601 format. 
}

begin
  #Get EHR_STATUS at time
  result = api_instance.ehr_status_get_at_time(ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->ehr_status_get_at_time: #{e}"
end

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
version_uid = 'version_uid_example' # String | VERSION identifier taken from VERSION.uid.value. 


begin
  #Get EHR_STATUS by version id
  result = api_instance.ehr_status_get_by_version_id(ehr_id, version_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->ehr_status_get_by_version_id: #{e}"
end

api_instance = SwaggerClient::EHRSTATUSApi.new
body = SwaggerClient::EhrStatus.new # EhrStatus | The new EHR_STATUS.

ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
if_match = 'if_match_example' # String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Update EHR_STATUS
  result = api_instance.ehr_status_update(body, ehr_id, if_match, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->ehr_status_update: #{e}"
end

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 


begin
  #Get versioned EHR_STATUS
  result = api_instance.versioned_ehr_status_get(ehr_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->versioned_ehr_status_get: #{e}"
end

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 


begin
  #Get versioned EHR_STATUS revision history
  result = api_instance.versioned_ehr_status_revision_history(ehr_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->versioned_ehr_status_revision_history: #{e}"
end

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  version_at_time: 'version_at_time_example' # String | A given time in the extended ISO 8601 format. 
}

begin
  #Get versioned EHR_STATUS version at time
  result = api_instance.versioned_ehr_status_version_get_at_time(ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_at_time: #{e}"
end

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
version_uid = 'version_uid_example' # String | VERSION identifier taken from VERSION.uid.value. 


begin
  #Get versioned EHR_STATUS version by id
  result = api_instance.versioned_ehr_status_version_get_by_id(ehr_id, version_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_by_id: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://{baseUrl}/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::COMPOSITIONApi* | [**composition_create**](docs/COMPOSITIONApi.md#composition_create) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
*SwaggerClient::COMPOSITIONApi* | [**composition_delete**](docs/COMPOSITIONApi.md#composition_delete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*SwaggerClient::COMPOSITIONApi* | [**composition_get**](docs/COMPOSITIONApi.md#composition_get) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*SwaggerClient::COMPOSITIONApi* | [**composition_update**](docs/COMPOSITIONApi.md#composition_update) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*SwaggerClient::COMPOSITIONApi* | [**versioned_composition_get**](docs/COMPOSITIONApi.md#versioned_composition_get) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*SwaggerClient::COMPOSITIONApi* | [**versioned_composition_revision_history**](docs/COMPOSITIONApi.md#versioned_composition_revision_history) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*SwaggerClient::COMPOSITIONApi* | [**versioned_composition_version_get_at_time**](docs/COMPOSITIONApi.md#versioned_composition_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*SwaggerClient::COMPOSITIONApi* | [**versioned_composition_version_get_by_id**](docs/COMPOSITIONApi.md#versioned_composition_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*SwaggerClient::CONTRIBUTIONApi* | [**contribution_create**](docs/CONTRIBUTIONApi.md#contribution_create) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*SwaggerClient::CONTRIBUTIONApi* | [**contribution_get**](docs/CONTRIBUTIONApi.md#contribution_get) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*SwaggerClient::DIRECTORYApi* | [**directory_create**](docs/DIRECTORYApi.md#directory_create) | **POST** /ehr/{ehr_id}/directory | Create directory
*SwaggerClient::DIRECTORYApi* | [**directory_delete**](docs/DIRECTORYApi.md#directory_delete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
*SwaggerClient::DIRECTORYApi* | [**directory_get_at_time**](docs/DIRECTORYApi.md#directory_get_at_time) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
*SwaggerClient::DIRECTORYApi* | [**directory_get_by_version_id**](docs/DIRECTORYApi.md#directory_get_by_version_id) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*SwaggerClient::DIRECTORYApi* | [**directory_update**](docs/DIRECTORYApi.md#directory_update) | **PUT** /ehr/{ehr_id}/directory | Update directory
*SwaggerClient::EHRApi* | [**ehr_create**](docs/EHRApi.md#ehr_create) | **POST** /ehr | Create EHR
*SwaggerClient::EHRApi* | [**ehr_create_with_id**](docs/EHRApi.md#ehr_create_with_id) | **PUT** /ehr/{ehr_id} | Create EHR with id
*SwaggerClient::EHRApi* | [**ehr_get_by_id**](docs/EHRApi.md#ehr_get_by_id) | **GET** /ehr/{ehr_id} | Get EHR by id
*SwaggerClient::EHRApi* | [**ehr_get_by_subject**](docs/EHRApi.md#ehr_get_by_subject) | **GET** /ehr | Get EHR by subject id
*SwaggerClient::EHRSTATUSApi* | [**ehr_status_get_at_time**](docs/EHRSTATUSApi.md#ehr_status_get_at_time) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*SwaggerClient::EHRSTATUSApi* | [**ehr_status_get_by_version_id**](docs/EHRSTATUSApi.md#ehr_status_get_by_version_id) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*SwaggerClient::EHRSTATUSApi* | [**ehr_status_update**](docs/EHRSTATUSApi.md#ehr_status_update) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*SwaggerClient::EHRSTATUSApi* | [**versioned_ehr_status_get**](docs/EHRSTATUSApi.md#versioned_ehr_status_get) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*SwaggerClient::EHRSTATUSApi* | [**versioned_ehr_status_revision_history**](docs/EHRSTATUSApi.md#versioned_ehr_status_revision_history) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*SwaggerClient::EHRSTATUSApi* | [**versioned_ehr_status_version_get_at_time**](docs/EHRSTATUSApi.md#versioned_ehr_status_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*SwaggerClient::EHRSTATUSApi* | [**versioned_ehr_status_version_get_by_id**](docs/EHRSTATUSApi.md#versioned_ehr_status_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id

## Documentation for Models

 - [SwaggerClient::AbstractEntry](docs/AbstractEntry.md)
 - [SwaggerClient::Action](docs/Action.md)
 - [SwaggerClient::Activity](docs/Activity.md)
 - [SwaggerClient::AdminEntry](docs/AdminEntry.md)
 - [SwaggerClient::ArchetypeId](docs/ArchetypeId.md)
 - [SwaggerClient::Archetyped](docs/Archetyped.md)
 - [SwaggerClient::Attestation](docs/Attestation.md)
 - [SwaggerClient::AuditDetails](docs/AuditDetails.md)
 - [SwaggerClient::CareEntry](docs/CareEntry.md)
 - [SwaggerClient::Clstr](docs/Clstr.md)
 - [SwaggerClient::CodePhrase](docs/CodePhrase.md)
 - [SwaggerClient::Composition](docs/Composition.md)
 - [SwaggerClient::ContentItem](docs/ContentItem.md)
 - [SwaggerClient::Contribution](docs/Contribution.md)
 - [SwaggerClient::DataStructure](docs/DataStructure.md)
 - [SwaggerClient::DataValue](docs/DataValue.md)
 - [SwaggerClient::DvAmount](docs/DvAmount.md)
 - [SwaggerClient::DvBoolean](docs/DvBoolean.md)
 - [SwaggerClient::DvCodedText](docs/DvCodedText.md)
 - [SwaggerClient::DvCount](docs/DvCount.md)
 - [SwaggerClient::DvDateTime](docs/DvDateTime.md)
 - [SwaggerClient::DvDuration](docs/DvDuration.md)
 - [SwaggerClient::DvEhrUri](docs/DvEhrUri.md)
 - [SwaggerClient::DvEncapsulated](docs/DvEncapsulated.md)
 - [SwaggerClient::DvIdentifier](docs/DvIdentifier.md)
 - [SwaggerClient::DvInterval](docs/DvInterval.md)
 - [SwaggerClient::DvIntervalOfDateTime](docs/DvIntervalOfDateTime.md)
 - [SwaggerClient::DvMultimedia](docs/DvMultimedia.md)
 - [SwaggerClient::DvOrdered](docs/DvOrdered.md)
 - [SwaggerClient::DvOrdinal](docs/DvOrdinal.md)
 - [SwaggerClient::DvParsable](docs/DvParsable.md)
 - [SwaggerClient::DvProportion](docs/DvProportion.md)
 - [SwaggerClient::DvQuantified](docs/DvQuantified.md)
 - [SwaggerClient::DvQuantity](docs/DvQuantity.md)
 - [SwaggerClient::DvScale](docs/DvScale.md)
 - [SwaggerClient::DvText](docs/DvText.md)
 - [SwaggerClient::DvUri](docs/DvUri.md)
 - [SwaggerClient::Ehr](docs/Ehr.md)
 - [SwaggerClient::EhrStatus](docs/EhrStatus.md)
 - [SwaggerClient::Element](docs/Element.md)
 - [SwaggerClient::Error](docs/Error.md)
 - [SwaggerClient::Evaluation](docs/Evaluation.md)
 - [SwaggerClient::Event](docs/Event.md)
 - [SwaggerClient::EventContext](docs/EventContext.md)
 - [SwaggerClient::FeederAudit](docs/FeederAudit.md)
 - [SwaggerClient::FeederAuditDetails](docs/FeederAuditDetails.md)
 - [SwaggerClient::Folder](docs/Folder.md)
 - [SwaggerClient::GenericId](docs/GenericId.md)
 - [SwaggerClient::HierObjectId](docs/HierObjectId.md)
 - [SwaggerClient::History](docs/History.md)
 - [SwaggerClient::ImportedVersion](docs/ImportedVersion.md)
 - [SwaggerClient::Instruction](docs/Instruction.md)
 - [SwaggerClient::InstructionDetails](docs/InstructionDetails.md)
 - [SwaggerClient::IsmTransition](docs/IsmTransition.md)
 - [SwaggerClient::Item](docs/Item.md)
 - [SwaggerClient::ItemList](docs/ItemList.md)
 - [SwaggerClient::ItemSingle](docs/ItemSingle.md)
 - [SwaggerClient::ItemStructure](docs/ItemStructure.md)
 - [SwaggerClient::ItemTable](docs/ItemTable.md)
 - [SwaggerClient::ItemTree](docs/ItemTree.md)
 - [SwaggerClient::Link](docs/Link.md)
 - [SwaggerClient::Locatable](docs/Locatable.md)
 - [SwaggerClient::LocatableRef](docs/LocatableRef.md)
 - [SwaggerClient::NewContribution](docs/NewContribution.md)
 - [SwaggerClient::ObjectId](docs/ObjectId.md)
 - [SwaggerClient::ObjectRef](docs/ObjectRef.md)
 - [SwaggerClient::ObjectVersionId](docs/ObjectVersionId.md)
 - [SwaggerClient::Observation](docs/Observation.md)
 - [SwaggerClient::OriginalVersion](docs/OriginalVersion.md)
 - [SwaggerClient::Participation](docs/Participation.md)
 - [SwaggerClient::PartyIdentified](docs/PartyIdentified.md)
 - [SwaggerClient::PartyProxy](docs/PartyProxy.md)
 - [SwaggerClient::PartyRef](docs/PartyRef.md)
 - [SwaggerClient::PartyRelated](docs/PartyRelated.md)
 - [SwaggerClient::PartySelf](docs/PartySelf.md)
 - [SwaggerClient::Pathable](docs/Pathable.md)
 - [SwaggerClient::ReferenceRange](docs/ReferenceRange.md)
 - [SwaggerClient::RevisionHistory](docs/RevisionHistory.md)
 - [SwaggerClient::RevisionHistoryItem](docs/RevisionHistoryItem.md)
 - [SwaggerClient::TemplateId](docs/TemplateId.md)
 - [SwaggerClient::TerminologyCode](docs/TerminologyCode.md)
 - [SwaggerClient::TerminologyId](docs/TerminologyId.md)
 - [SwaggerClient::UidBasedId](docs/UidBasedId.md)
 - [SwaggerClient::UpdateAttestation](docs/UpdateAttestation.md)
 - [SwaggerClient::UpdateAudit](docs/UpdateAudit.md)
 - [SwaggerClient::UpdateVersion](docs/UpdateVersion.md)
 - [SwaggerClient::Version](docs/Version.md)
 - [SwaggerClient::Versionable](docs/Versionable.md)
 - [SwaggerClient::VersionedComposition](docs/VersionedComposition.md)
 - [SwaggerClient::VersionedEhrStatus](docs/VersionedEhrStatus.md)
 - [SwaggerClient::VersionedObject](docs/VersionedObject.md)

## Documentation for Authorization

 All endpoints do not require authorization.

