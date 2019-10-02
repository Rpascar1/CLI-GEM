require 'launchy'


#CLI CONTROLLER
class CoralGetter::CLI

  def call_on_open
    puts
    puts
    puts "Welcome! To see current coral information enter the corresponding number to one of the following options.\nYou can return to this menu at anytime by typing menue./n If you would like to end the session, please type exit."
    puts
    puts
    user_menu
    goodbye
  end

  def harvest_url
    https://tjmcorals.com/collections/all
    @prices = CoralGetter::SpsCoral.prices
  end

  def user_menu

      puts <<_
                                    dP                      oo
                                    88
.d8888b. .d8888b. 88d888b. .d8888b. 88    88d888b. 88d888b. dP .d8888b. .d8888b. .d8888b.
88'  `"" 88'  `88 88'  `88 88'  `88 88    88'  `88 88'  `88 88 88'  `"" 88ooood8 Y8ooooo.
88.  ... 88.  .88 88       88.  .88 88    88.  .88 88       88 88.  ... 88.  ...       88
`88888P' `88888P' dP       `88888P8 dP    88Y888P' dP       dP `88888P' `88888P' `88888P'
                                          88
                                          dP


_
      puts
      puts
      puts "Please make a selection:"
      puts
      puts "1 For a full list of species street names."
      puts
      puts "2 See the price range of all available stock."
      puts
      puts "3 Complete list of names and prices of all stock."
      puts
      puts "4 'Bargain Bin' - all corals under $100."
      puts
      puts "Please enter your selection... or exit."
      puts
      puts
      puts
      puts
      puts "WARNING. Pressing an unlisted number might not be a good idea."
      puts "Secret Function - Do a barrel roll Fox, N1000000 version only. I you know, you know"

      input = nil
      secretanswer = nil
      while input != "exit"
        input = gets.strip.downcase
        case input
        when "1"
          all_sps_names
        when "2"
          range_of_prices
        when "3"
          list_names_with_prices
        when "4"
          quantity
        when "Secret Function".downcase
              secret_answer
        when ""
          puts "nope"
        when "menu"
          call_on_open
        else
              unless input == 'exit'.downcase ||= "\e[A\e[B\e[C\e[D\n"
                clear
                print "\e[3J\e[H\e[2J"
              Ending.new.ending_secret
              input = "exit"
            end
          end
        end
      end

  def all_sps_names
    puts "sps names"
  end

  def range_of_prices
    puts "price range"
  end

  def list_names_with_prices
    puts "name and price"
  end

  def quantity
    puts "quant"
  end

  def price_range(amount)
    puts "range selections"
  end

  def goodbye
    puts "Session Exited"
  end

  def do_a_barrel_roll
     puts `clear`
      puts <<_


                                                                   .                              .
        :                                                                          .     j.
                                                                                        ;f
             :                                                                 ;f;     :G,
                                                                              jGGjL   .GG.         .
                                                                              KEKDK   G;G.         ,
                                                                              GE,ED  Ljj;
                         ,                                                     DED. jj#L.
       .,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,;,:  :,,,,,,,,,,.  :,,,,,,,,,,,.,,,,,,, iLWGG.
       ifftjtjftftjjfjttjjjttjttjtjjjjtttjjtjG#,EjjjtjtjjjLfGWLjttjjjjtjjj#tjtjjtD.GE#;f
      .iiK#######KE#########;:####W;;;,W######jGK;W#######t#;E######j####LjW###GK:Gj##jL:   f. .
       tiKjjjjjjfWfjjjjjjjjK;iKtjjW,;i,DjjjjjjWtK;GjjjjjtWti#GtjjjjEjjGjj#iKtjWtD,f####tG, jL.    .
       i;KjjjjjjfWifjjjjjjjW,GfjjjEf:;;Djjjjjjf#,:Gjjjjjj#:WfjjffjjEt.KjjDWfjGGW GL#####LG:LG.
       itKjjWLffjjijtfjjEfij.WjjjjjE:;;DjjWjWfj#,:Gjj#jjtj.KjKffGfjEi;iEjjGjjW,t G###jW##jGDf.
       ijWfjD#KtEKGW;DjfEj,.tEjDDfjW.,.DfjW.tLj#: GjjW.,.::fjK;.DfjKi:.ELjfjE;#  L##iGi##it#t,
       :DDKLLLGWEK D,DLLEj. GLLWfGLK;.:DLLW.DLL#..GLLW##K,iLLK;:DLLKi,.,WLLLWji  L###jK##;##it
        D;E#KDGGWLfD:DGGKt;,WGG#,WGDE,.DGGW#EGG#: DGGGGLW,LGGW;,DGGKi:,,#GGDKD.  Gj#####DK##fL
   :ttttt#LijWEDEWKL:DDDKj,,#DEWE#DD# ,DDDDDDDKL  DDDDDDW jDDW,:DDDWi,,LKDDDW;WGGGGt###Lt#E#KG
   WtjffffjjjWKEKWWL:DEEWt.GKEEKKKEEWi DEE#WEKL : EEEWffD tEEWi;DEE#::,#EEEEEKtjjjiGfjft#fE##G,
  tjf########WKKWDLG,DKKWj WKKKKKKKKKD DKK#,#WW#f:KKK#,KKjfKKW###KKK.W#WKKWKKW#####ELjfW#W###GjGf:
  W;W#KKKKKKKKKK#L,D:EWKWt,#KKELLLDWKW DWKWD:KWKW:EKK#;, LfWKKKKKWW;,DWKK#t#KKKKKKK#;GG########jjGL.
 :Gt##WWWWWWWWDfiE.G,EWWWjG#WWjff;D#W#:DWW#EiGWWW,EWW#;, LLWWWWWGj.W;DWWWD.WWWWWWWW#GiGGGGW##tLL;
 #ttiitii,;;i;;;fjjE:;tii:;i;iL;;W;t;;,iii;E;GWWW:EWW#;, L;tii,,;,i:i;i;;:.;ii;;;;;iffjLLGt##G.
 DDDDDDDDDDDDLti;iiLWWWWWWWWWWK;;fGGGGGGDGGDjG#WW.KWWLi, LGGGGDL,  .KKKKKKKKKKKKKKKKKKK  ;t#EG
        . .......:,ittt         .,itiii;;;;;LEj##,KWiLi        .i       :    .,::...      L#fL  .
              .......,it;.           :,,;;;;;iW;W;E,Di        tW#      ;,i;;: ..........  GWit   .
   :           jj.......,ii;            ......:DGtLDLit..;ti,fW#W,......,;,.:.............GDt,
               WWK  .....DWW.             ......t#GDGLii,;iifE##WK.....:,,::,;:.   .......jif:..
               WWE.     .KWW:              .......LEGLi;tEKWLK###f..... .  .:;i.          :tG.......
               GKKj      KWW...              ..... Lj:;itjWLLLL##        . ..,i;fLf;       LG.
        ,      .KKE     iKWW   .              ...... :,ttjWLLLLL.        ..;;,;;    .;i;   GL.
        ,       KKWi    GKWf                    ...i..fGjjfLE#WLL        ...titfji      .  Gj
        :       jWWj    EK#:                  .  ..i..;i,;GG:#DLj. .     .:;tttii;.        j;
                 EWD;  .EKD  :                     i:..Lf:E##WLLf;       :,itjjttt:        ::
                  GKDKDjKE                         t::.:::G##GfLL.        ,:::;jjt:
           :  :    :DKftL          ..fj,. .       .:;,:::: :###Wt   .;    ,;.....;     .    :
                   ,KWtjjj      ti:...:,:G#j.     ..:::::. ,####     .jL   ,iij
               :   jW#KWjj:   :EE#i,;tii,G.#:       ;,.:::LEEEE      :.Li;:;,fG           ,
 ,                ,iEWt#ttj    f;Ei.tGiti##K.       ;jDL.:;;tGGj    ,,:fE:,ittE
  :               .iDWWjjjj.    GL:.jjitiiitj.   .j,ifL:,;it,KWKWW,:jEKGED.:.:EWi
                 ,ifWW##Wjjt        ;;tttttttj. .jL:tjL,    .W#WLWW.:DW;;it,,KWiW,            :
               ::,;LKW####Li.       ;iiitttiit: ifG.ijLti;.LLWW#,KW:.jEDiii;;LWWWD.
               L.:jDWW##### D    :jjfLGDEGLt;t, jLD.itLiti;GL#W#:WKD.:DKKDj,,;WKKWf                :
                ;:iLEW####jW;  :;ittjLGEKWW##t..fGE ,iL:tj;jt#WW.EKD.fLEDK#KGtG#WK,
                i:;tGGLWWKEW.  .:;itfGDEWWW##j tLDK :if.,fitt#WE fKDtiLEKDKKWttEt          :
              .t:Gt:LEWKjEKW#Lt ::ijfGDEKWWWD. ifEK  tj.;ttf;W#f  ,f. ,fGDGGLt;;
              L;;Li:;;tiEWKW#WL;t;:ijtjLjtGDDG,;jDE  ij:,;ji;KW   .tj  .,tfLLLf. ,
             :G:jL:ii,,:##K#K,j;j,:,,;i,:EWKKWK:,i:   . GWWD i.   .;f  .;ttLfLL.
     .       tE.tG      #WK#,tL,t :;,:. .K#WWWE;ij    ,  fL  ii    :jt, ;tjfjLL.
             tD.it::  .,KWKitff:t:      GKKW#KKEGi   :,;iitttii    :iLK,,;tfjLf:
             iD.;::,,,,,G#GifDt:i,,.  iiEWWK#EWW#W   :;;iititi;:   :;tfD,:tjjLf
