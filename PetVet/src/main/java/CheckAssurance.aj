import main.PetStore;
public aspect CheckAssurance {
	pointcut verifyAssurance():
		execution(void PetStore.makeAppointment(..));
	
	after():verifyAssurance(){
		System.out.println("Request was executed successfully");
	}
}
