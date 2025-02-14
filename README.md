
# Nome do Projeto
My Shop - Robot Automation
## Requisitos
- Python 3.8 ou superior
- Poetry (gerenciador de dependências)
- Ferramenta para executar testes (Robot Framework ou Pytest)

## Configuração do Ambiente
1. Clone este repositório:
   git clone https://github.com/seu-usuario/nome-do-repositorio.git
   cd nome-do-repositorio

2. Instale o Poetry, caso não tenha:
   - Para sistemas baseados no Unix (Linux/Mac):
     curl -sSL https://install.python-poetry.org | python3 -

3. Instale as dependências:
   poetry install

4. Para rodar os testes:
   - Com o Robot Framework:
     poetry run robot test/

   - Com pytest:
     poetry run pytest

## Observações
- A estrutura do projeto está organizada de forma a facilitar a execução dos testes.
- Caso tenha algum problema durante a instalação ou execução, verifique se todas as dependências estão corretamente instaladas e tente rodar os testes novamente.
