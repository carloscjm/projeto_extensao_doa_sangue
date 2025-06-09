// Função auxiliar para obter a URL correta da API
function getApiUrl() {
    const hostname = window.location.hostname;

    // Se o hostname for 'localhost' ou '127.0.0.1', estamos em desenvolvimento
    if (hostname === 'localhost' || hostname === '127.0.0.1') {
        return 'http://localhost:3000'; // URL de Desenvolvimento
    } else {
        // Caso contrário, estamos em produção
        // IMPORTANTE: Coloque a URL da sua API na Fly.io aqui
        return 'https://projeto-extensao-doa-sangue.fly.dev'; // URL de Produção
    }
}

// Lógica que estava dentro do cabeçalho.html
console.log("Script do cabeçalho executado!");

let logado = localStorage.getItem('jwt');
console.log('logado: ', logado);
    // Escuta o evento personalizado que disparamos quando o HTML do cabeçalho foi injetado
    document.addEventListener('cabecalhoCarregado', function() {
        if (logado) {
            document.getElementById('opcao-login').style.display = 'none';
            document.getElementById('opcao-cadastro').style.display = 'none';
            
            const userButton = document.getElementById('userMenu');
            const userSubmenu = document.getElementById('profileSubmenu');

            if (userButton && userSubmenu) {
                userButton.addEventListener('click', (event) => {
                    event.stopPropagation();
                    userSubmenu.classList.toggle('active'); // Usando a classe do exemplo anterior
                });
                
                // Lógica de fechar ao clicar fora, etc.
                document.addEventListener('click', () => {
                    if (userSubmenu.classList.contains('active')) {
                        userSubmenu.classList.remove('active');
                    }
                });

                userSubmenu.addEventListener('click', (event) => {
                    localStorage.clear();
                    window.location.reload()
                });
            } else {
                console.error("Não foi possível encontrar os elementos do menu do cabeçalho.");
            }
        } else {
             document.getElementById('userMenu').style.display = 'none';
             document.getElementById('demanda_header').style.display = 'none';
        }
    });