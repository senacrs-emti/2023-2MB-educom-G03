-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/11/2023 às 22:42
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `leituras`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `albuns`
--

CREATE TABLE `albuns` (
  `idalbum` int(11) NOT NULL DEFAULT 0,
  `titulo` varchar(90) NOT NULL,
  `autoria` varchar(90) NOT NULL,
  `resumo` longtext NOT NULL,
  `context_hist` longtext DEFAULT NULL,
  `editora` int(11) NOT NULL,
  `genero` int(11) NOT NULL,
  `lanc` int(11) NOT NULL,
  `edicao` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `albuns`
--

INSERT INTO `albuns` (`idalbum`, `titulo`, `autoria`, `resumo`, `context_hist`, `editora`, `genero`, `lanc`, `edicao`) VALUES
(1, 'Tropicália ou Panis et Circensis', 'Caetano Veloso, Gilberto Gil, Tom Zé, Gal Costa, Os Mutantes, Nara Leão e Rogério Duprat', 'Lançado em 1968, o disco reúne artistas como Tom Zé, Nara Leão, Torquato Neto e Gal Costa, entre outros, que, capitaneados por Caetano Veloso e Gilberto Gil, misturam rock, marchinha e orquestrações. É o primeiro disco a ingressar na lista de leituras obrigatórias. O professor Luís Augusto Fischer lembra que o programa da prova de literatura já previa, desde muitos anos, a obra de cancionistas essenciais, em particular Caetano Veloso e Chico Buarque.', 'O Tropicalismo foi o movimento que elaborou as obras mais antropofágicas da história da arte brasileira e refletiu criticamente sobre a formação do Brasil. Atingiu seu ápice com o disco-manifesto Tropicália ou Panis et circencis, criado por um coletivo de artistas e músicos extraordinários: Caetano Veloso, Gilberto Gil, Tom Zé, Gal Costa, o grupo Os Mutantes, Nara Leão, Rogerio Duprat, Torquato Neto e José Carlos Capinam.', 12, 7, 1968, '2015, 2016, 2017'),
(2, 'Elis & Tom', 'Elis Regina e Antônio Carlos Jobim', 'Elis & Tom é um LP de 1974, que reúne a cantora Elis Regina (1945-1982) e o compositor Tom Jobim (1927-1994). O repertório inclui 14 faixas, todas de autoria de Tom Jobim, nove em parceria com outros compositores. O lançamento marca os dez anos de Elis na Philips, e resulta de uma oferta da gravadora  para celebrar a data. Cesar Camargo Mariano (1943), marido e arranjador de Elis à época, conta que eles ouvem frequentemente o disco Por Toda Minha Vida (1959), da cantora Lenita Bruno (1926-1987), e todo repertório com composições de Tom Jobim e Vinicius de Moraes (1913-1980). Inspirados nele, o casal cultiva o sonho de fazer um LP só com músicas de Tom Jobim.', 'O disco é o encontro de dois dos maiores nomes da música popular brasileira e conta com arranjos de César Camargo Mariano, pianista e então marido de Elis, que inovou utilizando instrumentos elétricos na bossa nova. Em uma forma contida e suave, ela interpreta diversos clássicos do gênero, como ‘Águas de Março’ (que se tornou o maior sucesso do disco), ‘Corcovado’, ‘Inútil Paisagem’, às vezes em dueto com Jobim, que em outros momentos apenas a acompanha no violão ou piano. \'Modinha\' foi a única canção do disco a ser totalmente arranjada por Jobim. Elis & Tom foi um sucesso de vendas e de crítica, e continua sendo aclamado até os dias de hoje por músicos e críticos no mundo inteiro. No seu aniversário de 30 anos, em 2004, contou com um relançamento especial e, até 2013, foi um dos discos destacados nas paradas de vendas do iTunes no Brasil. Além disso, Elis & Tom tem sido lembrado nos principais livros, compêndios e enciclopédias brasileiras e internacionais de música e, em 2007, foi escolhido por jornalistas e críticos musicais como o 11º melhor disco da música brasileira pela Rolling Stone.', 12, 6, 1974, '2018, 2019'),
(3, 'Construção', 'Chico Buarque', 'Construção é um álbum de música, escrito por Chico Buarque de Hollanda, ator escrito e cantor brasileiro. Seu álbum é lançado em 1971, desafiando a censura. Constituído por dois lados, lado A e lado B assim como um disco de vinil onde a primeira e a última música se completam: Lado A: Deus lhe pague, Cotidiano, Desalento e Construção; Lado B: Cordão, Olha maria, Samba de orly, Valsinha, Minha história, Acalanto.', '‘Construção’ é o primeiro disco de Chico Buarque desenvolvido após o exílio na Itália. Em 1969, o ano da decretação do famigerado AI-5, o músico pegou sua família (esposa e filha) e foi viver no exterior. Chico buscava um pouco de paz e o mínimo de segurança. Afinal, nessa época, houve um aumento considerável de perseguições políticas no país provocadas pelos milicos no poder (historicamente intransigentes com as classes artística e cultural e chegadinhos em atacar covardemente os civis).', 12, 6, 1971, '2021, 2022, 2023');

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

CREATE TABLE `editora` (
  `ideditora` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `editora`
--

INSERT INTO `editora` (`ideditora`, `nome`) VALUES
(1, 'Global Editora'),
(2, 'Nova Fronteira'),
(3, 'Brasiliense'),
(4, 'Objetiva'),
(5, 'Editora Record'),
(6, 'Cultrix'),
(7, 'Editora Moderna'),
(8, 'Editora Garnier'),
(9, 'Editora Alfaguara'),
(10, 'Companhia das Letras'),
(11, 'Editora Martin Claret'),
(12, 'Philips'),
(13, 'Editora Dialética'),
(14, 'Editora L&PM'),
(15, 'Agir'),
(16, 'Rocco'),
(17, 'Biblioteca Azul'),
(18, 'Francisco Alves'),
(19, 'Mazza'),
(20, 'Todavia'),
(21, 'Editora Hedra'),
(22, 'Editora 34'),
(23, 'Peirópolis'),
(24, 'MARTINS Editora');

-- --------------------------------------------------------

--
-- Estrutura para tabela `genero`
--

CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `genero`
--

INSERT INTO `genero` (`idgenero`, `nome`) VALUES
(1, 'Ficção literária'),
(2, 'Drama'),
(3, 'Biografia, autobiografia'),
(4, 'Romance'),
(5, 'Poesia'),
(6, 'MPB'),
(7, 'Tropicália'),
(8, 'Ficcção histórica'),
(9, 'História, não-ficção');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `idlivro` int(11) NOT NULL DEFAULT 0,
  `titulo` varchar(90) NOT NULL,
  `autoria` varchar(150) NOT NULL,
  `resumo` longtext NOT NULL,
  `context_hist` varchar(45) DEFAULT NULL,
  `personagens` varchar(45) DEFAULT NULL,
  `genero` int(11) NOT NULL,
  `editora` int(11) NOT NULL,
  `lanc` int(11) NOT NULL,
  `edicao` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`idlivro`, `titulo`, `autoria`, `resumo`, `context_hist`, `personagens`, `genero`, `editora`, `lanc`, `edicao`) VALUES
(1, 'A terra dos mil povos: história indígena do Brasil contada por um índio', 'Kaká Werá Jecupé', 'Terra dos Mil Povos é uma obra de Kaká Werá Jecupé que aborda as histórias, mitos e sabedorias dos povos indígenas do Brasil. O livro serve como uma ponte entre a tradição oral indígena e a literatura escrita, trazendo à luz as narrativas ricas e profundas desses povos originários. Jecupé aborda que os Tupi, Guarani, Tupinambá, Tapuias, Xavante, Kamayurá entre outros, foram os habitantes originários, e desses surgiram outros. Prossegue levantando o questionamento com o termo apropriado para designar cada grupo, se são raças, tribos, nações ou clãs, mas independente do termo, estes povos são provenientes de ‘uma árvore comum’ como os Tupy, Jê, Karib e Aruak. Também é explicado que a cultura desses povos é alicerçada na memória, nas práticas ritualísticas e nas suas filosofias de vida, que remetem às suas respectivas origens, e são carregados de valores, ensinamentos, fundamentais para a compreensão do surgimento de cada etnia.', 'Sobre o autor: Kaká Werá Jecupé é um escritor', NULL, 9, 23, 1998, '2024'),
(2, 'Água Funda', 'Ruth Guimarães', 'É um romance narrado por um narrador onisciente. A história se passa na Fazenda Olhos D’Água, no sul de Minas Gerais, entre o fim do período escravocrata e as primeiras décadas do século XX. A autora faz uma reconstituição etnográfica da linguagem caipira, que conheceu pessoalmente em sua infância passada no Vale do Paraíba e sul de Minas. A autora construiu uma prosa ágil e fluida, cheia de ditos populares e acontecimentos marcados por superstições, casamentos bons e ruins, pela vida na cidade pequena e pela desgraça. Entre Sinhá Carolina, dona da Fazenda Nossa Senhora dos Olhos D’Água, e o casal Joca e Curiango, trabalhadores locais, num arco temporal que vai da época da escravidão até os anos 1930, o elo está na loucura que os acomete.', 'Sobre a obra: Um ano antes do lançamento da o', 'Mãe de Ouro – protagonista; Joca.Curiango; In', 1, 22, 1947, '2024'),
(3, 'Um útero é do tamanho de um punho', 'Angélica Freitas', 'O segundo livro de poemas de Angélica Freitas, Um útero é do tamanho de um punho, lançado em 2012, tem um humor inteligente, uma visão sobre sexualidade e o feminino numa perspectiva bem esperta e leve, indo além de convenções poéticas viciadas, uma poesia renovada, contemporânea com propriedade, com estilos misturados. Uma comunicação direta que descreve e também coloca uma realidade dinâmica da própria vida em evidência. Ler Angélica é estar num mundo real de uma experiência viva, não se trata somente de uma invenção poética, aqui a gente lê o mundo real. Na escrita poética de Angélica, observa-se a ausência completa de pontuação e de letras maiúsculas, criando uma língua do \'i\', ditados, cantigas populares e invenção de onomatopeias. Ela coloca o leitmotiv do útero, e neste centro envolve toda a poesia de seu livro, no questionamento da submissão feminina em relação ao útero, em seu sentido simbólico, a significação que este órgão, esta imagem, este signo, tem em seu poder sobre o feminino. As sete seções do livro giram neste tema de uma violência normalizada sobre o feminino, esta violência naturalizada sobre a mulher. São elas: ‘Uma mulher limpa’, ‘Mulher de’, ‘A mulher é uma construção’, ‘Um útero é do tamanho de um punho’, ‘3 poemas com auxílio do Google’, ‘Argentina’ e ‘O livro rosa do coração dos trouxas’.', 'Lançado em 2012, o livro se tornou um clássic', NULL, 5, 10, 2012, '2024'),
(4, 'Cem anos de solidão', 'Gabriel García Márquez', 'Considerado um dos melhores livros de literatura latina já escritos, sua história passa-se numa aldeia fictícia e remota na América Latina chamada Macondo. Esta pequena povoação foi fundada pela família Buendía–Iguarána. A primeira geração desta família peculiar é formada por José Arcadio Buendía e Úrsula Iguarán. Este casal teve três filhos: José Arcadio, que era um rapaz forte, viril e trabalhador; Aureliano, que contrasta interiormente com o irmão mais velho no sentido em que era filosófico, calmo e terrivelmente introvertido; e por fim, Amaranta, a típica dona de casa de uma família de classe média do século XIX. A estes, juntar-se-á Rebeca, que foi enviada da antiga aldeia de José Arcadio e Úrsula, sem pai nem mãe.A história desenrola-se à volta desta geração e dos seus filhos, netos, bisnetos e trinetos, com a particularidade de que todas as gerações foram acompanhadas por Úrsula (que viveu entre 115 e 122 anos). Esta centenária personagem dará conta que as características físicas e psicológicas dos seus herdeiros estão associadas a um nome: todos os José Arcadio são impulsivos, extrovertidos e trabalhadores, enquanto que os Aurelianos são pacatos, estudiosos e muito fechados no seu próprio mundo interior. Os Aurelianos terão ao longo do livro a missão de desvendar os misteriosos pergaminhos de Melquíades, o Cigano, que foi amigo de José Arcadio Buendía. Estes pergaminhos têm encerrada em si a história dramática da família e apenas serão decifradas quando o último da estirpe estiver às portas da morte.', 'Essa obra tem a peculiaridade de ser umas das', 'José Arcádio Buendía: Patriarca da família Bu', 1, 5, 1982, '2024'),
(5, 'Manuelzão e Miguilim (Campo Geral e Uma estória de amor)', 'Guimarães Rosa', 'Manuelzão e Miguilim, de Guimarães Rosa, é um volume composto por duas novelas: ‘Campo Geral’ e ‘Uma Estória de Amor’.’Campo Geral’ é o relato lírico da infância do menino Miguilim, narrado em terceira pessoa, sob a perspectiva de Miguilim, menino inteligente e sensível que mora com a família na mata do Mutum (MG). A narrativa é organizada segundo a vivência e as experiências desse jovenzinho que está constantemente observando as pessoas e as coisas situadas em seu universo sertanejo. O menino experimenta diversas situações típicas da infância, os medos, as brincadeiras. No entanto, uma experiência específica será decisiva para o seu amadurecimento: a morte do irmão mais novo, Dito. Pouco tempo depois desse trágico acontecimento, Miguilim é levado para trabalhar com o pai e a relação entre os dois se torna cada vez pior. Após algum tempo, o menino adoece e chega mesmo a acreditar que vai morrer. Entretanto, uma tragédia com outro familiar acaba interrompendo o destaque que essas reflexões ganham na história. Bernardo, pai de Miguilim, mata um vaqueiro e em seguida se suicida. Com isso, o tio Terez se casa com a mãe do menino. Nesse momento surge um novo personagem, o médico. Com o restabelecimento de Miguilim, este homem desempenha um papel fundamental em sua formação, pois descobre sua miopia e lhe fornece seus primeiros óculos. A novela tem fim quando, acompanhado do doutor Lourenço, Miguilim deixa a casa em que viveu toda a vida e vai estudar na cidade. Uma Estória de Amor é uma narrativa sobre os preparativos e a festa organizada por Manuelzão para a inauguração da capela para Nossa Senhora do Perpétuo Socorro, construída em homenagem à sua mãe. A festa acaba envolvendo mais pessoas que o previsto, deixando Manuelzão preocupado. O organizador convida também um padre e a família de seu filho, Adelço, para a festa.Apesar de não ter boa relação com o filho, Manuelzão tem grande admiração por Leonísia, esposa de Adelço. A beleza da mulher chega a provocar desejos inadequados no sogro, que vive um conflito interior. Enquanto se desdobram os preparativos para a festa, o protagonista relembra antigas histórias, e por fim, quando chega o padre, a comemoração tem de fato início. No segundo dia de festa é celebrada a missa, que é seguida por mais danças e cantigas. Contadora de histórias, Joana Xaviel também ganha destaque no evento, narrando casos que entretêm a todos.  Ao fim da narrativa, Manuelzão se sente mais jovem do que realmente é, a festa ajuda a recuperar algo de sua mocidade.', 'Sobre o autor: Guimarães Rosa é um dos princi', 'Campo geral: - Miguilim: Menino de oito anos,', 1, 1, 1964, '2013'),
(6, 'O Pagador de Promessas', 'Dias Gomes', 'O Pagador de Promessas é uma peça de teatro do dramaturgo brasileiro Dias Gomes, encenada pela primeira vez em São Paulo pelo TBC no ano de 1960. A peça inspirou um filme homônimo, de 1962, que venceu o prêmio Palma de Ouro no Festival de Cannes. Zé do Burro, um homem muito simples, vivia na companhia da sua mulher Rosa e de seu burro por quem tinha muito apego. Certa vez o animal fora ferido na cabeça por um galho de árvore e Zé, ao ver a situação do animal, faz uma promessa à Santa Barbara, dividiria suas terras entre os necessitados e carregaria uma cruz tão pesada como a de Jesus até à igreja da Santa. Como em sua cidade não havia a tal igreja, fez a promessa em um terreiro de candomblé, onde a santa é conhecida pelo nome de Iansã. Saiu da Bahia, junto com a esposa, e caminham sete léguas até que chegaram à igreja de Santa Bárbara em Salvador. Mantendo-se firme na ideia de que a promessa só seria cumprida se ele deixasse a cruz na frente do altar, alojaram-se na escadaria da igreja, enquanto a cidade ainda dormia. Enquanto isso chega à praça o cafetão Bonitão que se aproveita e seduz Rosa, levando-a a passar a noite com ele em um hotel. Com o passar das horas, a agitação na rua começa e a igreja é aberta. Zé, dirigindo-se ao padre, explicou sua promessa. O padre ouvindo citações do candomblé se recusa a permitir a entrada de Zé na igreja. Ele, frente a isso e muito responsável em relação à promessa, afirma que só sairia dali quando a cumprisse. Uma multidão se aproxima e o homem torna-se assunto na cidade, sendo alvo de um repórter sensacionalista, que distorce os fatos e o retrata como um messias que apoia a reforma agrária. Chega ao local o delegado com alguns policiais, querendo levar Zé do burro preso, mas ele se declarando inocente e sem nada a temer afirmou que dali só sairia morto. Logo uma confusão acontece e um tiro fere Zé mortalmente. A multidão se dispersa, o padre se sentindo culpado libera as portas da igreja, algumas pessoas que estavam na praça pegam o corpo dele, colocam-no sobre a cruz e o levam para dentro.', 'Livro ganhador de sete importantes prêmios de', 'Zé do Burro, Rosa, Padre Olavo, Bonitão, Dedé', 2, 2, 1997, '2013'),
(7, 'Feliz Ano Velho', 'Marcelo Rubens Paiva', 'Feliz ano velho é o primeiro livro de Marcelo Rubens Paiva, sendo uma autobiografia escrita aos 26 anos, logo após o seu penúltimo tratamento. Diferentemente de algumas pessoas que sofrem algo e se fecham, resumindo-se a isso; Marcelo sente que é preciso lutar. Enredo inicial: Marcelo era um jovem de 20 anos que vivia numa república com seus amigos, estudava engenharia na Unicamp e tinha uma vida de farras, com muitas mulheres. Ele também amava música, tinha uma banda, junto com o seu amigo Cassy, e já participara de concursos, a música fazia parte dele. Sua família era de boa condição e a única memória triste que sempre o acompanhava era a de seu pai, desaparecido em meio a ditadura militar no Brasil. Certo dia a polícia bateu em casa, levou a mãe, o pai, a irmã mais velha e após os questionamentos; apenas o pai não retornou. No dia 14 de dezembro, poucos dias antes do Natal de 1979, Marcelo Paiva estava bêbado no meio de um festejo com os amigos e, numa brincadeira, disse que iria buscar o tesouro no fundo do lago. Pulou em um “salto do Tio Patinhas”, sem saber que era raso. Seus amigos viram que ele não submergiu rapidamente e que deveria ter sofrido um acidente. Tiraram-no do lago, o colocaram de pé e depois o levaram deitado para um hospital. Não se sabe se o fato de logo ter ficado de pé havia agravado a situação, fato é que ele havia fraturado a quinta vértebra cervical e comprimido a medula. Assim, estava tetraplégico, perdera os movimentos abaixo do pescoço. Desenvolvimento: No hospital, recebia a visita de vários amigos. Havia Nana, com quem já tinha tido uma história, e era uma amiga que morava na mesma república que ele. Agora, no hospital, não o abandonara, dormia lá e lhe dava o jantar. Também recebia visitas de Marina, uma garota da faculdade que ele tirou a virgindade, e tantas outras assim. Marcelo estava acostumado a viver intensamente sua vida sexual, porém no estado em que estava e com o agravante da sonda no pênis, não sentia tanta necessidade. O que lhe restava era imaginar, principalmente quando via as enfermeiras. Também havia Veroca, que ia pra lá e ficava lendo um livro para ele. Depois, arrumaram um óculos que o permitia ler deitado e também ver televisão, sozinho. Ainda tinha a mãe, que levava a Folha de São Paulo e danones como forma de carinho. Já no apartamento, as refeições melhoraram e ele tinha até sobremesa. Deixou a sopinha e as comidas pastosas e passou a comer arroz. Diante do esforço e da vontade de Marcelo, o médico fez planos para o avanço da cura. Neste ponto, Marcelo já mexia os braços, mas a sensibilidade dos mamilos para abaixo ainda não tinha voltado. A fisioterapia se intensificava, arrumaram um colete, meteram Marcelo dentro, erguiam a cama cada vez mais e assim ele ia progredindo. Desfecho: Quando estava apto, foi para cadeira de rodas e voltou a morar na casa da mãe. Ainda assim, os amigos continuavam as visitas e dormiam lá. Com o tempo ele passou a comer sozinho, escrever sozinho e também andar só na cadeira de rodas. Podia descer para piscina, tomar sol, foi ao cinema e até ia a festas. Foi para um local próprio, já recuperado mas com as sequelas, onde encarava sua nova realidade. Ele adorou o lugar, pois havia pessoas com os mesmos problemas e que poderiam ajudá-lo a responder suas perguntas. Em uma das festas que foi, encontrou com Bianca, irmã de um amigo. Os dois começaram a namorar e dormiam juntos. Já se completava um ano do acidente. Ele se lembrava dos momentos ruins, de como se sentia injustiçado, como queria voltar no tempo minutos antes do salto, de como se sentiu amargurado no ano novo…, Mas agora entrava numa nova fase, se trataria, teria respostas, iria curtir Bianca e aproveitaria ao máximo o que ainda podia fazer até que a cura chegasse. Assim, a linguagem do texto expressa a irreverência e a determinação, além da compreensão de que “o futuro é uma quantidade infinita de incertezas”. A narrativa em primeira pessoa é bastante clara e direta, coloquial, permitindo ao leitor um rápido envolvimento com a trama. A história não se detém apenas ao aspecto do acidente ocorrido com o personagem, mas também, aborda todas as lembranças e reflexões que são levantadas por ele.', 'Feliz ano velho é um romance brasileiro de au', 'Marcelo Rubens Paiva, narrador-personagem do ', 3, 3, 1982, '2013'),
(8, 'O Filho Eterno', 'Cristóvão Tezza', 'O Filho Eterno é um livro de Cristóvão Tezza conta a história de um pai e seu filho com síndrome de Down, seus aprendizados e dificuldades. O momento em que os médicos revelam a condição do filho aos pais, os torturantes exercícios de estimulação a que o menino Down é submetido, o conflito do pai com a diretora de escola que não quer mais acolher a criança ‘especial’ – todas essas cenas são narradas com um desencanto duro. A obra se afigura como uma brilhante reflexão sobre a necessidade e a importância da ação do tempo para operar o ciclo do amadurecimento. Este ciclo se justifica porque plasma duas variáveis significativas de um problema que a crítica literária tem, ao longo de sua história, tratado de forma dicotômica: o narrador e o autor, o sujeito real e o personagem, o escritor e o protagonista, ou ainda, quaisquer outros aportes demonstrativos que se queira dar para separar o homem que escreve da ficção que ele escreve. Assim, o romance abre caminhos inovadores para que se discuta a tão famigerada relação entre vida e obra, autobiografia e ficcionalidade, como se a ficção pudesse, de per se abdicar da história ou como se a realidade não pudesse adentrar os labirintos da subjetividade vital por considerá-la, aprioristicamente, o reino positivista da neutralidade. Dividido em vinte e cinco capítulos, não numerados, o romance é introduzido por duas epígrafes significativas: a primeira, de Thomas Bernhard, apresenta o conflito entre o desejo pela descrição fiel da verdade e o resultado dessa descrição; a segunda, de S. Kierkegaard, aponta a reflexão especular entre pai e filho, tema de que se ocupa o livro em suas duzentas e vinte e duas páginas: as vicissitudes, o calvário e as amarras de um jovem escritor ao receber a notícia de que seu primeiro filho era portador da Síndrome de Down e a peregrinação vital em torno desse fato até sua liberta aceitação. Antes mesmo de iniciar a leitura, somos informados de que o romance tem como ponto de partida as memórias do escritor Cristovão Tezza, e, ele mesmo, na epígrafe, deixa claro que memórias são essas. Uma história baseada em fatos reais que não tem pretensão de ser a verdade. É a história do relacionamento de pai e filho – e, pela orelha do livro, somos informados de que se trata de um relacionamento com ‘dificuldades, inúmeras, e as saborosas pequenas vitórias’. Além disso, trata-se de um ‘livro corajoso’ – o escritor é considerado corajoso ao relatar parte de sua vida, ao expor sua família e sua intimidade. Não encontramos o lugar-comum, o apelo ao sentimento de pena e empatia, e, isso é uma das qualidades de uma história que prende o leitor por não fornecer respostas e soluções óbvias, pelo contrário, a surpresa é uma constante durante a leitura. Percorre-se a trajetória do personagem pai e, dentro de sua história, acompanha-se a trajetória do personagem filho, Felipe. O treinamento neurológico nos primeiros anos de vida do filho é contrastado com o ‘treinamento’ do pai em relação às tentativas de publicar seus livros e as recusas das editoras. Há no romance de Tezza a preocupação em não deixar o leitor ‘morrer de repente’, ou não abandonar o texto. A narrativa de O filho eterno inicia sob o signo da construção, melhor dizendo, de duas construções: do pai-narrador-escritor e do filho-personagem-narrado. Há uma partogênese significativa envolvendo o nascimento e criação do filho e deslocando-se para o nascimento do escritor e o ato da escritura. As marcas vitais conjugam-se nas palavras do próprio autor: \'romance brutalmente autobiográfico\'. A despeito das dificuldades romanescas atribuídas ao gênero autobiográfico, o livro furta-se ao mero assédio confessionalista porque o autor – experiente e exigente quanto às técnicas literárias – soube optar pela utilização de um ponto de vista revelador. Narrando em 3ª pessoa, ao invés da 1ª pessoa do singular, Tezza – com esse hábil expediente de foco narrativo – forjou uma nova indumentária para o romance autobiográfico e, muito embora os poros da vida refluam do corpo do texto, a essência do mesmo – sua alma – ainda continua sendo a ficção. O enredo gira em torno de duas personagens principais: pai e filho.', 'Em um livro corajoso e emocionante, Cristovão', 'O Pai é personagem introvertido, ansioso, que', 3, 5, 2007, '2013'),
(9, 'O Guardador de Rebanhos', 'Alberto Caeiro (heterônimo de Fernando Pessoa)', 'O Guardador de Rebanhos é um conjunto de poemas escritos pelo heterónimo Alberto Caeiro de Fernando Pessoa. Os poemas foram escritos em 1914 e Fernando Pessoa atribuiu sua génesis a uma única noite de insónia de Caeiro. Os poemas de Alberto Caeiro compõem-se de três partes: O Guardador de Rebanhos, O Pastor Amoroso e Poemas Inconjuntos. O Guardador de Rebanhos nos transmite ou propõe uma forte cosmovisão ao querer reintroduzir aparentemente um mundo pagão no século vinte de um ocidente cristianizado, mas também é certo que não possui uma ordem ou hierarquia de valores como é apanágio do poema épico. Pelo contrário, a sua forma modular permite que o poema se alongue com repetições de motivos que passam de texto para texto não resolvidos ou por resolver, numa recombinação sucessiva onde emerge uma insuspeita temporalidade. O surgimento de O Guardador de Rebanhos se dá como que num transe, afirma o próprio Fernando Pessoa, em uma famosa carta endereçada a Casais Monteiro: ‘acerquei-me de uma cômoda alta, e, tomando um papel, comecei a escrever, de pé, como escrevo sempre que posso. E escrevei trinta e tantos poemas a fio, numa espécie de êxtase cuja natureza não conseguirei definir. (...) E o que se seguiu foi o aparecimento de alguém em mim, a quem dei desde logo o nome de Alberto Caeiro. Desculpe-me o absurdo da frase: aparecera em mim o meu mestre’. Os temas fundamentais de O Guardador de Rebanhos transitam, principalmente, em torno da natureza, representação da única realidade aceitável com a qual ele mantém uma relação baseada na sensação pura, naquilo que seus sentidos percebem. Sua compreensão de mundo nega os mistérios do mundo, pois seriam impossíveis de serem objetivamente captados.', 'Sobre o autor: O poeta português Fernando Pes', NULL, 5, 6, 1925, '2013, 2014, 2015'),
(10, 'Memórias de um Sargento de Milícias', 'Manuel Antônio de Almeida', 'Memórias de um Sargento de Milícias é um romance de Manuel Antônio de Almeida. Foi publicado originalmente em folhetins no Correio Mercantil, entre 1852 e 1853, escrito no período do romantismo, retrata a vida do Rio de Janeiro no início do século XIX e desenvolve pela primeira vez na literatura nacional a figura do malandro. O romance gira em torno da vida de Leonardo, um menino travesso e malandro que entre tantas ações se torna um sargento: O Sargento de Milícias. A história tem como espaço a cidade do Rio de Janeiro. Ainda pequeno, ele foi entregue aos cuidados dos padrinhos, um barbeiro e uma parteira. Isso porque seus pais, Leonardo-Pataca e Maria da Hortaliça, brigaram. Sua mãe foge para Portugal e seu pai, o abandona. O barbeiro almejava uma boa formação para o menino, portanto, empenhou-se em dar uma educação religiosa para que ele se tornasse padre. Entretanto, Leonardo era muito travesso e mal sabia ler e escrever, resultado de sua saída da escola. Mais adiante, o menino se apaixona por Luizinha, porém, o envolvimento deles nesse momento dura pouco. A família de Luizinha era muito abastada. José Manuel, um amigo da família, resolve pedir a mãe dela em casamento com o intuito de ficar com os bens e a fortuna. Leonardo, sabendo de sua intenção, resolve desabafar com seus padrinhos que logo falam com Dona Maria, avó de Luizinha. Esse fato, fez com que José Manuel fosse expulso da casa e ainda, proibido de casar com Luizinha. O padrinho de Leonardo fica doente e logo depois vem a falecer. Com isso, ele recebe uma herança. Interessado na herança recebida pelo filho, Leonardo-Pataca entra em cena e o convida para viver com ele. Nesse momento, Pataca já está casado com a filha da parteira, Chiquinha, e com ela tem uma filha. Leonardo tem várias discussões com seu pai e sua madrasta, o que resulta em sua expulsão da casa. Nesse tempo, ele se envolve com uma mulata chamada Vidinha e se apaixona por ela. Passa a viver com os jovens da Rua Vala. Cada vez mais envolvido com Vidinha, dois primos dela que lutam pelo seu amor, começam a ficar com ciúmes de Leonardo. Com isso, eles dizem ao Major Vidigal que Leonardo está vivendo clandestinamente na residência dos jovens. Isso resulta na prisão dele pelo major Vidigal. Além disso, ele se recusa a alistar-se no exército, sendo preso novamente. Sua madrinha vai até a prisão e pede para o major liberar Leonardo. Por fim, o major lhe oferece o cargo de Sargento de Milícias. Com a morte do marido de Luizinha que só lhe maltratava, Leonardo casa-se com ela.', 'A história passa-se no período em que D. João', 'Leonardo: protagonista que garante unidade à ', 4, 7, 1853, '2013'),
(11, 'A Educação pela Pedra', 'João Cabral de Melo Neto', ' A Educação pela pedra significa um importante momento na trajetória inventiva de João Cabral de Melo Neto. Pode-se dizer que essa obra representa o efeito de um trabalho progressivo que teve o seu início em 1942, com a publicação de Pedra do Sono, e que continuou passando por estágios de tensão interna, verdadeiros pontos nevrálgicos para a escala da sua invenção. A coletânea reúne 48 poemas marcados pelo didatismo do poema “A Educação pela Pedra”, seu núcleo temático. A obra é dividida em 4 partes: a, A, b e B. Nas partes minúsculas os poemas são curtos e nas partes maiúsculas os poemas são longos. Com apuro e beleza, precisão e um trabalho incansável na estruturação dos versos e na escolha das palavras, João Cabral de Melo Neto atinge sua maturidade criadora em A educação pela pedra, que se consagra como obra decisiva na trajetória do poeta pernambucano.', 'Sobre o autor: João Cabral de Melo Neto figur', NULL, 5, 9, 1966, '2013'),
(12, 'História do Cerco de Lisboa', 'José Saramago', 'História do Cerco de Lisboa é um romance histórico de José Saramago publicado em 1989 que funde duas histórias. O personagem Raimundo Benvindo Silva é um humilde revisor de textos que, ao revisar um livro sobre a história do cerco de Lisboa, acaba cometendo propositalmente um erro. Após uma noite conturbada, Raimundo fica inquieto e acrescenta a palavra “não” a uma frase e, desta forma, altera o fato histórico que revela o apoio dos cruzados aos portugueses – fator decisivo para garantir o cerco e a consequente queda de Lisboa. Raimundo envia o texto à editora para poder ser impresso. Quando o erro é descoberto, a editora resolve o problema acrescentando uma errata. Como Raimundo era um revisor experiente, a editora não o demite, mas contrata uma senhora para supervisionar seu trabalho, Maria Sara. Ela tenta entender a causa daquele erro, percebe que Raimundo não irá admitir a alteração e acaba o incentivando a reescrever aquele episódio da história de Portugal. Raimundo se anima e resolve reescrever o episódio da tomada de Lisboa sem a participação dos cruzados. Enquanto reescreve a história, acaba também iniciando um relacionamento amoroso com Maria Sara. O herói da história que Raimundo escreve é um soldado chamado Mogueime, ele se destaca nas lutas, é humano, valente e bondoso. Ao final, ele passa a assumir a condição de narrador da história. Mogueime apaixona-se por Ouroana, mas fica com dúvidas se esta aceitará o seu amor, por ele ser um simples soldado. A história que Raimundo conta se assemelha à história dele com Maria Sara. Raimundo consegue terminar de escrever sua narrativa e fica junto de Maria Sara.', 'Sobre o autor: José Saramago foi um escritor ', '- Raimundo Benvindo Silva: é um solteirão, ho', 8, 10, 1989, '2013'),
(13, 'O Centauro no Jardim', 'Moacyr Scliar', 'No interior do Rio Grande do Sul, na pacata família Tratskovsky, nasce um centauro: um ser metade homem, metade cavalo. Seu nome é Guedali, quarto filho de um casal de imigrantes judeus russos. A partir desse evento fantástico, Moacyr Scliar constrói um romance que se situa entre a fábula e o realismo, evidenciando a dualidade da vida em sociedade, em que é preciso harmonizar individualismo e coletividade. A figura do centauro também ilustra a divisão étnica e religiosa dos judeus, um povo perseguido por sua singularidade. Guedali cresce solitário, excluído da sociedade, e o isolamento o leva a cultivar o hábito da leitura. Inteligente e culto, é ele quem conduz a narrativa, feita a partir do dia de seu 38° aniversário, comemorado entre amigos num restaurante de São Paulo. O centauro rememora sua vida desde o nascimento em Quatro Irmãos, passando pela juventude em Porto Alegre, onde se casa com Tita - também centaura -, até chegar ao Marrocos, onde o casal vai tentar uma cirurgia que os transforme em pessoas normais. Depois de inúmeros percalços, Guedali acaba voltando para São Paulo e o desenlace desconcertante de suas lembranças completa com profundidade essa narrativa provocadora. Ademais, o drama vivido pelo protagonista, nada mais é que o drama vivido por todo ser humano: a busca do ser humano por sua essência, por sua verdadeira faceta.', 'Sobre o autor: Moacyr Jayme Scliar nasceu em ', NULL, 1, 9, 1980, '2013'),
(14, 'Terras do Sem-Fim', 'Jorge Leal Amado de Faria', 'Terras do sem-fim descreve o período de formação da zona cacaueira, com a sede pelo ouro do cacau, a luta pela posse da terra, o estabelecimento das plantações e a construção das pequenas cidades nos arredores de Ilhéus, no sul da Bahia, no começo do século XX. A história tem início com um navio que se aproxima de Ilhéus, trazendo a bordo pessoas ambiciosas e obcecadas com a promessa de enriquecimento fácil na região, até então improdutiva. Os passageiros da embarcação em breve desbravariam a mata a ferro, fogo e sangue para cultivar o cacau. Sequeiro Grande, um trecho da mata ainda intacto, passa a ser o alvo da cobiça dos coronéis, que lutam entre si com todas as armas de que dispõem para conquistá-lo. Advogados eram muito bem-vindos à região. Os coronéis os contratavam para que redigissem um documento falso (“caxixe”) que atestava a posse de determinado pedaço de terra até então pertencente a algum pequeno lavrador. Quando impunha alguma resistência à expulsão, o camponês em geral era perseguido e morto por jagunços tocaiados nas estradas solitárias. Amado denuncia claramente aqui o patriarcalismo, o clientelismo e a violência do sertão, baseado na lei do mais forte e na demonstração do poder, evidenciando com isso, sem tom panfletário, a injustiça social e a exploração do trabalhador, vítima da ambição dos coronéis sertanejos.', 'Sobre o autor: “Terras do Sem Fim” é o primei', 'João Magalhães, Donana, Virgílio, Margot, Cor', 4, 24, 1943, '2014'),
(15, 'A Noite das Mulheres Cantoras', 'Lídia Jorge', 'Quanto valem os nossos objetivos? Qual o limite do valor, que nos dispomos pagar, para os concretizarmos? Para Gisela Batista o fim justificava quaisquer meios e a pujança da sua convicção enleou, irremediavelmente, quatro companheiras num sonho comum: alcançar a fama com um conjunto de mulheres cantoras. Nani e Maria Luísa Alcides, Madalena Micaia e Solange de Matos subjugaram-se às vontades da obstinada mulher. Importava que as Após Calipso gravassem um vinil, invadindo a banda sonora da vida das pessoas com as suas canções. Toadas que deveriam tornar-se êxitos inolvidáveis, destinadas a marcarem décadas. É Solange, num monólogo, quem nos dá conta do sucedido, no final dos anos 80 do século vinte.', 'A história se passa no fim do século XX.', 'Solange de Matos e João de Lucena.', 1, 13, 2011, '2014'),
(16, 'Dançar tango em Porto Alegre', 'Sergio Faraco', 'Nesta premiada coletânea de contos, o leitor encontrará condensado o universo ficcional de Sergio Faraco – um dos maiores contistas brasileiros. Contos do livro: Dois guaxos; Travessia; Noite de matar um homem; Guapear com frangos; O vôo da garça-pequena; Sesmarias do urutau mugidor; A língua do cão chinês; Idolatria; Outro brinde para Alice; Guerras Greco-Pérsicas; Majestic Hotel; Não chore, papai; Café Paris; A dama do bar Nevada; Um aceno na garoa; No tempo do trio Los Panchos; Conto do inverno; Dançar tango em Porto Alegre.', 'O autor nasceu em Alegrete, no Rio Grande do ', NULL, 1, 14, 2000, '2014'),
(17, 'O amor de Pedro por João', 'Tabajara Ruas', 'O livro O Amor de Pedro por João mostra o outro lado da militância política: a solidão, tão contundente quanto a ponta dos fuzis; a esperança, única arma capaz de resistir à poderosa máquina repressora; e o carinho, unguento para as feridas da luta. Como tantos brasileiros, os protagonistas de O Amor de Pedro por João procuram abrigo, inicialmente, no Chile socialista de Allende. Afugentados pela revolução de Pinochet, são obrigados a partir para um novo exílio na Europa. Não há, no romance, dimensões heroicas — no meio dos conflitos, os personagens, apesar da truculência da perseguição, encontram tempo para venturas e desventuras românticas. Dramas e fugas para o exílio, para a insanidade ou para a morte dividem espaços com momentos de esperança, risos e solidariedade. O Amor de Pedro por João é o segundo romance de Tabajara Ruas.', ' Escrito em Copenhague, durante o exílio impo', NULL, 4, 5, 1982, '2014'),
(18, 'O Cortiço', 'Aluísio Azevedo', 'O Cortiço é um romance naturalista do brasileiro Aluísio Azevedo publicado em 1890 que denuncia a exploração e as péssimas condições de vida dos moradores das estalagens ou dos cortiços cariocas do final do século XIX e posto a denunciar o capitalismo selvagem. Composta de 23 capítulos, O Cortiço apresenta um narrador onisciente (aquele que sabe de todo a história), sendo narrado em terceira pessoa. O tempo da narrativa é linear (começo, meio e fim), seguindo o tempo cronológico dos acontecimentos. Páginas: 354 (1a edição).', 'O romance O cortiço tem como pano de fundo o ', 'João Romão: português dono do cortiço, da ven', 4, 8, 1890, '2014'),
(19, 'Dom Casmurro', 'Machado de Assis', 'Dom Casmurro é um romance escrito por Machado de Assis, publicado em 1899 pela Livraria Garnier. Dom Casmurro, de Machado de Assis, teve sua primeira edição lançada em 1900. O livro pode ser compreendido como a autopsicanálise de Bento Santiago, que viveu uma história de amor com final trágico. Emotivamente, encontra-se mutilado, pois acredita ter sido traído pela esposa, Capitu, e pelo melhor amigo, Escobar.', 'O contexto histórico aparece de forma clara n', 'Bento Santiago, Escobar e Capitu, que represe', 4, 8, 1899, '2014');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `albuns`
--
ALTER TABLE `albuns`
  ADD PRIMARY KEY (`idalbum`),
  ADD KEY `ideditora_idx` (`editora`),
  ADD KEY `idgenero_idx` (`genero`);

--
-- Índices de tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`ideditora`);

--
-- Índices de tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idgenero`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`idlivro`),
  ADD KEY `genero` (`genero`),
  ADD KEY `editora` (`editora`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `albuns`
--
ALTER TABLE `albuns`
  ADD CONSTRAINT `ideditora` FOREIGN KEY (`editora`) REFERENCES `editora` (`ideditora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idgenero` FOREIGN KEY (`genero`) REFERENCES `genero` (`idgenero`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `editora` FOREIGN KEY (`editora`) REFERENCES `editora` (`ideditora`),
  ADD CONSTRAINT `genero` FOREIGN KEY (`genero`) REFERENCES `genero` (`idgenero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
