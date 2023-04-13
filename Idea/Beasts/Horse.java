package Java.Beasts;

public class Horse extends Beast{

    String saddle;
    public Horse(int id, String name, String birthdate, int loadCapacity) {
        super(id, name, birthdate, loadCapacity);
    }
    
    public void Comands(){
        System.out.println("Выполняемые команды животного");
    }
}
