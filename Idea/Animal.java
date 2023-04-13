package Java;
public class Animal {

    private int id;
    private String name;
    private String birthdate;

    public Animal(int id, String name, String birthdate) {
        this.id = id;
        this.name = name;
        this.birthdate = birthdate;
    }

    public int getId() {
        return id;
    }

    public int setId(int id) {
        return this.id = id;
    }

    public String getName() {
        return name;
    }

    public String setName(String name) {
        return this.name = name;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public String setBirthdate(String birthdate) {
        return this.birthdate = birthdate;
    }

    public void feed() {
        System.out.println(name + " сыт.");
    }

    @Override
    public String toString() {
        return String.format("id: %d\nName: %s\nРожден: %s\n", this.id, this.name, this.birthdate);

    }
}