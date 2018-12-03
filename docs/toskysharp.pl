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

#拗音を変換    
    s/きゃ/fdj/g;  s/ぎゃ/vdj/g;  s/しゃ/dgj/g;  s/じゃ/cgj/g;
    s/きゅ/fdh/g;  s/ぎゅ/vdh/g;  s/しゅ/dgh/g;  s/じゅ/cgh/g;
    s/きぇ/fd\;/g;  s/ぎぇ/vd\;/g;  s/しぇ/dg\;/g;  s/じぇ/cg\;/g;
    s/きょ/fdk/g;  s/ぎょ/vdk/g;  s/しょ/dgk/g;  s/じょ/cgk/g;

    s/ちゃ/sdj/g;  s/ぢゃ/xdj/g;  s/にゃ/adj/g;  s/ひゃ/tdj/g;
    s/ちゅ/sdh/g;  s/ぢゅ/xdh/g;  s/にゅ/adh/g;  s/ひゅ/tdh/g;
    s/ちぇ/sd\;/g;  s/ぢぇ/xd\;/g;  s/にぇ/ad\;/g;  s/ひぇ/td\;/g;
    s/ちょ/sdk/g;  s/ぢょ/xdk/g;  s/にょ/adk/g;  s/ひょ/tdk/g;

    s/びゃ/bdj/g;  s/ぴゃ/zdj/g;  
    s/びゅ/bdh/g;  s/ぴゅ/zdh/g; 
    s/びぇ/bd\;/g;  s/ぴぇ/zd\;/g; 
    s/びょ/bdk/g;  s/ぴょ/zdk/g; 

    s/みゃ/rdj/g;  s/りゃ/egj/g;
    s/みゅ/rdh/g;  s/りゅ/egh/g;
    s/みぇ/rd\;/g;  s/りぇ/eg\;/g; 
    s/みょ/rdk/g;  s/りょ/egk/g;

    s/てゃ/sgj/g;  s/でゃ/xgj/g;
    s/てぃ/sgl/g;  s/でぃ/sgl/g;
    s/てゅ/sgh/g;  s/でゅ/xgh/g;
    s/てぇ/sg\;/g;  s/でぇ/xg\;/g;
    s/てょ/sgk/g;  s/でょ/xgk/g;

    s/ふぁ/daj/g;  s/ヴぁ/dsj/g;
    s/ふぃ/dal/g;  s/ヴぃ/dsl/g;  s/うぃ/wi/g;
    s/ふぇ/da\;/g;  s/ヴぇ/ds\;/g;  s/うぇ/we/g;
    s/ふぉ/dak/g;  s/ヴぉ/dsk/g;

    s/うぉ/wdk/g;

#清音，濁音を変換
    s/あ/j/g;  s/か/fj/g;  s/が/vj/g;  s/さ/dj/g;  s/ざ/cj/g;
    s/い/l/g;  s/き/fl/g;  s/ぎ/vl/g;  s/し/dl/g;  s/じ/cl/g;
    s/う/h/g;  s/く/fh/g;  s/ぐ/vh/g;  s/す/dh/g;  s/ず/ch/g;
    s/え/\;/g;  s/け/f\;/g;  s/げ/v\;/g;  s/せ/d\;/g;  s/ぜ/c\;/g;
    s/お/k/g;  s/こ/fk/g;  s/ご/vk/g;  s/そ/dk/g;  s/ぞ/ck/g;

    s/た/sj/g; s/だ/xj/g;  s/な/aj/g;  s/は/tj/g;  s/ば/bj/g;
    s/ち/sl/g; s/ぢ/xl/g;  s/に/al/g;  s/ひ/tl/g;  s/び/bl/g;
    s/た/sj/g; s/だ/xj/g;  s/な/aj/g;  s/は/tj/g;  s/ば/bj/g;
    s/ち/sl/g; s/ぢ/xl/g;  s/に/al/g;  s/ひ/tl/g;  s/び/bl/g;
    s/つ/sh/g; s/づ/xh/g;  s/ぬ/ah/g;  s/ふ/th/g;  s/ぶ/bh/g;
    s/て/s\;/g; s/で/x\;/g;  s/ね/a\;/g;  s/へ/t\;/g;  s/べ/b\;/g;
    s/つ/sh/g; s/づ/xh/g;  s/ぬ/ah/g;  s/ふ/th/g;  s/ぶ/bh/g;
    s/て/s\;/g; s/で/x\;/g;  s/ね/a\;/g;  s/へ/t\;/g;  s/べ/b\;/g;
    s/と/sk/g; s/ど/xk/g;  s/の/ak/g;  s/ほ/tk/g;  s/ぼ/bk/g;

    s/ぱ/zj/g; s/ま/rj/g; s/ら/ej/g; s/や/gj/g;  s/わ/wj/g;
    s/ぴ/zl/g; s/み/rl/g; s/り/el/g; 
    s/ぷ/zh/g; s/む/rh/g; s/る/eh/g; s/ゆ/gh/g;
    s/ぺ/z\;/g; s/め/r\;/g; s/れ/e\;/g; 
    s/ぽ/zk/g; s/も/rk/g; s/ろ/ek/g; s/よ/gk/g;  s/を/wk/g;

    s/ぁ/dfj/g; s/ゃ/dfgj/g;
    s/ぃ/dfl/g; s/ゅ/dfgh/g;
    s/ぅ/dfh/g; s/ょ/dfgk/g; s/ヴ/dsh/g;
    s/ぇ/df\;/g;
    s/ぉ/dfk/g;

    s/。/o/g;
    s/、/q/g;
    s/　/ /g;
    s/ー/\:/g;

    s/・/\_/g;
    s/「/\[/g;
    s/」/\]/g;

    s/ゎ/dfwj/g;

    if (/っ/) {
        s/っ([wertasdfgzxcvb])/$1$1/g;
        s/っ/do/g;   # 「あっ」 etc.
    }

#二重母音
    s/jl/u/g;
    s/hh/y/g;
    s/\;l/p/g;
    s/kh/i/g;

#撥音処理
    s/jん/m/g;
    s/lん/\./g;
    s/hん/n/g;
    s/\;ん/\//g;
    s/kん/\,/g;

    s/ん/d\:/g;

    $_;

}
