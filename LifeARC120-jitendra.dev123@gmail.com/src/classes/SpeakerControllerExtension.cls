public with sharing class SpeakerControllerExtension {
   
    private  ApexPages.StandardController stdContoller;
    public blob picture { get; set; }
    public String errorMessage { get; set; }
    private final Speaker__c speaker;
    public SpeakerControllerExtension(ApexPages.StandardController stdContoller){
        
        speaker = (Speaker__c)stdContoller.getRecord();
        this.stdContoller = stdContoller;
       
  }
    public PageReference save() {
    errorMessage = '';
    try {
        upsert speaker;
        if (picture != null) {
            Attachment attachment = new Attachment();
            attachment.body = picture;
            attachment.name = 'speaker_' + speaker.id + '.jpg';
            attachment.parentid = speaker.id;
            attachment.ContentType = 'application/jpg';
            insert attachment;
            speaker.Picture_Path__c = '/servlet/servlet.FileDownload?file='
                                      + attachment.id;
            update speaker;
        }
        return new ApexPages.StandardController(speaker).view();
           } catch(System.Exception ex) {
             errorMessage = ex.getMessage();
             return null;
     }
   }

 }