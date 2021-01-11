# Avaliação Beca Mobile iOS

Criar um aplicativo que realize a listagem de filmes e exibição dos detalhes:
 * Tela principal, lista de filmes:
    - Listar capa dos filmes que são tendências da semana. 
 * Tela de detalhes do filme:  
    - Quando o usuário selecionar um filme, o aplicativo deve direciona-lo para uma segunda tela e exibir o título, capa, rating e sinopse. 

* API para consumo: 
  - A listagem de filmes deve ser consultada na API https://developers.themoviedb.org/3/getting-started/introduction 
    Ao se cadastrar você receberá uma chave de acesso, que deverá ser usada nas requisições. 
  - Requisição para listar as tendências https://developers.themoviedb.org/3/trending/get-trending
    - Ex.: https://api.themoviedb.org/3/trending/all/week?api_key=00000&language=pt-BR
  - Requisição para listar os detalhes https://developers.themoviedb.org/3/movies/get-movie-details
    - Ex.: https://api.themoviedb.org/3/movie/454626?api_key=00000&language=pt-BR
    
* Se opcionalmente quiser fazer o clone via SSH, segue ajuda do GitHub:
  - https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
  - Se for usar o ssh para clone, este comando ajuda a salvar a chave de forma local: 
    - ssh-add -K ~/.ssh/id_rsa
  
* Ao iniciar a avaliação:
  - Faça um fork deste projeto
  - Fazer o cadastro no site para consumir a API
  
* Mandando bem na avaliação:
  - Realize quantos commits puder, não queremos somente a solução final; queremos saber como você chegou lá. Sua evolução vale tanto quanto o resultado final.
  - A arquitetura é livre, não se procupe com isto neste momento.
  - O Design é livre, mas se tiver um tempinho... gostariamos que fizesse uma revisão final, usando as dicas da Apple:
  https://developer.apple.com/design/tips/
  - Sugestões de bibliotecas:
     - Carregamento de imagens 
       - https://github.com/Alamofire/AlamofireImage
     - Requisições:
       - Opção 1) http https://github.com/Alamofire/Alamofire
       - Opção 2) https://github.com/Moya/Moya

* Ao finalizar a avaliação:
   - Quando finalizar a implementação faça um pull request; na descrição informe qual a abordagem que você utilizou para chegar na solução, descreva também quais foram os maiores desafios para concluir a avaliação.

* :clap: Parabéns por ter chegado até aqui! :smile: _Um grande abraço e bem vindo ao time Mobile iOS_ :iphone: :punch:


Sobre o projeto:

O projeto como todo foi enriquecedor, mas principalmente desafiador! Meu app foi baseado na arquitetura MVC, porém sei que deixei a desejar, pois senti dificuldades em tirar responsabilidades do viewController. Trabalhar com closures ainda me parece estranho, o que me forcou a procurar alternativas. Comecei a implementar a paginação, porém estava com erro na requisição e por vezes puxava a próxima página e vezes não, dando erro no console, por fim, por não ter mais tempo hábil, desfiz essas ultimas modificações para não entregar um projeto com erro. Senti que a parte de tela e responsividade foi a mais fácil, que melhor fluiu. Fazer a manipulação dos objetos para a tela também foi simples, com excecão da imagem que me tirou algumas horas.
