// Lógica que estava dentro do cabeçalho.html
console.log("Script do cabeçalho executado!");

let logado = localStorage.getItem('jwt');
console.log('logado: ', logado);
    // Escuta o evento personalizado que disparamos quando o HTML do cabeçalho foi injetado
    document.addEventListener('cabecalhoCarregado', function() {
        if (logado) {
            document.getElementById('opcao-login').style.display = 'none';
            document.getElementById('opcao-cadastro').style.display = 'none';
            console.log("Cabeçalho carregado, executando script do cabeçalho agora.");
            
            const userButton = document.getElementById('userMenu');
            const userSubmenu = document.getElementById('profileButton');

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
            } else {
                console.error("Não foi possível encontrar os elementos do menu do cabeçalho.");
            }
        } else {
             document.getElementById('userMenu').style.display = 'none';
        }
    });