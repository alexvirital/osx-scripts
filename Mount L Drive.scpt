FasdUAS 1.101.10   ��   ��    k             l     ��  ��    !  The Advisory Board Company     � 	 	 6   T h e   A d v i s o r y   B o a r d   C o m p a n y   
  
 l     ��  ��    #  Drive Connection application     �   :   D r i v e   C o n n e c t i o n   a p p l i c a t i o n      l     ��  ��      Alex Merenyi, 12/20/2013     �   2   A l e x   M e r e n y i ,   1 2 / 2 0 / 2 0 1 3      l     ��  ��      v 1.1     �      v   1 . 1      l     ��  ��      update from v1.0     �   "   u p d a t e   f r o m   v 1 . 0      l     ��   !��     . ( added notification center functionality    ! � " " P   a d d e d   n o t i f i c a t i o n   c e n t e r   f u n c t i o n a l i t y   # $ # l     �� % &��   %   update from v0.3    & � ' ' "   u p d a t e   f r o m   v 0 . 3 $  ( ) ( l     �� * +��   * K E added intelligence to test for 10.6 and map l/x differently (no DFS)    + � , , �   a d d e d   i n t e l l i g e n c e   t o   t e s t   f o r   1 0 . 6   a n d   m a p   l / x   d i f f e r e n t l y   ( n o   D F S ) )  - . - l     �� / 0��   /   released to firm    0 � 1 1 "   r e l e a s e d   t o   f i r m .  2 3 2 l     �� 4 5��   4   Update from v.0.2    5 � 6 6 $   U p d a t e   f r o m   v . 0 . 2 3  7 8 7 l     �� 9 :��   9 J D Genericised and added variables to make the script easier to modify    : � ; ; �   G e n e r i c i s e d   a n d   a d d e d   v a r i a b l e s   t o   m a k e   t h e   s c r i p t   e a s i e r   t o   m o d i f y 8  < = < l     �� > ?��   >   Updates from v0.1:    ? � @ @ &   U p d a t e s   f r o m   v 0 . 1 : =  A B A l     �� C D��   C "  accounts for VPN connection    D � E E 8   a c c o u n t s   f o r   V P N   c o n n e c t i o n B  F G F l     �� H I��   H "  clarified language on error    I � J J 8   c l a r i f i e d   l a n g u a g e   o n   e r r o r G  K L K l     ��������  ��  ��   L  M N M l     �� O P��   O * $ Modify these variables per script.     P � Q Q H   M o d i f y   t h e s e   v a r i a b l e s   p e r   s c r i p t .   N  R S R l     ��������  ��  ��   S  T U T l     �� V W��   V P J This should be an IP that is only reachable if the share can be mounted.     W � X X �   T h i s   s h o u l d   b e   a n   I P   t h a t   i s   o n l y   r e a c h a b l e   i f   t h e   s h a r e   c a n   b e   m o u n t e d .   U  Y Z Y l     [���� [ r      \ ] \ m      ^ ^ � _ _  1 0 . 1 0 . 1 0 . 2 5 0 ] o      ���� 0 internal_pdc_check  ��  ��   Z  ` a ` l     ��������  ��  ��   a  b c b l     �� d e��   d + % This is the share you want to mount.    e � f f J   T h i s   i s   t h e   s h a r e   y o u   w a n t   t o   m o u n t . c  g h g l    i���� i r     j k j m     l l � m m 0 s m b : / / a d v i s o r y . c o m / f i l e s k o      ���� 0 drive_to_map  ��  ��   h  n o n l     ��������  ��  ��   o  p q p l     �� r s��   r ; 5 This is the share letter you want shown to the User.    s � t t j   T h i s   i s   t h e   s h a r e   l e t t e r   y o u   w a n t   s h o w n   t o   t h e   U s e r . q  u v u l    w���� w r     x y x m    	 z z � { {  L : / y o      ���� 0 drive_letter  ��  ��   v  | } | l     ��������  ��  ��   }  ~  ~ l     �� � ���   � 8 2 This is what the name of the disk is in /Volumes.    � � � � d   T h i s   i s   w h a t   t h e   n a m e   o f   t h e   d i s k   i s   i n   / V o l u m e s .   � � � l    ����� � r     � � � m     � � � � � 
 f i l e s � o      ���� 0 dfs_volume_to_check  ��  ��   �  � � � l    ����� � r     � � � m     � � � � � 
 f i l e s � o      ���� 0 nondfs_volume_to_check  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , -------DO NOT MODIFY BELOW THIS LINE ------    � � � � X   - - - - - - - D O   N O T   M O D I F Y   B E L O W   T H I S   L I N E   - - - - - - �  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � l    ����� � I   �� ���
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
cdis � o   z {���� 0 dfs_volume_to_check  ��  ��   � Z   �  � ��� � � =  � � � � � o   � ����� 0 vpn_running   � m   � � � � � � �  T r u e � k   � � � �  � � � I  � ��� ���
�� .sysonotfnull��� ��� TEXT � b   � � � � � b   � � � � � m   � � � � � � �  C o n n e c t i n g   t o   � o   � ����� 0 drive_letter   � m   � � � � � � � |   D r i v e   o v e r   t h e   V P N   c o n n e c t i o n .   T h i s   m a y   t a k e   s e v e r a l   m o m e n t s .��   �  ��� � Z   � � ��  =  � � o   � ����� 0 dfs   m   � ���
�� boovtrue k   � �  I  � �����
�� .aevtmvolnull���     TEXT o   � ����� 0 drive_to_map  ��   	
	 I  � �����
�� .sysodelanull��� ��� nmbr m   � ����� 
��  
 �� I  � ���~
� .miscmvisnull���    obj  4   � ��}
�} 
cdis o   � ��|�| 0 dfs_volume_to_check  �~  ��  ��   k   � �  I  � ��{�z
�{ .aevtmvolnull���     TEXT o   � ��y�y 0 nondfs_drive_to_map  �z    I  � ��x�w
�x .sysodelanull��� ��� nmbr m   � ��v�v 
�w   �u I  � ��t�s
�t .miscmvisnull���    obj  4   � ��r
�r 
cdis o   � ��q�q 0 nondfs_volume_to_check  �s  �u  ��  ��   � k   �   I  � ��p�o
�p .sysonotfnull��� ��� TEXT b   � � b   � �  m   � �!! �""  C o n n e c t i n g   t o    o   � ��n�n 0 drive_letter   m   � �## �$$ V   D r i v e .   T h e   d r i v e   w i l l   o p e n   w h e n   c o n n e c t e d .�o   %�m% Z   � &'�l(& =  � �)*) o   � ��k�k 0 dfs  * m   � ��j
�j boovtrue' k   �++ ,-, I  � ��i.�h
�i .aevtmvolnull���     TEXT. o   � ��g�g 0 drive_to_map  �h  - /0/ I  � ��f1�e
�f .sysodelanull��� ��� nmbr1 m   � ��d�d �e  0 2�c2 I  ��b3�a
�b .miscmvisnull���    obj 3 4   ��`4
�` 
cdis4 o   � �_�_ 0 dfs_volume_to_check  �a  �c  �l  ( k   55 676 I �^8�]
�^ .aevtmvolnull���     TEXT8 o  	�\�\ 0 drive_to_map  �]  7 9:9 I �[;�Z
�[ .sysodelanull��� ��� nmbr; m  �Y�Y �Z  : <�X< I  �W=�V
�W .miscmvisnull���    obj = 4  �U>
�U 
cdis> o  �T�T 0 nondfs_volume_to_check  �V  �X  �m   � m   c f??�                                                                                  MACS  alis    t  Macintosh HD               ΁|�H+     A
Finder.app                                                      %O�`�        ����  	                CoreServices    ΁��      �`D       A   >   =  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��   � R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q   � k  )D@@ ABA I )>�PCD
�P .sysonotfnull��� ��� TEXTC b  )2EFE b  ).GHG m  ),II �JJ ( E r r o r   c o n n e c t i n g   t o  H o  ,-�O�O 0 drive_letter  F m  .1KK �LL � .   P l e a s e   m a k e   s u r e   y o u   a r e   c o n n e c t e d   t o   t h e   A d v i s o r y   B o a r d   n e t w o r k .D �NM�M
�N 
apprM b  5:NON m  58PP �QQ * C o n n e c t i o n   f a i l e d   t o  O o  89�L�L 0 drive_letter  �M  B R�KR I ?D�JS�I
�J .sysodelanull��� ��� nmbrS m  ?@�H�H �I  �K  ��  ��  ��       �GTU ^ l z � �V�F ��E�D�C�B�A�@�?�G  T �>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/
�> .aevtoappnull  �   � ****�= 0 internal_pdc_check  �< 0 drive_to_map  �; 0 drive_letter  �: 0 dfs_volume_to_check  �9 0 nondfs_volume_to_check  �8 
0 os_ver  �7 0 dfs  �6 0 vpn_running  �5  �4  �3  �2  �1  �0  �/  U �.W�-�,XY�+
�. .aevtoappnull  �   � ****W k    DZZ  Y[[  g\\  u]]  �^^  �__  �``  �aa  �bb  ��*�*  �-  �,  X  Y + ^�) l�( z�' ��& ��% ��$�# � ��"�!�  �� �� � �?��� � � ������!#�IK�P�) 0 internal_pdc_check  �( 0 drive_to_map  �' 0 drive_letter  �& 0 dfs_volume_to_check  �% 0 nondfs_volume_to_check  
�$ .sysoexecTEXT���     TEXT�# 
0 os_ver  �" 0 dfs  �!  �   
� 
prun� 0 vpn_running  
� 
cdis
� .coredoexbool        obj 
� .miscmvisnull���    obj 
� .sysonotfnull��� ��� TEXT
� .aevtmvolnull���     TEXT� 

� .sysodelanull��� ��� nmbr� 0 nondfs_drive_to_map  � 
� 
appr�+E�E�O�E�O�E�O�E�O�E�O�j E�O ��%�%j OfE�W 
X  eE�Oa a ,e  a E` Y 	a E` O �a �%j Oa  �*a �/j  *a �/j Y �_ a   Na �%a %j O�e  �j  Oa !j "O*a �/j Y _ #j  Oa !j "O*a �/j Y Ia $�%a %%j O�e  �j  Oa &j "O*a �/j Y �j  Oa &j "O*a �/j UW "X  a '�%a (%a )a *�%l Okj "V �cc , P r o d u c t V e r s i o n : 	 1 0 . 9 . 1
�F boovtrue�E  �D  �C  �B  �A  �@  �?   ascr  ��ޭ