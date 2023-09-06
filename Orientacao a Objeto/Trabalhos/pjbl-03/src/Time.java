import java.util.ArrayList;
import java.util.Random;

public class Time {
    private final String nome;
    public ArrayList<Campeao> campeaoes;

    public Time(String nomeTime, Campeao campeao1, Campeao campeao2, Campeao campeao3, Campeao campeao4, Campeao campeao5){
        campeaoes = new ArrayList<Campeao>();

        this.nome = nomeTime;
        campeaoes.add(campeao1);
        campeaoes.add(campeao2);
        campeaoes.add(campeao3);
        campeaoes.add(campeao4);
        campeaoes.add(campeao5);
    }

    public void Batalhar(Time inimigo){
        do{
            for (var ali: campeaoes){ // Cada campeao do time realiza um ataque
                for (var ini: inimigo.campeaoes){ // ataca todos campeos
                    if(ini.morto){
                        return;
                    }
                    ali.Atacar(ini, GerarValorDano());
                }
            }
        }
        while (EstaVivo());
    }

    private int GerarValorDano(){
        Random random = new Random();
        int valorAleatorio = random.nextInt(10) + 1;

        return valorAleatorio;
    }

    public String toString(){
        return this.nome;
    }

    public boolean EstaVivo(){
        boolean campeaosVivos = false;
        for (var campeao: this.campeaoes){
            if(!campeao.morto){
                campeaosVivos = true;
            }
        }

        return campeaosVivos;
    }
}