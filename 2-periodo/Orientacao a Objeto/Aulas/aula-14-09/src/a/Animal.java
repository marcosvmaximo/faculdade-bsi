package a;

public abstract class Animal {
    public float peso;
    public int idade;
    public int membros;

    public abstract void locomover();
    public abstract void alimentar(String alimento);
    public abstract void emitirSom();
}

