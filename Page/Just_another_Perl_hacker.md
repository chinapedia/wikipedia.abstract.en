JUST ANOTHER PERL HACKER, or JAPH, typically refers to a Perl program which prints "Just another Perl hacker," (the comma is canonical but is occasionally omitted). Short JAPH programs are often used as signatures in online forums, or as T-shirt designs. The phrase or acronym is also occasionally used (without code) for a signature.

JAPH programs are classically done using extremely obfuscated methods, in the spirit of the Obfuscated C Contest. More recently, as the phenomenon has become so well known, the phrase is sometimes used in ordinary examples (without obfuscation).

The idea of using tiny Perl programs which print a signature _as a signature_ was originated by Randal L. Schwartz, in his postings to the newsgroup comp.lang.perl.[1] Many of the JAPHs below are his.


Examples

JAPH program without obfuscation:

    print "Just another Perl hacker,";

Embedding JAPH in opaque code:

    $_='987;s/^(\d+)/$1-1/e;$1?eval:print"Just another Perl hacker,"';eval;

Decoding JAPH from a transposed string literal:

    $_="krJhruaesrltre c a cnP,ohet";$_.=$1,print$2while s/(..)(.)//;

Printing out JAPH as separate processes:

    for $i (0..4) { if (!fork) {
          $i == 0 or not { $SIG{INT} = sub { print "J" } } or
          $i == 1 or not { $SIG{INT} = sub { print "A" } } or
          $i == 2 or not { $SIG{INT} = sub { print "P" } } or
          $i == 3 or not { $SIG{INT} = sub { print "H" } } ;
          sleep $i; last; } } kill INT => $$;

Appearing as if it does something completely unrelated to printing JAPH:

    $_ = "wftedskaebjgdpjgidbsmnjgc";
    tr/a-z/oh, turtleneck Phrase Jar!/; print;

Forking processes to print out one letter each in the correct order:[2]

    @P=split//,".URRUU\c8R";@d=split//,"\nrekcah xinU / lreP rehtona tsuJ";sub p{
    @p{"r$p","u$p"}=(P,P);pipe"r$p","u$p";++$p;($q*=2)+=$f=!fork;map{$P=$P[$f^ord
    ($p{$_})&6];$p{$_}=/ ^$P/ix?$P:close$_}keys%p}p;p;p;p;p;map{$p{$_}=~/^[P.]/&&
    close$_}%p;wait until$?;map{/^r/&&<$_>}%p;$_=$d[$q];sleep rand(2)if/\S/;print

Using only Perl keywords (no punctuation):[3]

    not exp log srand xor s qq qx xor
    s x x length uc ord and print chr
    ord for qw q join use sub tied qx
    xor eval xor print qq q q xor int
    eval lc q m cos and print chr ord
    for qw y abs ne open tied hex exp
    ref y m xor scalar srand print qq
    q q xor int eval lc qq y sqrt cos
    and print chr ord for qw x printf
    each return local x y or print qq
    s s and eval q s undef or oct xor
    time xor ref print chr int ord lc
    foreach qw y hex alarm chdir kill
    exec return y s gt sin sort split

