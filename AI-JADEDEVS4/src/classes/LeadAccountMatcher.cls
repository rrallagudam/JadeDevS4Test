public class LeadAccountMatcher {
    public List<String> Errors = new List<String>();
    
    public Lead leadContext {get; set;}
    
    public LeadAccountMatcher(Lead l){
        leadContext = l;
    }    
	
    public LeadAccountMatcher validateWebsite(){
        if(leadContext == null){
            Errors.add('Missing Lead context.');
            return this;
        }
        if(leadContext.Website == null){
            Errors.add('Lead is missing Website field.');
            return this;
        }
        String[] tokens = leadContext.Website.split('\\.');		
        if(tokens.size() < 2){
            Errors.add('Lead.Website must contain at least a domain and TLD (.com, .org, etc...)');
            return this;
        }
        final Integer DOMAIN = tokens.size()-2;
        final Integer TLD = tokens.size()-1;
        if(tokens[DOMAIN].toLowerCase().startsWith('http')){
            Errors.add('Lead.Website must contain at least a domain and TLD (company.com, .org, etc...)');
        }
        if(tokens[DOMAIN].toLowerCase().startsWith('www')){
            Errors.add('Lead.Website must contain at least a domain and TLD (company.com, .org, etc...)');
        }
        return this;
    }
    
    public List<Account> getMatchingAccountsByWebsite(){
        return Database.query( websiteMatchSOQL() );
    }
    
    @TestVisible public string websiteMatchSOQL(){
        return 'SELECT Id, Name, Website FROM Account WHERE Website LIKE \'%' + stripWebsite() + '%\'';
    }
   
    @TestVisible private String stripWebsite(){
        String[] tokens = leadContext.Website.split('\\.');
        final Integer DOMAIN = tokens.size()-2;
        final Integer TLD = tokens.size()-1;
        return tokens[DOMAIN ] + '.' + tokens[ TLD ];
    }
    
    public boolean hasErrors(){
        return Errors.size() > 0;
    }
}