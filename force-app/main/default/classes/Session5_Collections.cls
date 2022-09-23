public class Session5_Collections {
	Date dateToday = date.today();
    List<Contact> cont = [SELECT Email, Phone, Birthdate FROM Contact  
                          WHERE Email != null AND Phone != null AND Birthdate != null];
    
    
      }