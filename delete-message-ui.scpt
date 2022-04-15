FasdUAS 1.101.10   ��   ��    k             l     ��  ��    u o Converts the specified object - which may be of any type - into a string representation for logging/debugging.     � 	 	 �   C o n v e r t s   t h e   s p e c i f i e d   o b j e c t   -   w h i c h   m a y   b e   o f   a n y   t y p e   -   i n t o   a   s t r i n g   r e p r e s e n t a t i o n   f o r   l o g g i n g / d e b u g g i n g .   
  
 l     ��  ��    � � Tries hard to find a readable representation - sadly, simple conversion with `as text` mostly doesn't work with non-primitive types.     �  
   T r i e s   h a r d   t o   f i n d   a   r e a d a b l e   r e p r e s e n t a t i o n   -   s a d l y ,   s i m p l e   c o n v e r s i o n   w i t h   ` a s   t e x t `   m o s t l y   d o e s n ' t   w o r k   w i t h   n o n - p r i m i t i v e   t y p e s .      l     ��  ��    � � An attempt is made to list the properties of non-primitive types (does not always work), and the result is prefixed with the type (class) name     �     A n   a t t e m p t   i s   m a d e   t o   l i s t   t h e   p r o p e r t i e s   o f   n o n - p r i m i t i v e   t y p e s   ( d o e s   n o t   a l w a y s   w o r k ) ,   a n d   t h e   r e s u l t   i s   p r e f i x e d   w i t h   t h e   t y p e   ( c l a s s )   n a m e      l     ��  ��    1 + and, if present, the object's name and ID.     �   V   a n d ,   i f   p r e s e n t ,   t h e   o b j e c t ' s   n a m e   a n d   I D .      l     ��  ��      EXAMPLE     �      E X A M P L E      l     ��   !��     [ U       toString(path to desktop)  # -> "[alias] Macintosh HD:Users:mklement:Desktop:"    ! � " " �               t o S t r i n g ( p a t h   t o   d e s k t o p )     #   - >   " [ a l i a s ]   M a c i n t o s h   H D : U s e r s : m k l e m e n t : D e s k t o p : "   # $ # l     �� % &��   % V P To test this subroutine and see the various representations, use the following:    & � ' ' �   T o   t e s t   t h i s   s u b r o u t i n e   a n d   s e e   t h e   v a r i o u s   r e p r e s e n t a t i o n s ,   u s e   t h e   f o l l o w i n g : $  ( ) ( l     �� * +��   * � �   repeat with elem in {42, 3.14, "two", true, (current date), {"one", "two", "three"}, {one:1, two:"deux", three:false}, missing value, me,  path to desktop, front window of application (path to frontmost application as text)}    + � , ,�       r e p e a t   w i t h   e l e m   i n   { 4 2 ,   3 . 1 4 ,   " t w o " ,   t r u e ,   ( c u r r e n t   d a t e ) ,   { " o n e " ,   " t w o " ,   " t h r e e " } ,   { o n e : 1 ,   t w o : " d e u x " ,   t h r e e : f a l s e } ,   m i s s i n g   v a l u e ,   m e ,     p a t h   t o   d e s k t o p ,   f r o n t   w i n d o w   o f   a p p l i c a t i o n   ( p a t h   t o   f r o n t m o s t   a p p l i c a t i o n   a s   t e x t ) } )  - . - l     �� / 0��   / . (       log my toString(contents of elem)    0 � 1 1 P               l o g   m y   t o S t r i n g ( c o n t e n t s   o f   e l e m ) .  2 3 2 l     �� 4 5��   4     end repeat    5 � 6 6        e n d   r e p e a t 3  7 8 7 i      9 : 9 I      �� ;���� 0 tostring toString ;  <�� < o      ���� 0 anyobj anyObj��  ��   : k    < = =  > ? > q       @ @ �� A�� 0 i   A �� B�� 0 txt   B �� C�� 0 errmsg errMsg C �� D�� 0 orgtids orgTids D �� E�� 0 oname oName E �� F�� 
