using { com.hemanth.satinfotech as db } from '../db/schema';

service satinfotech {
    entity Kitchen as projection on db.Kitchen;
    entity Staff as projection on db.Kitchen;
    entity Food as projection on db.Kitchen;
}

annotate satinfotech.Kitchen with @odata.draft.enabled;
annotate satinfotech.Staff with @odata.draft.enabled;
annotate satinfotech.Food with @odata.draft.enabled;

annotate satinfotech.Staff with {
    @Common.Text          : '{Staff}'
    @Core.IsURL           : true
    @Core.MediaType       : 'image/jpg'
    staff_img;
};

annotate satinfotech.Food with {
    @Common.Text : '{Food}'
    @Core.IsURL: true
    @Core.MediaType: 'image/jpg'
    dish_img;
};