## Um código simples e quais problemas resolve
### Código Simples
#### Hello World
```PERL
#!/usr/bin/perl
use strict;
use warnings;

print "Qual é o seu nome? ";
my $nome = <STDIN>;       
chomp($nome);            
print "Olá, $nome! Bem-vindo ao Perl!\n";
```

#### Soma
```PERL
#!/usr/bin/perl
use strict;
use warnings;

my $a = 5;
my $b = 3;
my $soma = $a + $b;

print "Soma: $soma\n";
```

#### if else
```PERL
#!/usr/bin/perl
use strict;
use warnings;

my $x = 10;

if ($x > 5) {
    print "x é maior que 5\n";
} else {
    print "x é menor ou igual a 5\n";
}
```

#### Laços
```PERL
#!/usr/bin/perl
use strict;
use warnings;

# For
for (my $i = 1; $i <= 5; $i++) {
    print "For: $i\n";
}

# While
my $j = 1;
while ($j <= 5) {
    print "While: $j\n";
    $j++;
}

# Foreach
my @numeros = (1, 2, 3, 4, 5);
foreach my $n (@numeros) {
    print "Foreach: $n\n";
}
```

#### Função 
```PERL
#!/usr/bin/perl
use strict;
use warnings;

sub quadrado {
    my ($x) = @_;  # parâmetro
    return $x * $x;
}

my $resultado = quadrado(4);
print "Quadrado de 4: $resultado\n";
```
--- 

### Quais são os principais usos desta linguagem? (Web, Dados, científico, etc...)
O principais usos da linguagem variam de sistemas antigos de `DevOps`, sistemas administradores `SysAdmin`, mas seu grande foco sempre foi `manipulação de texto e dados`

---

### Há alguma funcionalidade interessante diferente das outras linguagens?
A principal diferença da PERL para com as outras linguagem vem da sua filosofia de que há mais de uma maneira de se escrever o mesmo código ( com funções e comandos diferentes ). Ex:
```PERL
print "1 2 3 4 5\n";

print join(" ", 1..5), "\n";

for (1..5) { print "$_ "; }
print "\n";
```
Outro ponto interessante que não é bem um diferençial mas que vale a pena ressaltar é que o `Regex` já vem com a linguagem, não é necessário importar um modulo pra se trabalhar com ele.