0 oid oId F ������ 
0 prefix  ��   ?  G H G r      I J I m      K K � L L   J o      ���� 0 txt   H  M N M Y    � O�� P Q�� O k    � R R  S T S Q    y U V W U Z    Z X Y�� Z X =    [ \ [ o    ���� 0 i   \ m    ����  Y Z    P ] ^�� _ ] =    ` a ` n     b c b m    ��
�� 
pcls c o    ���� 0 anyobj anyObj a m    ��
�� 
list ^ k    H d d  e f e r    8 g h g J    ' i i  j k j n   " l m l 1     "��
�� 
txdl m 1     ��
�� 
ascr k  n�� n J   " % o o  p�� p m   " # q q � r r  ,  ��  ��   h J       s s  t u t o      ���� 0 orgtids orgTids u  v�� v n      w x w 1   4 6��
�� 
txdl x 1   3 4��
�� 
ascr��   f  y z y r   9 B { | { b   9 @ } ~ } l  9 > ����  c   9 > � � � b   9 < � � � m   9 : � � � � �  { � o   : ;���� 0 anyobj anyObj � m   < =��
�� 
TEXT��  ��   ~ m   > ? � � � � �  } | o      ���� 0 txt   z  ��� � l  C H � � � � r   C H � � � o   C D���� 0 orgtids orgTids � n      � � � 1   E G��
�� 
txdl � 1   D E��
�� 
ascr �   '    � � � �    '��  ��   _ r   K P � � � c   K N � � � o   K L���� 0 anyobj anyObj � m   L M��
�� 
TEXT � o      ���� 0 txt  ��   Z r   S Z � � � c   S X � � � n   S V � � � 1   T V��
�� 
pALL � o   S T���� 0 anyobj anyObj � m   V W��
�� 
TEXT � o      ���� 0 txt   V R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   W k   b y � �  � � � l  b b�� � ���   � 3 - Trick for records and record-*like* objects:    � � � � Z   T r i c k   f o r   r e c o r d s   a n d   r e c o r d - * l i k e *   o b j e c t s : �  � � � l  b b�� � ���   � � � We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).    � � � �^   W e   e x p l o i t   t h e   f a c t   t h a t   t h e   e r r o r   m e s s a g e   c o n t a i n s   t h e   d e s i r e d   s t r i n g   r e p r e s e n t a t i o n   o f   t h e   r e c o r d ,   s o   w e   e x t r a c t   i t   f r o m   t h e r e .   T h i s   ( s t i l l )   w o r k s   a s   o f   A S   2 . 3   ( O S   X   1 0 . 9 ) . �  ��� � Q   b y � ��� � r   e p � � � I  e n�� ���
�� .sysoexecTEXT���     TEXT � b   e j � � � m   e f � � � � � , e g r e p   - o   ' \ { . * \ } '   < < <   � n   f i � � � 1   g i��
�� 
strq � o   f g���� 0 errmsg errMsg��   � o      ���� 0 txt   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   T  ��� � Z  z � � ����� � >  z  � � � o   z {���� 0 txt   � m   { ~ � � � � �   �  S   � ���  ��  ��  �� 0 i   P m    ����  Q m    	���� ��   N  � � � r   � � � � � m   � � � � � � �   � o      ���� 
0 prefix   �  � � � Z   �7 � ����� � F   � � � � � H   � � � � E  � � � � � J   � � � �  � � � m   � ���
�� 
ctxt �  � � � m   � ���
�� 
long �  � � � m   � ���
�� 
doub �  � � � m   � ���
�� 
bool �  � � � m   � ���
�� 
ldt  �  � � � m   � ���
�� 
list �  ��� � m   � ���
�� 
reco��   � n   � � � � � m   � ���
�� 
pcls � o   � ����� 0 anyobj anyObj � >  � � � � � o   � ����� 0 anyobj anyObj � m   � ���
�� 
msng � k   �3 � �  � � � r   � � � � � b   � � � � � m   � � � � � � �  [ � n   � � � � � m   � ���
�� 
pcls � o   � ����� 0 anyobj anyObj � o      ���� 
0 prefix   �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 oname oName �  � � � r   � � � � � m   � � � � � � �   � o      ���� 
0 oid oId �  � � � Q   � � ��� � k   � � � �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 anyobj anyObj � o      ���� 0 oname oName �  ��� � Z  � � � ����� � >  � �   o   � ����� 0 oname oName m   � ���
�� 
msng � r   � � b   � � b   � � b   � �	 o   � ����� 
0 prefix  	 m   � �

 �    n a m e = " o   � ����� 0 oname oName m   � � �  " o      ���� 
0 prefix  ��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  Q  +�� k  "  r   n  
 1  
��
�� 
ID   o  ���� 0 anyobj anyObj o      ���� 
0 oid oId �� Z "���� >  o  ���� 
0 oid oId m  ��
�� 
msng r   b   !  b  "#" o  ���� 
0 prefix  # m  $$ �%%    i d =! o  ���� 
0 oid oId o      ���� 
0 prefix  ��  ��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��   &�& r  ,3'(' b  ,1)*) o  ,-�~�~ 
0 prefix  * m  -0++ �,,  ]  ( o      �}�} 
0 prefix  �  ��  ��   � -�|- L  8<.. b  8;/0/ o  89�{�{ 
0 prefix  0 o  9:�z�z 0 txt  �|   8 121 l     �y�x�w�y  �x  �w  2 343 l     �v�u�t�v  �u  �t  4 5�s5 l    �6�r�q6 O     �787 O    �9:9 k    �;; <=< I   �p�o�n
�p .miscactvnull��� ��� null�o  �n  = >?> O    ~@A@ l   }BCDB k    }EE FGF I   $�mH�l
�m .ascrcmnt****      � ****H n    IJI I     �kK�j�k 0 tostring toStringK L�iL 1    �h
�h 
sbrl�i  �j  J  f    �l  G M�gM O   % }NON l  , |PQRP k   , |SS TUT I  , 8�fV�e
�f .ascrcmnt****      � ****V n  , 4WXW I   - 4�dY�c�d 0 tostring toStringY Z�bZ 1   - 0�a
�a 
sbrl�b  �c  X  f   , -�e  U [�`[ O   9 |\]\ l  @ {^_`^ k   @ {aa bcb I  @ E�_d�^
�_ .ascrcmnt****      � ****d m   @ Aee �ff  ( W r a p p e r V i e w )�^  c g�]g O   F {hih l  M zjklj k   M zmm non I  M R�\p�[
�\ .ascrcmnt****      � ****p m   M Nqq �rr @ C K C o n v e r s a t i o n L i s t C o l l e c t i o n V i e w�[  o s�Zs O   S ztut l  Z yv�Y�Xv O   Z ywxw l  a xy�W�Vy k   a xzz {|{ I  a k�U}�T
�U .ascrcmnt****      � ****} n  a g~~ I   b g�S��R�S 0 tostring toString� ��Q�  g   b c�Q  �R    f   a b�T  | ��P� I  l x�O��N
�O .ascrcmnt****      � ****� n  l t��� I   m t�M��L�M 0 tostring toString� ��K� 2  m p�J
�J 
sgrp�K  �L  �  f   l m�N  �P  �W  �V  x 4   Z ^�I�
�I 
sgrp� m   \ ]�H�H �Y  �X  u 4   S W�G�
�G 
sgrp� m   U V�F�F �Z  k ) # (CKConversationListCollectionView)   l ��� F   ( C K C o n v e r s a t i o n L i s t C o l l e c t i o n V i e w )i 4   F J�E�
�E 
sgrp� m   H I�D�D �]  _ $  (UIViewControllerWrapperView)   ` ��� <   ( U I V i e w C o n t r o l l e r W r a p p e r V i e w )] 4   9 =�C�
�C 
sgrp� m   ; <�B�B �`  Q #  (UINavigationTransitionView)   R ��� :   ( U I N a v i g a t i o n T r a n s i t i o n V i e w )O 4   % )�A�
�A 
sgrp� m   ' (�@�@ �g  C 5 / "Messages" main window (UILayoutContainerView)   D ��� ^   " M e s s a g e s "   m a i n   w i n d o w   ( U I L a y o u t C o n t a i n e r V i e w )A 4    �?�
�? 
cwin� m    �>�> ? ��� l   �=�<�;�=  �<  �;  � ��� r    ���� m    ��:
�: boovtrue� 1   � ��9
�9 
pisf� ��� n   � ���� 1   � ��8
�8 
pnam� 2   � ��7
�7 
splg� ��6� l  � ��5���5  � &   click menu "File" of menu bar 1   � ��� @   c l i c k   m e n u   " F i l e "   o f   m e n u   b a r   1�6  : 4    �4�
�4 
prcs� m    �� ���  M e s s a g e s8 m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �r  �q  �s       �3����3  � �2�1�2 0 tostring toString
�1 .aevtoappnull  �   � ****� �0 :�/�.���-�0 0 tostring toString�/ �,��, �  �+�+ 0 anyobj anyObj�.  � �*�)�(�'�&�%�$�#�* 0 anyobj anyObj�) 0 i  �( 0 txt  �' 0 errmsg errMsg�& 0 orgtids orgTids�% 0 oname oName�$ 
0 oid oId�# 
0 prefix  � $ K�"�!� � q� �� ���� ���� � ��������� � � ��
�$+
�" 
pcls
�! 
list
�  
ascr
� 
txdl
� 
cobj
� 
TEXT
� 
pALL� 0 errmsg errMsg�  
� 
strq
� .sysoexecTEXT���     TEXT�  
� 
ctxt
� 
long
� 
doub
� 
bool
� 
ldt 
� 
reco� 
� 
msng
� 
pnam
� 
ID  �-=�E�O �klkh  N�k  >��,�  .��,�kvlvE[�k/E�Z[�l/��,FZO�%�&�%E�O���,FY ��&E�Y 	��,�&E�W X   ���,%j E�W X  hO�a  Y h[OY��Oa E�Oa a a a a �a a v��,	 �a a & za ��,%E�Oa E�Oa E�O &�a ,E�O�a  �a %�%a  %E�Y hW X  hO "�a !,E�O�a  �a "%�%E�Y hW X  hO�a #%E�Y hO��%� ����
���	
� .aevtoappnull  �   � ****� k     ��� 5��  �  �
  �  � ���������eq� ����
� 
prcs
� .miscactvnull��� ��� null
� 
cwin
� 
sbrl� 0 tostring toString
� .ascrcmnt****      � ****
� 
sgrp
�  
pisf
�� 
splg
�� 
pnam�	 �� �*��/ �*j O*�k/ g)*�,k+ j O*�k/ R)*�,k+ j O*�k/ =�j O*�k/ /�j O*�k/ !*�k/ )*k+ j O)*�-k+ j UUUUUUOe*�,FO*�-�,EOPUUascr  ��ޭ