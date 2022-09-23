public class airlineTicket {
    
    public string departureCity;
    public string arrivalCity;
    public string flightNumber;
    public string seatNumber;
    
    public void printTicket(){
        system.debug('This ticket is for the journey from ' +departureCity+ ' to '
                     +arrivalCity+'. Your Flight Number is '+flightNumber+' and Seat Number is '+seatNumber);  
                     
                     futureSendEmail(departureCity,arrivalCity,flightNumber,seatNumber);          
    }
   @future
   public static void futureSendEmail(String departureCity, String arrivalCity, 
                                      String flightNumber, String seatNumber  ) {
    
    List<Messaging.SingleEmailMessage> emailMsgs = new List<Messaging.SingleEmailMessage>();
   
        Messaging.SingleEmailMessage emailMsg = new Messaging.SingleEmailMessage();
        List<String> emailAddress = new List<String>();
        emailAddress.add(UserInfo.getUserEmail());
        emailMsg.setToAddresses(emailAddress);
        emailMsg.setSubject('Welcome to travel with us!');  
        String body = 'Please find your ticket details below' + '\n\n' +
                'Departure (From) : ' + departureCity + '\n' + 
                'Arrival (To) : ' + arrivalCity + '\n' + 'Seat Number : ' + seatNumber + '\n\n' +
                'Have a wonderful journey!';
        emailMsg.setPlainTextBody(body);
        emailMsgs.add(emailMsg);       
        
        Messaging.sendEmail(emailMsgs); 
   }
      
    }