FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	the 'args' dictionary contains following variables:
	URL          => my-http://myhost.domain.com:8080/mysite/a.html?search=blah#myanchor
	URL_SCHEME   => my-http
	URL_HOST     => myhost.domain.com
	URL_PORT     => 8080
	URL_PATH     => /mysite/a.html
	URL_QUERY    => ?search=blah
	URL_FRAGMENT => #myanchor
	URL_VALUE    => everything that comes after the 'scheme:'
	URL_B64VALUE => the same as URL_VALUE but decoded using based64

	TEXT => the selected text used for a lookup
ENCODED_TEXT

	the url query parameters are parsed in following way:
	?search=blah&flag=2 would become
	
	URL_QUERY_SEARCH => blah
	URL_QUERY_FLAG => 2
	
	note the upper case of parameter's name

    ---

	returning 1 indicates the handler has finished successfully
     � 	 	� 
 	 t h e   ' a r g s '   d i c t i o n a r y   c o n t a i n s   f o l l o w i n g   v a r i a b l e s : 
 	 U R L                     = >   m y - h t t p : / / m y h o s t . d o m a i n . c o m : 8 0 8 0 / m y s i t e / a . h t m l ? s e a r c h = b l a h # m y a n c h o r 
 	 U R L _ S C H E M E       = >   m y - h t t p 
 	 U R L _ H O S T           = >   m y h o s t . d o m a i n . c o m 
 	 U R L _ P O R T           = >   8 0 8 0 
 	 U R L _ P A T H           = >   / m y s i t e / a . h t m l 
 	 U R L _ Q U E R Y         = >   ? s e a r c h = b l a h 
 	 U R L _ F R A G M E N T   = >   # m y a n c h o r 
 	 U R L _ V A L U E         = >   e v e r y t h i n g   t h a t   c o m e s   a f t e r   t h e   ' s c h e m e : ' 
 	 U R L _ B 6 4 V A L U E   = >   t h e   s a m e   a s   U R L _ V A L U E   b u t   d e c o d e d   u s i n g   b a s e d 6 4 
 
 	 T E X T   = >   t h e   s e l e c t e d   t e x t   u s e d   f o r   a   l o o k u p 
 E N C O D E D _ T E X T 
 
 	 t h e   u r l   q u e r y   p a r a m e t e r s   a r e   p a r s e d   i n   f o l l o w i n g   w a y : 
 	 ? s e a r c h = b l a h & f l a g = 2   w o u l d   b e c o m e 
 	 
 	 U R L _ Q U E R Y _ S E A R C H   = >   b l a h 
 	 U R L _ Q U E R Y _ F L A G   = >   2 
 	 
 	 n o t e   t h e   u p p e r   c a s e   o f   p a r a m e t e r ' s   n a m e 
 
         - - - 
 
 	 r e t u r n i n g   1   i n d i c a t e s   t h e   h a n d l e r   h a s   f i n i s h e d   s u c c e s s f u l l y 
   
  
 l     ��������  ��  ��     ��  i         I      �� ���� 0 
handle_url     ��  o      ���� 0 args  ��  ��    k     O       O     L    k    K       r    	    n        o    ���� 0 URL    o    ���� 0 args    o      ���� 0 t     ��  Z   
 K  ��    l  
  !���� ! C   
  " # " o   
 ���� 0 t   # m     $ $ � % %  q =��  ��    k    + & &  ' ( ' r     ) * ) b     + , + b     - . - b     / 0 / m     1 1 � 2 2 J h t t p s : / / w w w . g o o g l e . c o m / s e a r c h ? r l s = e n & 0 l    3���� 3 n     4 5 4 o    ���� 0 URL   5 o    ���� 0 args  ��  ��   . m     6 6 � 7 7  + , l    8���� 8 n     9 : 9 o    ���� 0 ENCODED_TEXT   : o    ���� 0 args  ��  ��   * o      ���� 0 u   (  ;�� ; r    + < = < I   )���� >
�� .LCxxldwpnull��� ��� null��   > �� ? @
�� 
murl ? o     !���� 0 u   @ �� A B
�� 
munm A m   " # C C � D D  D O C B R O W S E R B �� E��
�� 
dowt E m   $ %��
�� boovtrue��   = o      ���� 0 w  ��  ��     k   . K F F  G H G r   . ; I J I b   . 9 K L K b   . 5 M N M b   . 3 O P O m   . / Q Q � R R X h t t p s : / / w w w . g o o g l e . c o m / s e a r c h ? r l s = e n & q = s i t e : P l  / 2 S���� S n   / 2 T U T o   0 2���� 0 URL   U o   / 0���� 0 args  ��  ��   N m   3 4 V V � W W  + L l  5 8 X���� X n   5 8 Y Z Y o   6 8���� 0 ENCODED_TEXT   Z o   5 6���� 0 args  ��  ��   J o      ���� 0 u   H  [ \ [ r   < I ] ^ ] I  < G���� _
�� .LCxxldwpnull��� ��� null��   _ �� ` a
�� 
murl ` o   > ?���� 0 u   a �� b c
�� 
munm b m   @ A d d � e e  D O C B R O W S E R c �� f��
�� 
dowt f m   B C��
�� boovtrue��   ^ o      ���� 0 w   \  g h g l  J J��������  ��  ��   h  i�� i l  J J�� j k��   j Z T if you want to jump the the first link automatically, add "&btnI=I'm+Feeling+Lucky"    k � l l �   i f   y o u   w a n t   t o   j u m p   t h e   t h e   f i r s t   l i n k   a u t o m a t i c a l l y ,   a d d   " & b t n I = I ' m + F e e l i n g + L u c k y "��  ��    m      m m�                                                                                      @ alis    N  Macintosh HD                   BD ����LinCastor Browser.app                                          ����            ����  
 cu             Applications  %/:Applications:LinCastor Browser.app/   ,  L i n C a s t o r   B r o w s e r . a p p    M a c i n t o s h   H D  "Applications/LinCastor Browser.app  / ��     n�� n L   M O o o m   M N���� ��  ��       �� p q��   p ���� 0 
handle_url   q �� ���� r s���� 0 
handle_url  �� �� t��  t  ���� 0 args  ��   r ���������� 0 args  �� 0 t  �� 0 u  �� 0 w   s  m�� $ 1 6������ C������ Q V d�� 0 URL  �� 0 ENCODED_TEXT  
�� 
murl
�� 
munm
�� 
dowt�� 
�� .LCxxldwpnull��� ��� null�� P� I��,E�O��  ��,%�%��,%E�O*����e� E�Y ��,%�%��,%E�O*����e� E�OPUOk ascr  ��ޭ