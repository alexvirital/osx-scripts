FasdUAS 1.101.10   ��   ��    k             l     ��  ��    !  The Advisory Board Company     � 	 	 6   T h e   A d v i s o r y   B o a r d   C o m p a n y   
  
 l     ��  ��    #  Drive Connection application     �   :   D r i v e   C o n n e c t i o n   a p p l i c a t i o n      l     ��  ��      Alex Merenyi, 12/20/2013     �   2   A l e x   M e r e n y i ,   1 2 / 2 0 / 2 0 1 3      l     ��  ��      v 1.3     �      v   1 . 3      l     ��  ��      update from 1.2     �       u p d a t e   f r o m   1 . 2      l     ��   !��       fixed VPN knowledge    ! � " " (   f i x e d   V P N   k n o w l e d g e   # $ # l     �� % &��   %   update from v1.0    & � ' ' "   u p d a t e   f r o m   v 1 . 0 $  ( ) ( l     �� * +��   * . ( added notification center functionality    + � , , P   a d d e d   n o t i f i c a t i o n   c e n t e r   f u n c t i o n a l i t y )  - . - l     �� / 0��   /   update from v0.3    0 � 1 1 "   u p d a t e   f r o m   v 0 . 3 .  2 3 2 l     �� 4 5��   4 K E added intelligence to test for 10.6 and map l/x differently (no DFS)    5 � 6 6 �   a d d e d   i n t e l l i g e n c e   t o   t e s t   f o r   1 0 . 6   a n d   m a p   l / x   d i f f e r e n t l y   ( n o   D F S ) 3  7 8 7 l     �� 9 :��   9   released to firm    : � ; ; "   r e l e a s e d   t o   f i r m 8  < = < l     �� > ?��   >   Update from v.0.2    ? � @ @ $   U p d a t e   f r o m   v . 0 . 2 =  A B A l     �� C D��   C J D Genericised and added variables to make the script easier to modify    D � E E �   G e n e r i c i s e d   a n d   a d d e d   v a r i a b l e s   t o   m a k e   t h e   s c r i p t   e a s i e r   t o   m o d i f y B  F G F l     �� H I��   H   Updates from v0.1:    I � J J &   U p d a t e s   f r o m   v 0 . 1 : G  K L K l     �� M N��   M "  accounts for VPN connection    N � O O 8   a c c o u n t s   f o r   V P N   c o n n e c t i o n L  P Q P l     �� R S��   R "  clarified language on error    S � T T 8   c l a r i f i e d   l a n g u a g e   o n   e r r o r Q  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y * $ Modify these variables per script.     Z � [ [ H   M o d i f y   t h e s e   v a r i a b l e s   p e r   s c r i p t .   X  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   ` P J This should be an IP that is only reachable if the share can be mounted.     a � b b �   T h i s   s h o u l d   b e   a n   I P   t h a t   i s   o n l y   r e a c h a b l e   i f   t h e   s h a r e   c a n   b e   m o u n t e d .   _  c d c l     e���� e r      f g f m      h h � i i  1 0 . 1 0 . 1 0 . 2 5 0 g o      ���� 0 internal_pdc_check  ��  ��   d  j k j l     ��������  ��  ��   k  l m l l     �� n o��   n + % This is the share you want to mount.    o � p p J   T h i s   i s   t h e   s h a r e   y o u   w a n t   t o   m o u n t . m  q r q l    s���� s r     t u t m     v v � w w 8 s m b : / / a d v i s o r y . c o m / t e m p / x f e r u o      ���� 0 drive_to_map  ��  ��   r  x y x l     ��������  ��  ��   y  z { z l     �� | }��   | ; 5 This is the share letter you want shown to the User.    } � ~ ~ j   T h i s   i s   t h e   s h a r e   l e t t e r   y o u   w a n t   s h o w n   t o   t h e   U s e r . {   �  l    ����� � r     � � � m    	 � � � � �  X : / � o      ���� 0 drive_letter  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 This is what the name of the disk is in /Volumes.    � � � � d   T h i s   i s   w h a t   t h e   n a m e   o f   t h e   d i s k   i s   i n   / V o l u m e s . �  � � � l    ����� � r     � � � m     � � � � �  t e m p � o      ���� 0 dfs_volume_to_check  ��  ��   �  � � � l    ����� � r     � � � m     � � � � �  t e m p � o      ���� 0 nondfs_volume_to_check  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , -------DO NOT MODIFY BELOW THIS LINE ------    � � � � X   - - - - - - - D O   N O T   M O D I F Y   B E L O W   T H I S   L I N E   - - - - - - �  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � l    ����� � I   �� ���
