sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/hemanth/satinfotech/product/test/integration/FirstJourney',
		'com/hemanth/satinfotech/product/test/integration/pages/ProductLocalList',
		'com/hemanth/satinfotech/product/test/integration/pages/ProductLocalObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductLocalList, ProductLocalObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/hemanth/satinfotech/product') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductLocalList: ProductLocalList,
					onTheProductLocalObjectPage: ProductLocalObjectPage
                }
            },
            opaJourney.run
        );
    }
);