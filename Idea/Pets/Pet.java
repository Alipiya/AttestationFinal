package Java.Pets;
import Java.Animal;

public class Pet extends Animal implements Playable {
    boolean thoroughbred;

    public Pet(int id, String name, String birthdate, boolean thoroughbred) {
        super(id, name, birthdate);
        this.thoroughbred = thoroughbred;
    }

    public boolean getThoroughbred(){
        return thoroughbred;
    }

    public void setThoroughbred(boolean thoroughbred){
        this.thoroughbred = thoroughbred;
    }

    @Override
    public void play() {
        
    }

    @Override
    public String toString() {
        return String.format("id: %d\nName: %s\nРожден: %s\nПородистый: %s\n", getId(), getName(), getBirthdate(), this.thoroughbred);
    }
}