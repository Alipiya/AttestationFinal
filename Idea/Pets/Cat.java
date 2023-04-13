package Java.Pets;

public class Cat extends Pet {
    boolean houseLiver;

    public Cat(int id, String name, String birthdate, boolean thoroughbred) {
        super(id, name, birthdate, thoroughbred);

    }

    public void Comands(){
        System.out.println("Выполняемые команды животного");
    }
}
