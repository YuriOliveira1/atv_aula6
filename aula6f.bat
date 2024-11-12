@echo off                     :: Desativa a exibição dos comandos no terminal para deixar a saída mais limpa.
cls                           :: Limpa a tela do terminal.
:menu                         :: Define um rótulo (label) chamado "menu" para permitir o retorno a essa seção do código.
cls                           :: Limpa a tela do terminal novamente.
color 2                       :: Define a cor do texto no terminal para verde (código 2).

echo ================================       :: Exibe uma linha separadora para organização.
echo       Programando como um raiz!!!      :: Exibe o título do programa.
echo ================================       :: Exibe outra linha separadora.

echo *1 - Mostre os arquivos que estão na pasta*    :: Exibe a opção 1 para listar os arquivos na pasta atual.
echo *2 - Mostre as informações do sistema onde estou*  :: Exibe a opção 2 para mostrar informações do sistema.
echo *3 - Sair*                                     :: Exibe a opção 3 para sair do programa.
echo ================================               :: Exibe uma linha separadora para organizar visualmente as opções.

set /p opcao=Escolha uma opcao:   :: Solicita que o usuário escolha uma opção e armazena o valor na variável "opcao".
echo ------------------------------  :: Exibe uma linha para separar a escolha das opções de ação.

if %opcao% equ 1 goto opcao1     :: Se o valor de "opcao" for 1, direciona o fluxo do programa para o rótulo "opcao1".
if %opcao% equ 2 goto opcao2     :: Se o valor de "opcao" for 2, direciona o fluxo do programa para o rótulo "opcao2".
if %opcao% equ 3 goto opcao3     :: Se o valor de "opcao" for 3, direciona o fluxo do programa para o rótulo "opcao3".
if %opcao% geq 4 goto opcao4     :: Se o valor de "opcao" for 4 ou maior, direciona o fluxo para o rótulo "opcao4" (opção inválida).

:opcao1                          :: Define o rótulo "opcao1", que executa a ação para a opção 1.
cls                              :: Limpa a tela.
dir                              :: Exibe a lista de arquivos e diretórios na pasta atual.
echo --------                     :: Exibe uma linha separadora.
echo "arquivos lidos"            :: Exibe a mensagem "arquivos lidos".
echo --------                     :: Exibe outra linha separadora.
pause                            :: Pausa a execução para que o usuário veja a saída, aguardando uma tecla.
goto menu                        :: Retorna ao menu principal.

:opcao2                          :: Define o rótulo "opcao2", que executa a ação para a opção 2.
cls                              :: Limpa a tela.
dir                              :: Exibe a lista de arquivos e diretórios na pasta atual como representação de "informações do sistema".
echo --------                     :: Exibe uma linha separadora.
echo "este é o sistema"          :: Exibe a mensagem "este é o sistema".
echo --------                     :: Exibe outra linha separadora.
pause                            :: Pausa a execução para que o usuário veja a saída, aguardando uma tecla.
goto menu                        :: Retorna ao menu principal.

:opcao3                          :: Define o rótulo "opcao3", que executa a ação para a opção 3.
cls                              :: Limpa a tela.
exit                             :: Encerra o programa.

:opcao4                          :: Define o rótulo "opcao4", usado para tratar opções inválidas.
cls                              :: Limpa a tela.
echo "Opção Inválida"            :: Exibe uma mensagem de erro informando que a opção é inválida.
pause                            :: Pausa a execução para que o usuário veja a mensagem de erro, aguardando uma tecla.
goto menu                        :: Retorna ao menu principal.
