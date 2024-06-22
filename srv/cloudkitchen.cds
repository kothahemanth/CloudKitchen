using { com.hemanth.satinfotech as db } from '../db/schema';

using { API_PRODUCT_SRV as productapi} from './external/API_PRODUCT_SRV';

service satinfotech @(requires:'authenticated-user') {
    entity Kitchen @(restrict: [
        {grant: ['READ'], to : 'CloudKitchenRead'},
        {grant: ['WRITE'], to : 'CloudKitchenWrite'},
        {grant: ['DELTE'], to: 'CloudKitchenDelete'}
    ])as projection on db.Kitchen;
    entity Staff as projection on db.Staff;
    entity Food as projection on db.Food;


entity Products as projection on productapi.A_Product{
    Product, 
    ProductType,
    BaseUnit,
    ProductGroup,
    to_Description,
    null as ProductDescription: String(80)
}
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