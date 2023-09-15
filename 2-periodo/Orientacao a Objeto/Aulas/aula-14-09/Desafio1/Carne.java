public class Carne extends Comida{
    private String corte;

    public Carne(String corte){
        this.corte = corte;
    }

    @Override
    public String toString() {
        return "Carne gostosa";
    }
}
