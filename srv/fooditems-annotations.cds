annotate satinfotech.Food with @(
    UI.LineItem          : [
        {
            Label: 'Dish ID',
            Value: dish_id
        },
        {
            Label: 'Dish Name',
            Value: dish_name
        },
        {
            Label: 'Dish Image',
            Value: dish_img
        },
        {
            Label: 'Price',
            Value: dish_price
        },
        {
            Label: 'Preparation Time',
            Value: dish_time
        }
    ],
    UI.FieldGroup        : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: dish_id
            },
            {
                $Type: 'UI.DataField',
                Value: dish_name
            },
            {
                $Type: 'UI.DataField',
                Value: dish_img
            },
            {
                $Type: 'UI.DataField',
                Value: dish_price
            },
            {
                $Type: 'UI.DataField',
                Value: dish_time
            },
        ],
    },
    UI.Facets           : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'FoodFacet',
            Label : 'Food',
            Target: '@UI.FieldGroup',
        }
    ]
);
