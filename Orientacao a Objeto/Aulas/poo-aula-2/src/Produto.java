public class Produto {
    public Produto(String nome, double valor, double desconto, Categoria categoria, int quantidadeEstoque){
        this.nome = nome;
        this.valor = valor;
        this.desconto = desconto;
        this.categoria = categoria;
        this.estoque = quantidadeEstoque;
    }
    public String    nome;
    public double    valor;
    public double    desconto;
    public Categoria categoria;
    public int estoque;

    public double obterDesconto() {
        return desconto;
    }

    public void vender(){
        estoque--;
    }

    public void alterarCategoria(Categoria categoria){
        this.categoria = categoria;
    }

    public void alterarValor(double novoValor){
        this.valor = novoValor;
    }
}
