public with sharing class airlineTicketFutureScheduler implements Schedulable {
    //Execute
    public void execute(SchedulableContext sc){
        airlineTicket.futureSendEmail('Istanbul', 'Miami', 'TK77', '25A');
    }
}