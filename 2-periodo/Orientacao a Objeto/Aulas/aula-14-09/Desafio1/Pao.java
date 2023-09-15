public class Pao extends Comida{
    private String tipo;

    public Pao(String tipo){
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return "Pao gostosa";
    }
}