�� .sysoexecTEXT���     TEXT � m     � � � � � : s w _ v e r s   |   g r e p   P r o d u c t V e r s i o n��  ��  ��   � o      ���� 
0 os_ver  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   7 ����� � Q    7 � � � � k    , � �  � � � I   (�� ���
�� .sysoexecTEXT���     TEXT � b    $ � � � b    " � � � m      � � � � � 
 e c h o   � o     !���� 
0 os_ver   � m   " # � � � � �    |   g r e p   1 0 . 6��   �  ��� � r   ) , � � � m   ) *��
�� boovfals � o      ���� 0 dfs  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � r   4 7 � � � m   4 5��
�� boovtrue � o      ���� 0 dfs  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  8 U ����� � Z   8 U � ��� � � =  8 A � � � n   8 ? � � � 1   ; ?��
�� 
prun � m   8 ; � �.                                                                                      @ alis    �  Macintosh HD               ΁|�H+   dWCisco AnyConnect Sec#166467.app                                 dġ:�        ����  	                Cisco     ΁��      ̇s/     dW   c  AMacintosh HD:Applications: Cisco: Cisco AnyConnect Sec#166467.app   X + C i s c o   A n y C o n n e c t   S e c u r e   M o b i l i t y   C l i e n t . a p p    M a c i n t o s h   H D  >Applications/Cisco/Cisco AnyConnect Secure Mobility Client.app  / ��   � m   ? @��
�� boovtrue � r   D K � � � m   D G � � � � �  T r u e � o      ���� 0 vpn_running  ��   � r   N U � � � m   N Q � � � � � 
 F a l s e � o      ���� 0 vpn_running  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  VD ����� � Q   VD � � � � k   Y! � �  � � � I  Y b�� ���
�� .sysoexecTEXT���     TEXT � b   Y ^ � � � m   Y \ � � � � �  p i n g   - c     1   � o   \ ]���� 0 internal_pdc_check  ��   �  ��� � O   c! � � � Z   i  � ��� � � I  i s�� ���
�� .coredoexbool        obj  � 4   i o�� �
�� 
cdis � o   m n���� 0 dfs_volume_to_check  ��   � I  v ��� ���
�� .miscmvisnull���    obj  � 4   v |�� �
�� 
cdis � o   z {���� 0 dfs_volume_to_check  ��  ��   � Z   �  � ��� � � =  � � � � � o   � ����� 0 vpn_running   � m   � � � � � � �  T r u e � k   � � � �  � � � I  � ��� ��
�� .sysonotfnull��� ��� TEXT  b   � � b   � � m   � � �  C o n n e c t i n g   t o   o   � ����� 0 drive_letter   m   � � � |   D r i v e   o v e r   t h e   V P N   c o n n e c t i o n .   T h i s   m a y   t a k e   s e v e r a l   m o m e n t s .��   � 	��	 Z   � �
��
 =  � � o   � ����� 0 dfs   m   � ���
�� boovtrue k   � �  I  � �����
�� .aevtmvolnull���     TEXT o   � ����� 0 drive_to_map  ��    I  � �����
�� .sysodelanull��� ��� nmbr m   � ��� 
��   �~ I  � ��}�|
�} .miscmvisnull���    obj  4   � ��{
�{ 
cdis o   � ��z�z 0 dfs_volume_to_check  �|  �~  ��   k   � �  I  � ��y�x
�y .aevtmvolnull���     TEXT o   � ��w�w 0 nondfs_drive_to_map  �x    I  � ��v�u
�v .sysodelanull��� ��� nmbr m   � ��t�t 
�u    �s  I  � ��r!�q
�r .miscmvisnull���    obj ! 4   � ��p"
�p 
cdis" o   � ��o�o 0 nondfs_volume_to_check  �q  �s  ��  ��   � k   � ## $%$ I  � ��n&�m
�n .sysonotfnull��� ��� TEXT& b   � �'(' b   � �)*) m   � �++ �,,  C o n n e c t i n g   t o  * o   � ��l�l 0 drive_letter  ( m   � �-- �.. V   D r i v e .   T h e   d r i v e   w i l l   o p e n   w h e n   c o n n e c t e d .�m  % /�k/ Z   � 01�j20 =  � �343 o   � ��i�i 0 dfs  4 m   � ��h
�h boovtrue1 k   �55 676 I  � ��g8�f
�g .aevtmvolnull���     TEXT8 o   � ��e�e 0 drive_to_map  �f  7 9:9 I  � ��d;�c
�d .sysodelanull��� ��� nmbr; m   � ��b�b �c  : <�a< I  ��`=�_
�` .miscmvisnull���    obj = 4   ��^>
�^ 
cdis> o   � �]�] 0 dfs_volume_to_check  �_  �a  �j  2 k   ?? @A@ I �\B�[
�\ .aevtmvolnull���     TEXTB o  	�Z�Z 0 drive_to_map  �[  A CDC I �YE�X
�Y .sysodelanull��� ��� nmbrE m  �W�W �X  D F�VF I  �UG�T
�U .miscmvisnull���    obj G 4  �SH
�S 
cdisH o  �R�R 0 nondfs_volume_to_check  �T  �V  �k   � m   c fII�                                                                                  MACS  alis    t  Macintosh HD               ΁|�H+     A
Finder.app                                                      %O�`�        ����  	                CoreServices    ΁��      �`D       A   >   =  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��   � R      �Q�P�O
�Q .ascrerr ****      � ****�P  �O   � k  )DJJ KLK I )>�NMN
�N .sysonotfnull��� ��� TEXTM b  )2OPO b  ).QRQ m  ),SS �TT ( E r r o r   c o n n e c t i n g   t o  R o  ,-�M�M 0 drive_letter  P m  .1UU �VV � .   P l e a s e   m a k e   s u r e   y o u   a r e   c o n n e c t e d   t o   t h e   A d v i s o r y   B o a r d   n e t w o r k .N �LW�K
�L 
apprW b  5:XYX m  58ZZ �[[ * C o n n e c t i o n   f a i l e d   t o  Y o  89�J�J 0 drive_letter  �K  L \�I\ I ?D�H]�G
�H .sysodelanull��� ��� nmbr] m  ?@�F�F �G  �I  ��  ��  ��       �E^_�E  ^ �D
�D .aevtoappnull  �   � ****_ �C`�B�Aab�@
�C .aevtoappnull  �   � ****` k    Dcc  cdd  qee  ff  �gg  �hh  �ii  �jj  �kk  ��?�?  �B  �A  a  b + h�> v�= ��< ��; ��: ��9�8 � ��7�6�5 ��4 ��3 � �I�2�1�0 ��/�.�-�,�++-�*SU�)Z�> 0 internal_pdc_check  �= 0 drive_to_map  �< 0 drive_letter  �; 0 dfs_volume_to_check  �: 0 nondfs_volume_to_check  
�9 .sysoexecTEXT���     TEXT�8 
0 os_ver  �7 0 dfs  �6  �5  
�4 
prun�3 0 vpn_running  
�2 
cdis
�1 .coredoexbool        obj 
�0 .miscmvisnull���    obj 
�/ .sysonotfnull��� ��� TEXT
�. .aevtmvolnull���     TEXT�- 

�, .sysodelanull��� ��� nmbr�+ 0 nondfs_drive_to_map  �* 
�) 
appr�@E�E�O�E�O�E�O�E�O�E�O�j E�O ��%�%j OfE�W 
X  eE�Oa a ,e  a E` Y 	a E` O �a �%j Oa  �*a �/j  *a �/j Y �_ a   Na �%a %j O�e  �j  Oa !j "O*a �/j Y _ #j  Oa !j "O*a �/j Y Ia $�%a %%j O�e  �j  Oa &j "O*a �/j Y �j  Oa &j "O*a �/j UW "X  a '�%a (%a )a *�%l Okj " ascr  ��ޭ