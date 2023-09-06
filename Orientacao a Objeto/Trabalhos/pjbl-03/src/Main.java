// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        Campeao campeao1 = new Campeao("Draven");
        Campeao campeao2 = new Campeao("Lux");
        Campeao campeao3 = new Campeao("Gordo");
        Campeao campeao4 = new Campeao("Magro");
        Campeao campeao5 = new Campeao("Lulu");
        Campeao campeao6 = new Campeao("Pix");
        Campeao campeao7 = new Campeao("Maga");
        Campeao campeao8 = new Campeao("Mago");
        Campeao campeao9 = new Campeao("Loco");
        Campeao campeao10 = new Campeao("Ryze");

        Time time1 = new Time("Time dos doidos", campeao1, campeao2, campeao3, campeao4, campeao5);
        Time time2 = new Time("Time orientação a obj", campeao6, campeao7, campeao8, campeao9, campeao10);

        Partida partida = new Partida("Summonners Rift", time1, time2);

        Time vencedor = partida.DisputarPartida();

        System.out.println("Vencedor foi o time");
        System.out.println(vencedor.toString());
    }
}