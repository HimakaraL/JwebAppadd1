package policyser;

public class Policy {
	
	private int pid;
	private String pdescription;
	
	public Policy() {

	}
	
	public Policy(int pid, String pdescription) {
	        this.pid = pid;
	        this.pdescription = pdescription;
	 }
	 
	public int getPid() {
		return pid;
	}
	
	
	public String getPdescription() {
		return pdescription;
	}
	

	
	
	
}
