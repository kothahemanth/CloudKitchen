sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.satinfotech.hemanth.project1',
            componentId: 'KitchenObjectPage',
            contextPath: '/Kitchen'
        },
        CustomPageDefinitions
    );
});