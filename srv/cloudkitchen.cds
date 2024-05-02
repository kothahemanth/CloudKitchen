using { com.hemanth.satinfotech as db } from '../db/schema';

service satinfotech {
    entity Kitchen as projection on db.Kitchen;
}

annotate satinfotech.Kitchen with @odata.draft.enabled;