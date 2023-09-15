public class Pizza extends Comida{
    private String sabor;

    public Pizza(String sabor){
        this.sabor = sabor;
    }

    @Override
    public String toString() {
        return "Pizza gostosa";
    }
}
