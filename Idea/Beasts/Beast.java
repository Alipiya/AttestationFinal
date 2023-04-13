package Java.Beasts;
import Java.Animal;

public class Beast extends Animal implements Employable {
    private int loadCapacity;

    public Beast(int id, String name, String birthdate, int loadCapacity) {
        super(id, name, birthdate);
        this.loadCapacity = loadCapacity;
    }

    public int getLoadCapacity(){
        return loadCapacity;
    }

    public void setLoadCapacity(int loadCapacity){
        this.loadCapacity = loadCapacity;
    }

    @Override
    public void employ() {
    }

    @Override
    public String toString() {
        return String.format("id: %d\nName: %s\nРожден: %s\nГрузоподъемность: %s\n", getId(), getName(), getBirthdate(), this.loadCapacity);
    }

}
