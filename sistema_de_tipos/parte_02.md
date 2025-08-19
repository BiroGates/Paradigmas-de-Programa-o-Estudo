# O sistema de tipos da linguagem perl

Forte ou fraco?

Perl é considerado fracamente tipado, porque faz conversões automáticas entre tipos (string ↔ número).

Você pode somar string com número sem erro imediato (diferente de uma linguagem fortemente tipada como Rust).

```perl
my $x = "42";   # string
my $y = $x + 1; # Perl converte para número
print $y;       # 43

my $z = "abc" + 5; # "abc" vira 0
print $z;          # 5
```

# Perl é dinamicamente tipado:

Não se declara o tipo da variável, só se usa my $var.

O tipo é decidido em tempo de execução.

```perl
my $v = 10;      # inteiro
print $v + 5;    # 15

$v = "Hello";    # agora é string
print $v;        # Hello
```

Há tipos imutáveis?

Não. Em Perl, valores básicos (strings, números, referências) são mutáveis.

Strings podem ser alteradas com substr, números podem ser sobrescritos.

```perl
my $s = "Hello";
substr($s, 0, 2) = "Oi";
print $s;  # "Oi llo"
```

Perl não tem um conceito de const imutável em nível de linguagem como em Rust ou de str imutável como em Python.

Existe use constant para criar constantes simbólicas, mas elas são mais parecidas com macros que com imutabilidade real:

```perl
use constant PI => 3.1415;
print PI * 2;   # 6.283

# PI = 10;  # erro de compilação (constante não pode ser reatribuída)
```
