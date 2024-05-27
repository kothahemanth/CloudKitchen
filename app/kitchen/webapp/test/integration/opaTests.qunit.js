sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/satinfotech/hemanth/project1/test/integration/FirstJourney',
		'com/satinfotech/hemanth/project1/test/integration/pages/KitchenList',
		'com/satinfotech/hemanth/project1/test/integration/pages/KitchenObjectPage'
    ],
    function(JourneyRunner, opaJourney, KitchenList, KitchenObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/satinfotech/hemanth/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheKitchenList: KitchenList,
					onTheKitchenObjectPage: KitchenObjectPage
                }
            },
            opaJourney.run
        );
    }
);