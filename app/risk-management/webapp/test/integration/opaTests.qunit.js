sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'kfcfioriapprm/riskmanagement/test/integration/FirstJourney',
		'kfcfioriapprm/riskmanagement/test/integration/pages/RisksList',
		'kfcfioriapprm/riskmanagement/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('kfcfioriapprm/riskmanagement') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);