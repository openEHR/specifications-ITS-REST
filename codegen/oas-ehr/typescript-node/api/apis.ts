export * from './cOMPOSITIONApi';
import { COMPOSITIONApi } from './cOMPOSITIONApi';
export * from './cONTRIBUTIONApi';
import { CONTRIBUTIONApi } from './cONTRIBUTIONApi';
export * from './dIRECTORYApi';
import { DIRECTORYApi } from './dIRECTORYApi';
export * from './eHRApi';
import { EHRApi } from './eHRApi';
export * from './eHRSTATUSApi';
import { EHRSTATUSApi } from './eHRSTATUSApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [COMPOSITIONApi, CONTRIBUTIONApi, DIRECTORYApi, EHRApi, EHRSTATUSApi];
