/**@@
#CLASS NAME    :  MyProfilePageController
#DESCRIPTION   :  This class keeps updates of a portal user in sync with its corresponding contact. Guest users are never able to access it associated page.
@@**/

public with sharing class MyProfilePageController 
{

    private User user;
    private boolean isEdit = false;
    
/**@@
#DESCRIPTION    : This is used to return User Record.
#Paramaters     : No Parameters
@@**/
    public User getUser() {
        return user;
    }

    public MyProfilePageController() 
    {
        user = [SELECT id, email, username, usertype, communitynickname, timezonesidkey, languagelocalekey, firstname, lastname, phone, title,
                street, city, country, postalcode, state, localesidkey, mobilephone, extension, fax, contact.email
                FROM User
                WHERE id = :UserInfo.getUserId()];
        // guest users should never be able to access this page
        if (user.usertype == 'GUEST') 
        {
            throw new NoAccessException();
        }//End of If
    }//End of MyProfilePageController Constructor
    
    
/**@@
#DESCRIPTION    : This is used to return the Flag value.
#Paramaters     : No Parameters
@@**/
    public Boolean getIsEdit() 
    {
        return isEdit;
    }
  
/**@@
#DESCRIPTION    : This is used to change the Flag value to True
#Paramaters     : No Parameters
@@**/     
    public void edit() 
    {
        isEdit=true;
    }
    
     
    public void save() 
    {
        if (user.contact != null) 
        {
            setContactFields(user.contact, user);
        }//End of If

        try 
        {
            update user;
            if (user.contact != null) 
            {
                update user.contact;
            }//End of If
            
            isEdit=false;
            
        } //End of Try
        catch(DmlException e) 
        {
            ApexPages.addMessages(e);
        }//End of catch
        
    }//End of Save()

/**@@
#DESCRIPTION    : This method is used to redirect to ChangePassword page
#Paramaters     : No Parameters
@@**/        
    public PageReference changePassword() 
    {
        return Page.ChangePassword;
    }//End of changePassword

/**@@
#DESCRIPTION    : Set the isEdit flag to false and Return user record.
#Paramaters     : No Parameters
@@**/     
    public void cancel() 
    {
        isEdit=false;
        user = [SELECT id, email, username, communitynickname, timezonesidkey, languagelocalekey, firstname, lastname, phone, title,
                street, city, country, postalcode, state, localesidkey, mobilephone, extension, fax, contact.email
                FROM User
                WHERE id = :UserInfo.getUserId()];
    }//End of cancel method
    
/**@@
#DESCRIPTION    : This method is used to set Contact details from User Record.
#Paramaters     : Contact ,User record
@@**/     
    public static void setContactFields(Contact c, User u)
    {
        c.title = u.title;
        c.firstname = u.firstname;
        c.lastname = u.lastname;
        c.email = u.email;
        c.phone = u.phone;
        c.mobilephone = u.mobilephone;
        c.fax = u.fax;
        c.mailingstreet = u.street;
        c.mailingcity = u.city;
        c.mailingstate = u.state;
        c.mailingpostalcode = u.postalcode;
        c.mailingcountry = u.country;
    }//End of setContactFields Method
}//End of MyProfilePageController  Class