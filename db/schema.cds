namespace com.hemanth.satinfotech;
using { managed, cuid } from '@sap/cds/common';

entity Kitchen: managed, cuid {
    
    @title:'Name'
    name:String(20);
    @title:'Address 1'
    add1:String(20);
    @title:'Address 2'
    add2:String(20);
    @title:'City'
    city:String(20);
    @title:'pin code'
    pinCode:String(10);
    @title:'State'
    state:String(20);
    @title:'Phone Number'
    ph_no:String(10);
}

entity Staff : cuid, managed {
    @title: 'Staff ID'
    staff_id : String(10);
    @title: 'Staff Name'
    staff_name: String(20);
    @title: 'Staff Image'
    staff_img: String default 'https://imgur.com/djS2boy.jpg';
    @title: 'Designation'
    staff_des: String(30);
    @title: 'Salary'
    staff_sal: Integer;
    @title: 'Staff Age'
    staff_age: Integer;
}

entity Food : cuid, managed {
    @title: 'Dish ID'
    dish_id: String(10);
    @title: 'Dish Name'
    dish_name: String(20);
    @title: 'Dish Image'
    dish_img: String default 'https://imgur.com/djS2boy.jpg';
    @title: 'Price'
    dish_price: String(30);
    @title: 'Preparation Time'
    dish_time: Integer;
}

entity ProductLocal:  managed {

    @title: 'Product ID'
    @readonly
    key Product: String(40);
    @title:'Product Type'
    @readonly
    ProductType: String(4);
    @readonly
    @title: 'Base Unit'
    BaseUnit: String(3);
    @readonly
    @title: 'Product Group'
    ProductGroup: String(18);
    @title: 'Product Description'
    ProductDescription: String(40);
}