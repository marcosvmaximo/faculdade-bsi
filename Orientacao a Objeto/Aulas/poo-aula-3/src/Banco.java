import java.io.Console;
import java.util.ArrayList;
import java.util.List;

public class Banco {
    public void main(){

        List<Cliente> clientes = new ArrayList<>();

        Cliente jandira = new Cliente("Jandira Silva", 2500);
        Cliente sandra = new Cliente("Sandra Rodrigues", 1800);
        Cliente luciana = new Cliente("Luciana Teixera", 5000);

        clientes.add(jandira);
        clientes.add(sandra);
        clientes.add(luciana);

        System.out.println("Contas em nossos sistemas:");
        for (var cliente :
                clientes) {
            cliente.Imprimir();
        }
        System.out.println("-----------------------------");

        jandira.Debitar(1000);
        jandira.Imprimir();

        sandra.Debitar(2000);
        sandra.Depositar(500);
        sandra.Imprimir();

        sandra.Debitar(2000);
        sandra.Imprimir();

        luciana.Depositar(1000);
        luciana.Imprimir();
    }
}
