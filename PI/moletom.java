package PI;

public class moletom extends produto {
    private String tamanho;
    private String cor;

    public moletom(String nome, double preco, int quantidade, String tamanho, String cor) {
        super(nome, preco, quantidade);
        this.tamanho = tamanho;
        this.cor = cor;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    @Override
    public void exibirDetalhes() {
        System.out.println("Moletom: " + getNome() + ", Tamanho: " + tamanho + ", Cor: " + cor +
                ", Preço: R$" + getPreco() + ", Quantidade: " + getQuantidade());
    }
}
