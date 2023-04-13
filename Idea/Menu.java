package Java;

import java.util.Scanner;

public class Menu {
    static Scanner scanner = new Scanner(System.in);

    // Метод, показывающий главное меню программы
    public static void showMainMenu() {
        System.out.println("Введите цифру необходимого действия: \n" +
                "1. Показать весь питомник\n" +
                "2. Показать только выбранный вид животных\n" +
                "3. Увидеть список команд, выполняемых животным\n" +
                "4. Обучить животное новым командам\n" +
                "5. Завести новое животное");
    }


    public static void printOnlyThisClass(Farm<Animal> animalFarm) {
        System.out.println("Выберите вид животных: \n" +
                "1. Домашние\n" +
                "2. Вьючные");
        int userSelectedClass = scanner.nextInt();

        switch (userSelectedClass) {
            case 1:
                animalFarm.printOnlyThisClass(1);
                break;
            case 2:
                animalFarm.printOnlyThisClass(2);
                break;
        }
    }

    public static void Comands(){
        System.out.println("Выберите тип животных: \n" +
                "1. Домашние\n" +
                "2. Вьючные");
        int userSelectedClass = scanner.nextInt();

        switch (userSelectedClass) {
            int userSelected;
            case 1:
                System.out.println("Выберите вид животных: \n" +
                "1. Кошки\n" +
                "2. Собаки\n" +
                "3. Хомяки\n");
                userSelected = scanner.nextInt();
                switch (userSelected) {
                    case 1:
                        Cat.Comands();
                        break;
                    case 2:
                        Dog.Comands();
                        break;
                    case 3:
                        Hamster.Comands();
                        break;
                    }
            break;
            case 2:
                System.out.println("Выберите вид животных: \n" +
                "1. Верблюды\n" +
                "2. Ослы\n" +
                "3. Лошади\n");
                userSelected = scanner.nextInt();
                switch (userSelected) {
                    case 1:
                        Camel.Comands();
                        break;
                    case 2:
                        Donkey.Comands();
                        break;
                    case 3:
                        Horse.Comands();
                        break;
                    }
            break;
                }

    }

    public static void newComand(){
        

    }

    public static void newAnimal(){

    }
}