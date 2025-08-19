# Criando um tipo

```perl
#!/usr/bin/perl
use strict;
use warnings;

# Pacote para métricas
package Medida;

sub new {
    my ($class, $valor, $unidade) = @_;
    my $self = {
        valor   => $valor,
        unidade => $unidade, # "cm", "in", "yd"
    };
    bless $self, $class;
    return $self;
}

# Converte a unidade para centímetros (padrão interno)
sub to_cm {
    my ($self) = @_;
    if ($self->{unidade} eq "cm") {
        return $self->{valor};
    } elsif ($self->{unidade} eq "in") {
        return $self->{valor} * 2.54;  # 1 in = 2.54 cm
    } elsif ($self->{unidade} eq "yd") {
        return $self->{valor} * 91.44; # 1 yd = 91.44 cm
    } else {
        die "Unidade desconhecida: $self->{unidade}";
    }
}

# Converte para polegadas
sub to_in {
    my ($self) = @_;
    return $self->to_cm() / 2.54;
}

# Converte para jardas
sub to_yd {
    my ($self) = @_;
    return $self->to_cm() / 91.44;
}

# Método para imprimir em string
sub as_string {
    my ($self) = @_;
    return "$self->{valor} $self->{unidade}";
}

# Programa principal
package main;

my $m1 = Medida->new(100, "cm");  # 100 cm
print $m1->as_string(), " = ", $m1->to_in(), " in\n";
print $m1->as_string(), " = ", $m1->to_yd(), " yd\n";

my $m2 = Medida->new(10, "in");   # 10 polegadas
print $m2->as_string(), " = ", $m2->to_cm(), " cm\n";

my $m3 = Medida->new(2, "yd");    # 2 jardas
print $m3->as_string(), " = ", $m3->to_cm(), " cm\n";
```
