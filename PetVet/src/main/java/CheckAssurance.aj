import main.PetStore;
public aspect CheckAssurance {
	pointcut verifyAssurance():
		execution(void PetStore.makeAppointment(..));
}
