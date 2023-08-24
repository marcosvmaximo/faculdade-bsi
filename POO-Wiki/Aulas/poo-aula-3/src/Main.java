import java.util.ArrayList;
import java.util.Date;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
//    public static void main(String[] args) {
//
//        Banco banco = new Banco();
//        banco.main();
//    }
    public static void main(String[] args) {
        ArrayList<Filme> filmes = new ArrayList<Filme>();

        Filme f1 = new Filme("Filme 1", new Date(2000, 01, 1));
        Filme f2 = new Filme("Filme 2", new Date(2000, 01, 1));
        Filme f3 = new Filme("Filme 3", new Date(2000, 01, 1));
        Filme f4 = new Filme("Filme 4", new Date(2000, 01, 1));

        filmes.add(f1);
        filmes.add(f2);
        filmes.add(f3);
        filmes.add(f4);


    }
}