,            :j.,:::,,,,;#EfGE;.;,,;tiiiE##KWEKGW#   ,iitititti;   .,:iGf,i;;jG.
        :     ... .iDL.::WGDDE.:,:,;i;iiK##KK;WLDW  .::,;iiii,,:.  ..,EW,:ii,tGt
  .           ...   .   .jGEDE:::.,,i;iiW#WKK:.K#K :,,ij,:,,ifiii. :.D##:;;i:ijf.
              ::.:::,,,,ifGDLD:.::,,iitiK#WKW:..f; :,,ij;, :ijitt:  :DK#:t;;:tfL;
_
      puts "Level up Fox. You found my first program ever." '"Twittter for Gucci Smart Toilet™"'
            Launchy.open("https://twitter.com/ProteusLinnaeus/status/1142800917395320832?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1142800917395320832&ref_url=https%3A%2F%2Fpublish.twitter.com%2F%3Fquery%3Dhttps%253A%252F%252Ftwitter.com%252FProteusLinnaeus%252Fstatus%252F1142800917395320832%26widget%3DTweet")
            Launchy.open("https://www.youtube.com/watch?v=wIkJvY96i8w")
        puts "Use 'exit' Human."
      end

    def secret_answer
      secretanswer = gets.strip.downcase
      if secretanswer == "ZZ".downcase || secretanswer == "RR".downcase
        clear
        print "\e[3J\e[H\e[2J"
         do_a_barrel_roll
      else
        Launchy.open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
        goodbye
      end
    end


  def clear
   puts "\e[2J\e[f"
 end

end
#test

# user types show corals

# list SPS prices
#
# list SPS names
#
# list quantity -  if a thing for limited runs should have number
#
# list how many in 3 price ranges ranges
#  pick price range
