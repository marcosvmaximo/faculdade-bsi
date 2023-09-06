public class Campeao {
    public String nome;
    public boolean morto;
    public float vida;

    public Campeao(String nome){
        this.nome = nome;
        this.morto = false;
        this.vida = 10f;
    }

    public void Apanhar(float dano){
        if(!morto){
            if(dano >= this.vida){
                Matar();
                this.vida = 0;
            }
            else{
                this.vida -= dano;
            }
        }
        else{
            System.out.println("Não é possível realizar essa ação, " + this.nome + " está morto.");
        }
    }

    public void Atacar(Campeao inimigo, float dano){
        if(!morto){
            if(inimigo.morto){
                System.out.println("Não é possível atacar um inimigo morto");
            }
            else {
                inimigo.Apanhar(dano);
            }
        }
        else{
            System.out.println("Não é possível realizar essa ação, " + this.nome + " está morto.");
        }
    }
    private void Matar(){
        this.morto = true;
    }
}
