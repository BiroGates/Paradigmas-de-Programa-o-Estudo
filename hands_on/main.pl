# tipagem
my $x = "42";      # string
my $y = $x + 1;    # convertido para número automaticamente

# String mutavel
my $s = "Hello";
$s .= " World";       # concatenação
substr($s, 0, 5) = "Oi"; # substitui parte da string



my @nums = (1, 2, 3);
push @nums, 4;       
my $x = shift @nums;


my %idade = (Alice => 30, Bob => 25);
$idade{"Carol"} = 40;



my $x = "42"; 
my $y = $x + 1; 
print $y;       # 43

my $z = "abc" + 5; # "abc" vira 0
print $z;          # 5





my $v = 10;     
print $v + 5;    # 15

$v = "Hello";    # agora é string
print $v;        # Hello



my $s = "Hello";
substr($s, 0, 2) = "Oi";  
print $s;  # "Oi llo"
