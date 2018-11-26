public class MassUpdateClass {
    ApexPages.StandardSetController setCon;
    public MassUpdateClass(ApexPages.StandardSetController controller) {
        setCon = controller;
    }
    public integer getMySelectedSize() {
        return setCon.getSelected().size();
    }
    public integer getMyRecordsSize() {
        return setCon.getRecords().size();
    }
    
    
}