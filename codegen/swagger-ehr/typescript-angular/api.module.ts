import { NgModule, ModuleWithProviders, SkipSelf, Optional } from '@angular/core';
import { Configuration } from './configuration';
import { HttpClient } from '@angular/common/http';


import { COMPOSITIONService } from './api/cOMPOSITION.service';
import { CONTRIBUTIONService } from './api/cONTRIBUTION.service';
import { DIRECTORYService } from './api/dIRECTORY.service';
import { EHRService } from './api/eHR.service';
import { EHRSTATUSService } from './api/eHRSTATUS.service';

@NgModule({
  imports:      [],
  declarations: [],
  exports:      [],
  providers: [
    COMPOSITIONService,
    CONTRIBUTIONService,
    DIRECTORYService,
    EHRService,
    EHRSTATUSService ]
})
export class ApiModule {
    public static forRoot(configurationFactory: () => Configuration): ModuleWithProviders<ApiModule> {
        return {
            ngModule: ApiModule,
            providers: [ { provide: Configuration, useFactory: configurationFactory } ]
        };
    }

    constructor( @Optional() @SkipSelf() parentModule: ApiModule,
                 @Optional() http: HttpClient) {
        if (parentModule) {
            throw new Error('ApiModule is already loaded. Import in your base AppModule only.');
        }
        if (!http) {
            throw new Error('You need to import the HttpClientModule in your AppModule! \n' +
            'See also https://github.com/angular/angular/issues/20575');
        }
    }
}
