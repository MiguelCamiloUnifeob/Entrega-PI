package PI;

public class principal {
    public static void main(String[] args) {
        
        camiseta camiseta1 = new camiseta("Camiseta Polo", 49.99, 10, "M", "Azul");
        calca calça1 = new calca("Calça Jeans", 89.90, 5, "Denim");
        moletom moletom1 = new moletom("Moletom",30.00, 20, "GG", "Preto" );
        shorts shorts1 = new shorts("Shorts",80.00, 15, "40", "Vermelho" );
        
        camiseta1.exibirDetalhes();
        calça1.exibirDetalhes();
        moletom1.exibirDetalhes();
        shorts1.exibirDetalhes();

        System.out.println("\nApós venda:");
        camiseta1.vender(2);
        calça1.vender(1);
        moletom1.vender(2);
        shorts1.vender(3);
        
    }
}

