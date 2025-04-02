package PI;

public class produto {
    private String nome;
    private double preco;
    private int quantidade;
    private int saldoEstoque; // Variável para armazenar o saldo após vendas

    public produto(String nome, double preco, int quantidade) {
        this.nome = nome;
        this.preco = preco;
        this.quantidade = quantidade;
        this.saldoEstoque = quantidade; // Inicializa o saldo com a quantidade inicial
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public int getSaldoEstoque() {
        return saldoEstoque;
    }

    public void exibirDetalhes() {
        System.out.println("Produto: " + nome + ", Preço: R$" + preco + ", Quantidade: " + quantidade);
    }

    // Método para realizar uma venda
    public boolean vender(int quantidadeVendida) {
        if (quantidadeVendida > 0 && quantidadeVendida <= this.quantidade) {
            this.quantidade -= quantidadeVendida;
            this.saldoEstoque = this.quantidade; // Atualiza o saldo do estoque após a venda
            System.out.println(this.nome + " Vendida com sucesso! Saldo em estoque: " + this.saldoEstoque);
            return true;
        } else {
            System.out.println("Venda não realizada! Estoque insuficiente ou quantidade inválida.");
            return false;
        }
    }
}
