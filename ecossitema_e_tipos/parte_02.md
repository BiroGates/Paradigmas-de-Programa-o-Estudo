## Como é o ecossistema auxiliar da linguagem
### Como funciona o sistema de pacotes e bibliotecas?
O gerenciador de pacotes do se chama `PPM` ( PERL Packet Manager ) e é usado para buscar em repositorios os modulos disponiveis. Com ela é possível instalar, remover e atualizar modulos. Um exemplo de como usar o gerenciador:
```
ppm install <packagename>
```

O `PPM` geralmente vem junto com uma distribuição da [`ActivePerl`](https://www.activestate.com/platform/supported-languages/perl/) que facilita a manuntenção e o deploy de aplicações PERL. Aqui esta um site com todos os modulos já pré-buildados disponiveis para download https://ppm.activestate.com/BuildStatus/5.10-A.html

### Como funciona o gerenciamento de dependências?
Todas as depencias são resolvidas por meio de metadados já disponiveis na distribuição do [`ActivePerl`](https://www.activestate.com/platform/supported-languages/perl/)</br>
Nesses metados estão incluidos nome, versão e link do repositório para download, isso junto ao PPM já é o suficiente para resolver as dependencias.