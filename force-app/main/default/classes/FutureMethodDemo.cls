public class FutureMethodDemo {

    public void getReady(){
        system.debug('Get Ready');
    }
    
    public void breakfast(){
        system.debug('Breaksfast');
    }
    public void movie(){
        system.debug('Movie');
    }
    
    @future
	public static void carServicing(){
        system.debug('Car Servicing');
    }    
}