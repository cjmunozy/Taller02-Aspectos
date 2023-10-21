import main.PetStore;
public aspect CheckAssurance {
	pointcut verifyAssurance():
		execution(void PetStore.makeAppointment(..));
	
	private String petName;
	
    before() : verifyAssurance() {
        System.out.println("Verifying assurance...");
        petName = PetStore.readConsole("Name of your pet:");
        System.out.println("Welcome " + petName);
        System.out.println("You are able to use this service");
    }
	
	after():verifyAssurance(){
		System.out.println("Request was executed successfully");
	}
}