Using only punctuation, no alphanumeric characters. This breaks after Perl 5.30.0, as using $# and $* create fatal errors. (written by Eric Roode; only works on Unix and Unix-like systems):

    `$=`;$_=\%!;($_)=/(.)/;$==++$|;($.,$/,$,,$\,$",$;,$^,$#,$~,$*,$:,@%)=(
    $!=~/(.)(.).(.)(.)(.)(.)..(.)(.)(.)..(.)......(.)/,$"),$=++;$.++;$.++;
    $_++;$_++;($_,$\,$,)=($~.$"."$;$/$%[$?]$_$\$,$:$%[$?]",$"&$~,$#,);$,++
    ;$,++;$^|=$";`$_$\$,$/$:$;$~$*$%[$?]$.$~$*${#}$%[$?]$;$\$"$^$~$*.>&$=`

A much shorter one, using only punctuation, based on the [https://metacpan.org/module/Acme::EyeDrops EyeDrops] module:

    ''=~('(?{'.('-)@.)@_*([]@!@/)(@)@-@),@(@@+@)'
    ^'][)@]`}`]()`@.@]@%[`}%[@`@!#@%[').',"})')

ASCII art (to make this dromedary-shaped code work, the console size needs to be set to at least 119×48):[4]

                                                           #
                                                       sub j(\$){($
                         P,$V)=                      @_;while($$P=~s:^
                     ([()])::x){                    $V+=('('eq$1)?-32:31
               }$V+=ord(  substr(                 $$P,0,1,""))-74} sub a{
              my($I,$K,$  J,$L)=@_               ;$I=int($I*$M/$Z);$K=int(
             $K*$M/$Z);$J=int($J*$M             /$Z);$L=int($L*$M/$Z); $G=$
             J-$I;$F=$L-$K;$E=(abs($          G)>=abs($F))?$G:$F;($E<0) and($
              I,$K)=($J,$L);$E||=.01       ;for($i=0;$i<=abs$E;$i++ ){ $D->{$K
                      +int($i*$F/$E)      }->{$I+int($i*$G/$E)}=1}}sub p{$D={};$
                     Z=$z||.01;map{    $H=$_;$I=$N=j$H;$K=$O=j$H;while($H){$q=ord
                    substr($H,0,1,"" );if(42==$q){$J=j$H;$L=j$H}else{$q-=43;$L =$q
                  %9;$J=($q-$L)/9;$L=$q-9*$J-4;$J-=4}$J+=$I;$L+=$K;a($I,$K,$J,$ L);
                  ($I,$K)=($J,$L)}a($I,$K,$N,$O)}@_;my$T;map{$y=$_;map{ $T.=$D->{$y}
                  ->{$_}?$\:' '}(-59..59);$T.="\n"}(-23..23);print"\e[H$T"}$w= eval{
                  require Win32::Console::ANSI};$b=$w?'1;7;':"";($j,$u,$s,$t,$a,$n,$o
                  ,$h,$c,$k,$p,$e,$r,$l,$C)=split/}/,'Tw*JSK8IAg*PJ[*J@wR}*JR]*QJ[*J'.
                   'BA*JQK8I*JC}KUz]BAIJT]*QJ[R?-R[e]\RI'.'}Tn*JQ]wRAI*JDnR8QAU}wT8KT'.
                   ']n*JEI*EJR*QJ]*JR*DJ@IQ[}*JSe*JD[n]*JPe*'.'JBI/KI}T8@?PcdnfgVCBRcP'.
                    '?ABKV]]}*JWe*JD[n]*JPe*JC?8B*JE};Vq*OJQ/IP['.'wQ}*JWeOe{n*EERk8;'.
                      'J*JC}/U*OJd[OI@*BJ*JXn*J>w]U}CWq*OJc8KJ?O[e]U/T*QJP?}*JSe*JCnTe'.
                       'QIAKJR}*JV]wRAI*J?}T]*RJcJI[\]3;U]Uq*PM[wV]W]WCT*DM*SJ'.  'ZP[Z'.
                          'PZa[\]UKVgogK9K*QJ[\]n[RI@*EH@IddR[Q[]T]T]T3o[dk*JE'.  '[Z\U'.
                            '{T]*JPKTKK]*OJ[QIO[PIQIO[[gUKU\k*JE+J+J5R5AI*EJ00'.  'BCB*'.
                                 'DMKKJIR[Q+*EJ0*EK';sub h{$\ = qw(% & @ x)[int    rand
                                  4];map{printf  "\e[$b;%dm",int(rand 6)+101-60*   ($w
                                   ||0);system(  "cls")if$w ;($A,$S)=    ($_[1],   $
                                    _[0]);($M,   @,)= split  '}';for(     $z=256
                                    ;$z>0; $z   -=$S){$S*=   $A;p @,}      sleep$_
                                    [2];while   ($_[3]&&($    z+=$ S)       <=256){
                                    p@,}}("".   "32}7D$j"     ."}AG".       "$u}OG"
                                    ."$s}WG"    ."$t",""      ."24}("        ."IJ$a"
                                    ."}1G$n"    ."}CO$o"     ."}GG$t"        ."}QC"
                                     ."$h}"      ."^G$e"    ."})IG"          ."$r",
                                     "32}?"       ."H$p}FG$e}QG$r".          "}ZC"
                                     ."$l",          "28}(LC" .""            ."".
                                     "$h}:"           ."J$a}EG".             "$c"
                                     ."}M"             ."C$k}ZG".            "$e"
                                     ."}"             ."dG$r","18"          ."}("
                                    ."D;"            ."$C"  )}{h(16         ,1,1,0
                                   );h(8,          .98,0,0   );h(16         ,1,1,1)
                                   ;h(8.0         ,0.98,0,     1);         redo}###
                                 #written                                 060204 by
                               #liverpole                                  @@@@@@@
                            #@@@@@@@@@@@


See also

-   "Hello, World!" program
-   Java Pet Store
-   Obfuscated Perl Contest
-   Perl golf


References


Further reading

-


External links

-   Cultured Perl: The Elegance of JAPH
-   Cpan.org, a collection of JAPHs at CPAN.
-   How does this famous JAPh work? and Fun With Reserved Keywords at Stack Overflow explain how blokhead's code works.

Category:Perl Category:English phrases Category:Obfuscation Category:Test items in computer languages Category:Computer programming folklore

[1] Randal L. Schwartz in Usenet message M1HFPVH2JQ.FSF@HALFDOME.HOLDIT.COM explaining the origin of JAPH. Available through Google.com

[2] Plover.com

[3] Originally posted at perlmonks.org by user blokhead

[4] Originally posted at perlmonks.org by user liverpole.