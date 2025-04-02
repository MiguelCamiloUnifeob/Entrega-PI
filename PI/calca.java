package PI;

    public class calca extends produto {
    private String material;

    public calca(String nome, double preco, int quantidade, String material) {
        super(nome, preco, quantidade);
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
       this.material = material;
    }

    @Override
    public void exibirDetalhes() {
        System.out.println("Calça: " + getNome() + ", Material: " + material +
                ", Preço: R$" + getPreco() + ", Quantidade: " + getQuantidade());
    }
}
    

