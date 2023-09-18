<h1 align="center">Crontab </h1>
<p align="center">
Controle de agenda pela linha de comando
</p>
<p align="center" >
<img src="http://img.shields.io/static/v1?label=STATUS&message=CONCLUIDO&color=RED&style=for-the-badge"/>
</p>

### Tópicos 

:small_blue_diamond: [Descrição do projeto](#descrição-do-projeto)

:small_blue_diamond: [Pré-requisitos](#pré-requisitos)

:small_blue_diamond: [Como rodar a aplicação](#como-rodar-a-aplicação-arrow_forward)


## Descrição do projeto
Criado um script para controle de agenda pela linha de comando no linux. Usado para isso o Contrab.

Os principais pontos relacionados ao "crontab" no Linux:

1. **Agendamento de Tarefas:** O "crontab" permite que os usuários programem a execução automática de tarefas, como scripts, comandos ou programas, em horários específicos ou em intervalos regulares. Isso é útil para automatizar tarefas de manutenção, backups, geração de relatórios, entre outras.

2. **Arquivos Crontab:** Cada usuário do sistema pode ter seu próprio arquivo "crontab" que contém as tarefas agendadas específicas para esse usuário. Os administradores do sistema também podem criar tarefas globais que se aplicam a todos os usuários.

3. **Sintaxe:** A sintaxe do arquivo "crontab" é específica e segue o formato:
   
   ```
   * * * * * comando_a_ser_executado
   ```

   - Os cinco asteriscos (*) representam, respectivamente, o minuto, a hora, o dia do mês, o mês e o dia da semana em que a tarefa deve ser executada.
   - O "comando_a_ser_executado" é o comando ou script que será executado no horário especificado.

4. **Exemplos:** Alguns exemplos de uso do "crontab" incluem:
   
   - Executar um script de backup todas as noites às 2 da manhã.
   - Enviar relatórios por e-mail no primeiro dia de cada mês.
   - Atualizar automaticamente uma base de dados a cada hora.

5. **Edição do Crontab:** Para editar o arquivo "crontab", você pode usar o comando "crontab -e". Isso abrirá o arquivo no editor de texto padrão do sistema, onde você pode adicionar, modificar ou excluir tarefas agendadas.

6. **Listagem do Crontab:** Para listar o conteúdo do seu arquivo "crontab", você pode usar o comando "crontab -l".

7. **Remoção do Crontab:** Para remover seu arquivo "crontab", use o comando "crontab -r". Certifique-se de ter cuidado ao usá-lo, pois ele excluirá todas as tarefas agendadas desse arquivo.

O "crontab" é uma ferramenta poderosa para automatizar tarefas em sistemas Linux e é amplamente utilizado para gerenciar ações agendadas em servidores e estações de trabalho. Ele oferece flexibilidade e controle sobre quando e como as tarefas são executadas, ajudando a melhorar a eficiência e a automação das operações do sistema.
## Pré requisitos

Sistema operacional Linux

## Como rodar a aplicação :arrow_forward:

No terminal, clone o projeto: 

```
git clone https://github.com/Henrique088/Crontab.git
```

Depois abra o terminal dentro da pasta do arquivo e digite o comando: 

```
./agenda.ssh

```


