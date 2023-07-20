public class Kebab {
    int price;
    String name;
    String[] ingredients;

    public Kebab(int price, String name) {
        this.price = price;
        this.name = name;
    }

    public Kebab(int price, String name, String[] ingredients) {
        this.price = price;
        this.name = name;
        this.ingredients = ingredients;
    }

    public void addIngredient(String ingredient) {
        ingredients[1] = ingredient;
    }
}
