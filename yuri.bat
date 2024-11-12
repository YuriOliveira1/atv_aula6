@echo off
cls
:menu
cls
echo ================================
echo          Menu de Opções
echo ================================
echo 0 - Sair
echo 1 - Abrir Google Chrome no site https://www.uol.com.br
echo 2 - Abrir Bloco de Notas do Windows
echo 3 - Trocar a cor do prompt para amarelo
echo 4 - Listar todas as tarefas em execução
echo ================================
set /p opcao=Escolha uma opcao: 

if %opcao% equ 0 goto sair
if %opcao% equ 1 goto abrir_chrome
if %opcao% equ 2 goto abrir_notepad
if %opcao% equ 3 goto trocar_cor
if %opcao% equ 4 goto listar_tarefas

:: Caso nenhuma das opções acima seja escolhida
goto opcao_invalida

:abrir_chrome
start chrome https://www.uol.com.br        :: Abre o Google Chrome no site especificado
goto menu

:abrir_notepad
start notepad                              :: Abre o Bloco de Notas do Windows
goto menu

:trocar_cor
color 06                                   :: Muda a cor do prompt para texto amarelo (6) com fundo preto (0)
goto menu

:listar_tarefas
tasklist                                   :: Exibe a lista de tarefas em execução
pause
goto menu

:opcao_invalida
cls
echo "Opção Inválida"
pause
goto menu

:sair
exit                                       :: Sai do script e volta para o prompt
