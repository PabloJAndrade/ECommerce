
# Nome do Projeto
My Shop - Robot Automation
## Instalação e Execução

Siga as instruções abaixo para configurar o ambiente, instalar as dependências necessárias e executar os testes do projeto.
- Python 3.8 ou superior
- Poetry (gerenciador de dependências)
- Ferramenta para executar testes (Robot Framework)
## Configuração do Ambiente
1. Crie um ambiente virtual:
```bash
python3 -m venv robot_env
```

2. Ative o ambiente virtual:
- No Unix/Mac:
    ```bash
    source robot_env/bin/activate
    ```
- No Windows:
    ```bash
    .\robot_env\Scripts\activate
    ```

3. Instale as dependências necessárias:
```bash
pip install robotframework pyyaml robotframework-browser
rfbrowser init
```

## Execução dos Testes
Após configurar o ambiente, você pode executar os testes usando o Robot Framework:

```bash
robot test/
```
Caso ocorra algum erro relacionado ao módulo `Browser`, certifique-se de que todas as dependências estão corretamente instaladas.

## Requisitos
## Configuração do Ambiente
1. Clone este repositório:
   git clone https://github.com/seu-usuario/nome-do-repositorio.git
   cd nome-do-repositorio

Caso não tenha o Poetry instalado, você pode pular esta etapa.
   - Para sistemas baseados no Unix (Linux/Mac):
     curl -sSL https://install.python-poetry.org | python3 -

3. Instale as dependências:
   poetry install

4. Para rodar os testes:
   - Com o Robot Framework:
     poetry run robot test/

   - Com pytest:
     poetry run pytest
   - Com Robot:
      robot test .

## Observações
- A estrutura do projeto está organizada de forma a facilitar a execução dos testes.
- Caso tenha algum problema durante a instalação ou execução, verifique se todas as dependências estão corretamente instaladas e tente rodar os testes novamente.
