public class Comida {
    public Comida(){
        mostrarMensagem();
    }
    public void mostrarMensagem(){
        this.assar(this);
    }
    private void assar(Comida comida){
        String mensagem = String.format("Comida: %s está assando", comida);
        System.out.println(mensagem);
    }
}
