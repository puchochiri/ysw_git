package interfaceTest;

class Dog {
	String name;
	public void bark() {
		System.out.println(name + "가 멍멍~~~");
	}
	
}

class Cat {
	String name = "";
	public void meow() {
		System.out.println(name + "가 야옹~~~");
		
		
	}
}

public class interfaceTest {

	public static void main(String[] args) {
		Dog  dog1 = new Dog();
		dog1.name = "뚱이";
		dog1.bark();
		
		Dog  dog2 = new Dog();
		dog1.name = "뚱순이";
		dog1.bark();
		
		Cat cat1 = new Cat();
		cat1.name = "깨순";
		cat1.meow();
		
		Cat cat2 = new Cat();
		cat2.name = "야옹이";
		cat2.meow();
		
		
		
		

	}

}
