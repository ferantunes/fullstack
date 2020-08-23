# fullstack
Full Stack QA Ninja

# Inicializar um projeto Ruby

bundle init

Vai criar o arquivo Gemfile (dependências do projeto)

# Instalar as dependências do projeto (Gemfile)

bundle install

# Criar estrutura para automação com RSpec

rspec --init

Vai criar o arquivo .rspec, a pasta spec com o arquivo spec_helper.rb

# Gerar relatório via linha de comando

rspec --format html --out report.html

# Gerar relatório CI

Adicionar a dependência no arquivo Gemfile

gem 'rspec_junit_formatter'