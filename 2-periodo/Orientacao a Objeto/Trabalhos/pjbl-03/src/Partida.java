import java.util.ArrayList;

public class Partida {
    public String mapa;
    private ArrayList<Time> times;
    public boolean finalizada;

    public Partida(String mapa, Time time1, Time time2){
        this.times = new ArrayList<Time>();
        this.times.add(time1);
        this.times.add(time2);

        finalizada = false;
    }

    public Time DisputarPartida() {
        this.times.get(0).Batalhar(times.get(1));

        finalizada = true;

        for (var time : this.times) {
            if (time.EstaVivo()) {
                return time;
            }
        }
        return null;
    }
}
