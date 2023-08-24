import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Categoria limpeza = new Categoria("Limpeza");
        Categoria eletronico = new Categoria("Eletronico");

        Produto vassoura = new Produto("Vassoura", 10.99, 0.99, limpeza, 200);
        Produto detergente = new Produto("Detergente", 5.99, 0.99, limpeza, 90);
        Produto sabao = new Produto("Sabao", 2.00, 0.99, limpeza, 60);
        Produto rodo = new Produto("Rodo", 43.99, 0.99, limpeza, 900);

        Produto celular = new Produto("Samsumg A60", 3000, 900, eletronico, 20);

        List<Produto> produtos = new ArrayList<Produto>();

        produtos.add(vassoura);
        produtos.add(detergente);
        produtos.add(sabao);
        produtos.add(rodo);
        produtos.add(celular);

        System.out.println("Vamos ver quais são os produtos baratos");

        for (int i = 0; i <= produtos.size(); i++){
            if (produtos.get(i).valor >= 100) {
                System.out.println("Preco Ruimmmmmm!!");
            } else {
                System.out.println("Preço bom!");
            }
        }
    }
}


