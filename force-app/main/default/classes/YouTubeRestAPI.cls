public inherited sharing class YouTubeRestAPI {

    public static void getYoutubeDetails(String recordId, String videoId){
        String apiKey = YouTube_Setting__mdt.getInstance('API_Key').Value__c;
        String endpointURL = YouTube_Setting__mdt.getInstance('Endpoint').Value__c;
        endpointURL += '?part=statistics';
        endpointURL += '&id='+videoId;
        endpointURL += '&key='+apiKey;

        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint(endpointURL);

        Http http = new Http();
        HttpResponse response = http.send(request);

        Map<String, Object> responseMap = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
        //kind => value
        //etags => value
        //items => array
        //pageInfo =>
        system.debug('responseMap: '+responseMap);
        List<Object> items = (List<Object>)responseMap.get('items');
        system.debug('items: '+items);

        Map<String, Object> item = (Map<String, Object>)JSON.deserializeUntyped(JSON.serialize(items[0]));
        System.debug('item: '+item);

        Object statistics = item.get('statistics');
        System.debug('statistics: '+statistics);

        Map<String, Object> statisticsMap = (Map<String, Object>)JSON.deserializeUntyped(JSON.serialize(statistics));
        System.debug('statisticsMap: '+statisticsMap);

        You_Tube_Videos_Details__c ytd = new You_Tube_Videos_Details__c();
        ytd.Id = recordId;
        if(statisticsMap.containsKey('likeCount')){
            ytd.Number_of_Likes__c = String.valueOf(statisticsMap.get('likeCount'));
        }
        if(statisticsMap.containsKey('viewCount')){
            ytd.Number_of_View_Counts__c = String.valueOf(statisticsMap.get('viewCount'));
        }
        update ytd;
    }

    @InvocableMethod
    public static void updateYoutube(List<FlowInputs> flowInputs){
        getYoutubeDetails(flowInputs[0].recordId, flowInputs[0].videoId);
    }

    public class FlowInputs{
        @InvocableVariable public String recordId;
        @InvocableVariable public String videoId;
    }
}

//FlowInputs inputs = new FlowInputs();
    //inputs.recordId = {!recordId}
    //inputs.videoId = {!Get_Youtube_Video_record.Video_Id__c}
    //List<FlowInputs> listInputs = new List<FlowInputs>();
    //listInputs.add(inputs);
    //return listInputs;