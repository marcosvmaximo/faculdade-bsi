import java.io.Console;

public class Cliente {
    private String nome;
    private double contaCorrente;

    public Cliente(String nome, double contaCorrete){
        this.nome = nome;
        this.contaCorrente = contaCorrete;
    }

    public void Depositar(double valor){
        contaCorrente += valor;
    }

    public void Debitar(double valor){
        contaCorrente -= valor;
    }

    public void Imprimir(){
        String retorno = "Conta bancaria: " + this.nome + "\nSaldo na conta corrente: " + this.contaCorrente;
        System.out.println(retorno);
    }
}
