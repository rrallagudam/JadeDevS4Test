public class NetExamStudentPortalController {
    
    public integer version { get; set; }

    public NetExamStudentPortalController() {
        Apexpages.currentPage().getHeaders().put('X-UA-Compatible', 'IE=8');
        version =  rand();
    }
    
    public integer rand()
    {
        return integer.valueof(Math.floor(Math.random()*1000));
    }
}