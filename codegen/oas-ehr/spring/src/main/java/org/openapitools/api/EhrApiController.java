package org.openapitools.api;

import org.openapitools.model.Composition;
import org.openapitools.model.Contribution;
import org.openapitools.model.Ehr;
import org.openapitools.model.EhrStatus;
import org.openapitools.model.Error;
import org.openapitools.model.Folder;
import org.openapitools.model.NewContribution;
import org.openapitools.model.RevisionHistory;
import org.openapitools.model.Version;
import org.openapitools.model.VersionedComposition;
import org.openapitools.model.VersionedEhrStatus;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.context.request.NativeWebRequest;

import javax.validation.constraints.*;
import javax.validation.Valid;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.annotation.Generated;

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
@Controller
@RequestMapping("${openapi.eHR.base-path:/v1}")
public class EhrApiController implements EhrApi {

    private final NativeWebRequest request;

    @Autowired
    public EhrApiController(NativeWebRequest request) {
        this.request = request;
    }

    @Override
    public Optional<NativeWebRequest> getRequest() {
        return Optional.ofNullable(request);
    }

}
