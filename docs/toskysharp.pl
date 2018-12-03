use encoding "euc-jp";
open(OUT, ">kekka.txt");
select OUT;

open(IN, "<:encoding(sjis)", $ARGV[0]);

while (<IN>) {
   print  &tosky($_);
}
close OUT;
close IN;

# SKY
# 1 2 3 4 5 6  7  8  9  0  - x v
# Q W E R T Y  U  I  O  P  [ ]
# , w r m h uu ai ou .  ei f [
# A S D F G H  J  K  L  ;  ' }
# n t s k y u  a  o  i  e  - ]
# Z X C V B N  M  ,  .  /  _
# p d z g b un an on in en DOT

sub tosky {
    local ($_) = @_;

#ٹ�����Ѵ�    
    s/����/fdj/g;  s/����/vdj/g;  s/����/dgj/g;  s/����/cgj/g;
    s/����/fdh/g;  s/����/vdh/g;  s/����/dgh/g;  s/����/cgh/g;
    s/����/fd\;/g;  s/����/vd\;/g;  s/����/dg\;/g;  s/����/cg\;/g;
    s/����/fdk/g;  s/����/vdk/g;  s/����/dgk/g;  s/����/cgk/g;

    s/����/sdj/g;  s/�¤�/xdj/g;  s/�ˤ�/adj/g;  s/�Ҥ�/tdj/g;
    s/����/sdh/g;  s/�¤�/xdh/g;  s/�ˤ�/adh/g;  s/�Ҥ�/tdh/g;
    s/����/sd\;/g;  s/�¤�/xd\;/g;  s/�ˤ�/ad\;/g;  s/�Ҥ�/td\;/g;
    s/����/sdk/g;  s/�¤�/xdk/g;  s/�ˤ�/adk/g;  s/�Ҥ�/tdk/g;

    s/�Ӥ�/bdj/g;  s/�Ԥ�/zdj/g;  
    s/�Ӥ�/bdh/g;  s/�Ԥ�/zdh/g; 
    s/�Ӥ�/bd\;/g;  s/�Ԥ�/zd\;/g; 
    s/�Ӥ�/bdk/g;  s/�Ԥ�/zdk/g; 

    s/�ߤ�/rdj/g;  s/���/egj/g;
    s/�ߤ�/rdh/g;  s/���/egh/g;
    s/�ߤ�/rd\;/g;  s/�ꤧ/eg\;/g; 
    s/�ߤ�/rdk/g;  s/���/egk/g;

    s/�Ƥ�/sgj/g;  s/�Ǥ�/xgj/g;
    s/�Ƥ�/sgl/g;  s/�Ǥ�/sgl/g;
    s/�Ƥ�/sgh/g;  s/�Ǥ�/xgh/g;
    s/�Ƥ�/sg\;/g;  s/�Ǥ�/xg\;/g;
    s/�Ƥ�/sgk/g;  s/�Ǥ�/xgk/g;

    s/�դ�/daj/g;  s/����/dsj/g;
    s/�դ�/dal/g;  s/����/dsl/g;  s/����/wi/g;
    s/�դ�/da\;/g;  s/����/ds\;/g;  s/����/we/g;
    s/�դ�/dak/g;  s/����/dsk/g;

    s/����/wdk/g;

#�������������Ѵ�
    s/��/j/g;  s/��/fj/g;  s/��/vj/g;  s/��/dj/g;  s/��/cj/g;
    s/��/l/g;  s/��/fl/g;  s/��/vl/g;  s/��/dl/g;  s/��/cl/g;
    s/��/h/g;  s/��/fh/g;  s/��/vh/g;  s/��/dh/g;  s/��/ch/g;
    s/��/\;/g;  s/��/f\;/g;  s/��/v\;/g;  s/��/d\;/g;  s/��/c\;/g;
    s/��/k/g;  s/��/fk/g;  s/��/vk/g;  s/��/dk/g;  s/��/ck/g;

    s/��/sj/g; s/��/xj/g;  s/��/aj/g;  s/��/tj/g;  s/��/bj/g;
    s/��/sl/g; s/��/xl/g;  s/��/al/g;  s/��/tl/g;  s/��/bl/g;
    s/��/sj/g; s/��/xj/g;  s/��/aj/g;  s/��/tj/g;  s/��/bj/g;
    s/��/sl/g; s/��/xl/g;  s/��/al/g;  s/��/tl/g;  s/��/bl/g;
    s/��/sh/g; s/��/xh/g;  s/��/ah/g;  s/��/th/g;  s/��/bh/g;
    s/��/s\;/g; s/��/x\;/g;  s/��/a\;/g;  s/��/t\;/g;  s/��/b\;/g;
    s/��/sh/g; s/��/xh/g;  s/��/ah/g;  s/��/th/g;  s/��/bh/g;
    s/��/s\;/g; s/��/x\;/g;  s/��/a\;/g;  s/��/t\;/g;  s/��/b\;/g;
    s/��/sk/g; s/��/xk/g;  s/��/ak/g;  s/��/tk/g;  s/��/bk/g;

    s/��/zj/g; s/��/rj/g; s/��/ej/g; s/��/gj/g;  s/��/wj/g;
    s/��/zl/g; s/��/rl/g; s/��/el/g; 
    s/��/zh/g; s/��/rh/g; s/��/eh/g; s/��/gh/g;
    s/��/z\;/g; s/��/r\;/g; s/��/e\;/g; 
    s/��/zk/g; s/��/rk/g; s/��/ek/g; s/��/gk/g;  s/��/wk/g;

    s/��/dfj/g; s/��/dfgj/g;
    s/��/dfl/g; s/��/dfgh/g;
    s/��/dfh/g; s/��/dfgk/g; s/��/dsh/g;
    s/��/df\;/g;
    s/��/dfk/g;

    s/��/o/g;
    s/��/q/g;
    s/��/ /g;
    s/��/\:/g;

    s/��/\_/g;
    s/��/\[/g;
    s/��/\]/g;

    s/��/dfwj/g;

    if (/��/) {
        s/��([wertasdfgzxcvb])/$1$1/g;
        s/��/do/g;   # �֤��á� etc.
    }

#����첻
    s/jl/u/g;
    s/hh/y/g;
    s/\;l/p/g;
    s/kh/i/g;

#��������
    s/j��/m/g;
    s/l��/\./g;
    s/h��/n/g;
    s/\;��/\//g;
    s/k��/\,/g;

    s/��/d\:/g;

    $_;

}
