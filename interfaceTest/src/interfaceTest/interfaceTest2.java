package interfaceTest;

interface Animal {
	/* public abstract void sound(); */
	void sound();
	
}

class NewDog implements Animal {
	String name;

	@Override
	public void sound() {
		System.out.println(name+ "가 멍멍~~~~~~~");
		
	}

}

class NewCat implements Animal {
	String name;

	@Override
	public void sound() {
		System.out.println(name+ "가 야옹~~~~~~~");
		
		
	}

}

public class interfaceTest2 {

	public static void main(String[] args) {
		NewDog dog1 = new NewDog();
		dog1.name = "뚱이";
	//	dog1.sound();
		
		NewCat cat1 = new NewCat();
		cat1.name = "야옹";
	//	cat1.sound();
		
		sori(dog1);
		sori(cat1);
	}
	//아래를 위해 interface를 사용
	private static void sori(Animal anim) {
		anim.sound();
	}

}
