# Tipagem em Perl

Perl é fracamente tipado e dinamicamente tipado.

Não existem tipos explícitos como int, float, int32, u64 etc.

Em vez disso, Perl armazena valores em escalars ($var) e decide internamente se o valor deve ser tratado como string, inteiro ou ponto flutuante, dependendo do contexto.

# Representação interna

Um scalar em Perl pode ter representação interna múltipla: string, inteiro e número em ponto flutuante (Perl chama isso de NV – numeric value).

Quando você faz uma operação numérica, Perl converte o valor automaticamente.

```perl
my $x = "42";      # string
my $y = $x + 1;    # convertido para número automaticamente
print $y;          # 43
```

# Números inteiros e ponto flutuante

Inteiros em Perl geralmente usam o tamanho nativo da máquina (tipicamente 32 ou 64 bits, dependendo da build).

Ponto flutuante é representado como um double em C (64 bits, precisão dupla).

Ou seja:

Não existe distinção explícita entre int, float, int32, u64 etc.

Tudo é convertido dinamicamente e armazenado como número (inteiro ou double).

Strings em Perl

Em Perl, strings são scalars ($var).

Elas não são apenas arrays de caracteres como em C. São objetos mais sofisticados (um buffer de bytes que pode armazenar Unicode).

Mutabilidade:

Strings em Perl são mutáveis. Você pode alterá-las diretamente, concatenar, substituir trechos etc.

Exemplo:

```perl
my $s = "Hello";
$s .= " World";       # concatenação
substr($s, 0, 5) = "Oi"; # substitui parte da string
print $s;             # "Oi World"
```

Unicode:

Perl tem suporte nativo a Unicode, incluindo operações sobre caracteres multibyte.

Usa internamente uma flag (utf8) para diferenciar entre bytes e texto.

# Coleções em Perl

Perl tem três tipos de coleções básicas na própria linguagem:

Arrays (@array)

Sequência ordenada de scalars.

Mutáveis, podem crescer/diminuir dinamicamente.

Operações típicas: push, pop, shift, unshift, splice, sort.

```perl
my @nums = (1, 2, 3);
push @nums, 4;       # [1, 2, 3, 4]
my $x = shift @nums; # remove 1, array vira [2, 3, 4]
```

Hashes (%hash)

Mapeamento chave → valor, semelhante a dict em Python.

Chaves são sempre strings (convertidas implicitamente se usar número).

```perl
my %idade = (Alice => 30, Bob => 25);
print $idade{"Alice"};   # 30
$idade{"Carol"} = 40;    # insere novo par
```

Scalars ($var)

Podem armazenar um único valor, seja número, string ou referência (ponteiro) para outra estrutura.

A partir de referências você pode construir estruturas complexas (listas de listas, hash de arrays, etc.).
