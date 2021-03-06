FasdUAS 1.101.10   ��   ��    k             l     ��  ��    "  Generate task for Omnifocus     � 	 	 8   G e n e r a t e   t a s k   f o r   O m n i f o c u s   
  
 l     ��  ��    . ( Generate n more tasks for selected task     �   P   G e n e r a t e   n   m o r e   t a s k s   f o r   s e l e c t e d   t a s k      l     ��  ��      Jason Niu, Apr. 2017     �   *   J a s o n   N i u ,   A p r .   2 0 1 7      l     ��  ��    K E This script is inspired by Bill Palmer's Ebbinghaus review scheduler     �   �   T h i s   s c r i p t   i s   i n s p i r e d   b y   B i l l   P a l m e r ' s   E b b i n g h a u s   r e v i e w   s c h e d u l e r      l     ��  ��    a [ Assume the task has the pattern of "A num", will generate "A num + 1".... "A num + nTasks"     �   �   A s s u m e   t h e   t a s k   h a s   t h e   p a t t e r n   o f   " A   n u m " ,   w i l l   g e n e r a t e   " A   n u m   +   1 " . . . .   " A   n u m   +   n T a s k s "      l     ��������  ��  ��       !   l      " # $ " j     �� %�� *0 previewdaysuntildue pReviewDaysUntilDue % m     ����  # 5 / allow two days after start date for completion    $ � & & ^   a l l o w   t w o   d a y s   a f t e r   s t a r t   d a t e   f o r   c o m p l e t i o n !  ' ( ' l      ) * + ) j    �� ,�� 0 	pautosave 	pAutoSave , m    ��
�� boovfals * F @ set this to false for faster performance but slightly more risk    + � - - �   s e t   t h i s   t o   f a l s e   f o r   f a s t e r   p e r f o r m a n c e   b u t   s l i g h t l y   m o r e   r i s k (  . / . j    �� 0�� 0 ntasks nTasks 0 m    ����  /  1 2 1 l     ��������  ��  ��   2  3 4 3 i   	  5 6 5 I      �� 7���� 0 processaction ProcessAction 7  8 9 8 o      ���� 0 	selaction 	selAction 9  : ; : o      ���� 0 
dstproject 
dstProject ;  <�� < o      ���� 0 	datetoday 	dateToday��  ��   6 k     � = =  > ? > q       @ @ �� A�� 0 	startdate 	startDate A �� B�� 0 duedate dueDate B �� C�� 0 i   C �� D�� 0 
datetoday0 
dateToday0 D �� E�� 0 num   E ������ 0 newname newName��   ?  F�� F O     � G H G k    � I I  J K J I   �� L��
�� .ascrcmnt****      � **** L l    M���� M e     N N n     O P O 1   	 ��
�� 
pnam P o    	���� 0 	selaction 	selAction��  ��  ��   K  Q R Q I   �� S��
�� .ascrcmnt****      � **** S l    T���� T e     U U n     V W V 1    ��
�� 
pnam W o    ���� 0 
dstproject 
dstProject��  ��  ��   R  X Y X r     Z [ Z l    \���� \ n     ] ^ ] 1    ��
�� 
pnam ^ o    ���� 0 	selaction 	selAction��  ��   [ o      ���� 0 oldname oldName Y  _ ` _ I    .�� a��
�� .ascrcmnt****      � **** a J     * b b  c d c n     $ e f e 4  ! $�� g
�� 
cwor g m   " #����  f o     !���� 0 oldname oldName d  h�� h n   $ ( i j i 4  % (�� k
�� 
cwor k m   & '������ j o   $ %���� 0 oldname oldName��  ��   `  l m l l  / /��������  ��  ��   m  n o n O   / 5 p q p k   3 3 r r  s t s l  3 3�� u v��   u ! get properties of selAction    v � w w 6 g e t   p r o p e r t i e s   o f   s e l A c t i o n t  x�� x l  3 3�� y z��   y  get name of selAction    z � { { * g e t   n a m e   o f   s e l A c t i o n��   q  f   / 0 o  | } | l  6 6�� ~ ��   ~  get name of selAction     � � � * g e t   n a m e   o f   s e l A c t i o n }  � � � l  6 6�� � ���   �   get name of archiveProject    � � � � 4 g e t   n a m e   o f   a r c h i v e P r o j e c t �  � � � r   6 9 � � � o   6 7���� 0 	datetoday 	dateToday � o      ���� 0 
datetoday0 
dateToday0 �  � � � Y   : � ��� � ��� � k   H � � �  � � � l  H H�� � ���   � ) # print (length of pReviewIntervals)    � � � � F   p r i n t   ( l e n g t h   o f   p R e v i e w I n t e r v a l s ) �  � � � l  H H�� � ���   �   log (dateToday)    � � � �     l o g   ( d a t e T o d a y ) �  � � � l  H H�� � ���   � ) # tell selAction to log {note, name}    � � � � F   t e l l   s e l A c t i o n   t o   l o g   { n o t e ,   n a m e } �  � � � r   H T � � � I  H R�� � �
�� .coreclon****      � **** � o   H I���� 0 	selaction 	selAction � �� ���
�� 
insh � n   J N � � �  ;   M N � n   J M � � � 2  K M��
�� 
FCac � o   J K���� 0 
dstproject 
dstProject��   � o      ���� 0 	newaction 	newAction �  � � � Z  U e � ����� � =  U X � � � o   U V���� 0 	newaction 	newAction � m   V W��
�� 
null � n  [ a � � � I   \ a�� ����� 0 die   �  ��� � m   \ ] � � � � � h S o r r y ,   s o m e t h i n g   w e n t   w r o n g   w h i l e   c o p y i n g   t h i s   t a s k .��  ��   �  f   [ \��  ��   �  � � � Z  f w � ����� � =  f k � � � n   f i � � � 1   g i��
�� 
FCcd � o   f g���� 0 	selaction 	selAction � m   i j��
�� boovtrue � r   n s � � � n   n q � � � 1   o q��
�� 
FCdc � o   n o���� 0 	selaction 	selAction � o      ���� 0 	datetoday 	dateToday��  ��   �  � � � l  x x�� � ���   �   get dateToday    � � � �    g e t   d a t e T o d a y �  � � � l  x x��������  ��  ��   �  � � � l  x x�� � ���   � "  log (get name of selAction)    � � � � 8   l o g   ( g e t   n a m e   o f   s e l A c t i o n ) �  � � � l  x x��������  ��  ��   �  � � � r   x � � � � b   x � � � � b   x ~ � � � n   x | � � � 4  y |�� �
�� 
cwor � m   z {����  � o   x y���� 0 oldname oldName � m   | } � � � � �    � l  ~ � ����� � [   ~ � � � � l  ~ � ����� � n   ~ � � � � 4   ��� �
�� 
cwor � m   � ������� � o   ~ ���� 0 oldname oldName��  ��   � o   � ����� 0 i  ��  ��   � o      ���� 0 newname newName �  � � � l  � ��� � ���   �   log newName    � � � �    l o g   n e w N a m e �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � [   � � � � � o   � ����� 0 	datetoday 	dateToday � ]   � � � � � l  � � ����� � ]   � � � � � o   � ����� 0 i   � m   � ����� ��  ��   � 1   � ���
�� 
days � o      ���� 0 	startdate 	startDate �  � � � l  � ��������  ��  �   �  � � � l  � ��~ � ��~   �   log startDate    � � � �    l o g   s t a r t D a t e �  � � � r   � � �  � [   � � o   � ��}�} 0 	startdate 	startDate ]   � � o   � ��|�| *0 previewdaysuntildue pReviewDaysUntilDue 1   � ��{
�{ 
days  o      �z�z 0 duedate dueDate �  l  � ��y�y    log dueDate    �		  l o g   d u e D a t e 

 l  � � O  � � r   � � J   � �  o   � ��x�x 0 newname newName  o   � ��w�w 0 	startdate 	startDate  o   � ��v�v 0 duedate dueDate �u m   � ��t
�t boovfals�u   J        1   � ��s
�s 
pnam  1   � ��r
�r 
FCDs  !  1   � ��q
�q 
FCDd! "�p" 1   � ��o
�o 
FCcd�p   o   � ��n�n 0 	newaction 	newAction K E if user already completed original, we need to make duplicate active    �## �   i f   u s e r   a l r e a d y   c o m p l e t e d   o r i g i n a l ,   w e   n e e d   t o   m a k e   d u p l i c a t e   a c t i v e $�m$ r   � �%&% o   � ��l�l 0 
datetoday0 
dateToday0& o      �k�k 0 	datetoday 	dateToday�m  �� 0 i   � m   = >�j�j  � o   > C�i�i 0 ntasks nTasks��   � '�h' l  � ��g�f�e�g  �f  �e  �h   H 5     �d(�c
�d 
capp( m    )) �**  O F O C
�c kfrmID  ��   4 +,+ l     �b�a�`�b  �a  �`  , -�_- i    ./. I     �^0�]
�^ .aevtoappnull  �   � ****0 J      �\�\  �]  / k    :11 232 q      44 �[�Z�[ 0 
dstproject 
dstProject�Z  3 565 r     787 \     9:9 l    ;�Y�X; I    �W�V�U
�W .misccurdldt    ��� null�V  �U  �Y  �X  : l   <�T�S< n    =>= 1   
 �R
�R 
time> l   
?�Q�P? I   
�O�N�M
�O .misccurdldt    ��� null�N  �M  �Q  �P  �T  �S  8 o      �L�L 0 	datetoday 	dateToday6 @�K@ O   :ABA k   9CC DED O    �FGF k   ! �HH IJI X   ! �K�JLK k   8 �MM NON r   8 PPQP l  8 LR�I�HR 6 8 LSTS n   8 =UVU 1   ; =�G
�G 
valLV n   8 ;WXW 2  9 ;�F
�F 
OTstX o   8 9�E�E 0 opanel oPanelT =  > KYZY n   ? E[\[ m   A E�D
�D 
pcls\ n  ? A]^] 1   ? A�C
�C 
valL^  g   ? ?Z m   F J�B
�B 
FCpr�I  �H  Q o      �A�A 0 lstproj lstProjO _`_ r   Q \aba n   Q Xcdc 1   T X�@
�@ 
lengd o   Q T�?�? 0 lstproj lstProjb o      �>�> 0 lngproj lngProj` efe Z  ] jgh�=�<g ?   ] biji o   ] `�;�; 0 lngproj lngProjj m   ` a�:�:  h  S   e f�=  �<  f k�9k r   k �lml l  k n�8�7n 6 k opo n   k pqrq 1   n p�6
�6 
valLr n   k nsts 2  l n�5
�5 
OTstt o   k l�4�4 0 opanel oPanelp =  q ~uvu n   r xwxw m   t x�3
�3 
pclsx n  r tyzy 1   r t�2
�2 
valLz  g   r rv m   y }�1
�1 
FCpr�8  �7  m o      �0�0 0 dstproject0 dstProject0�9  �J 0 opanel oPanelL J   $ ,{{ |}| 1   $ '�/
�/ 
FCcn} ~�.~ 1   ' *�-
�- 
FCSt�.  J �, Z  � ����+�*� A   � ���� o   � ��)�) 0 lngproj lngProj� m   � ��(�( � L   � ��'�'  �+  �*  �,  G n    ��� 4   �&�
�& 
FCdw� m    �%�% � 1    �$
�$ 
FCDoE ��� l  � ��#�"�!�#  �"  �!  � ��� r   � ���� l  � ��� �� n   � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 0 lstproj lstProj�   �  � o      �� 0 
dstproject 
dstProject� ��� l  � �����  �  �  � ��� l  � �����  �   log pReviewProject   � ��� &   l o g   p R e v i e w P r o j e c t� ��� l  � �����  �   log dstProject   � ���    l o g   d s t P r o j e c t� ��� l  � �����  �  �  � ��� O   �9��� k   �8�� ��� O   � ���� k   � ��� ��� r   � ���� n   � ���� 1   � ��
� 
valL� l  � ����� 6 � ���� 2  � ��
� 
OTst� =  � ���� n   � ���� m   � ��
� 
pcls� n  � ���� 1   � ��
� 
valL�  g   � �� m   � ��
� 
FCac�  �  � o      �
�
 0 lstselected lstSelected� ��� l  � ��	���	  � 
  ??    � ���    ? ?  � ��� l  � �����  � a [ set dstProject0 to value of (selected trees where class of its value is flattened project)   � ��� �   s e t   d s t P r o j e c t 0   t o   v a l u e   o f   ( s e l e c t e d   t r e e s   w h e r e   c l a s s   o f   i t s   v a l u e   i s   f l a t t e n e d   p r o j e c t )� ��� e   � ��� o   � ��� 0 dstproject0 dstProject0� ��� Z   � ������ l  � ����� =   � ���� l  � ���� � I  � ������
�� .corecnte****       ****� o   � ����� 0 lstselected lstSelected��  �  �   � m   � �����  �  �  � k   � ��� ��� I  � ������
�� .sysodisAaleR        TEXT� m   � ��� ��� " N o   t a s k s   s e l e c t e d��  � ���� L   � �����  ��  �  �  �  � n   � ���� 1   � ���
�� 
FCcn� 4  � ����
�� 
FCdw� m   � ����� � ��� r   � ���� 1   � ���
�� 
FCwa� o      ���� "0 oldwillautosave oldWillAutosave� ��� r   ���� o   � ����� 0 	pautosave 	pAutoSave� 1   ���
�� 
FCwa� ��� Q  .����� l %���� X  %����� n  ��� I   ������� 0 processaction ProcessAction� ��� o  ���� 0 thisone thisOne� ��� o  ���� 0 
dstproject 
dstProject� ���� o  ���� 0 	datetoday 	dateToday��  ��  �  f  �� 0 thisone thisOne� o  	���� 0 lstselected lstSelected� 4 . catch any errors and restore autosave setting   � ��� \   c a t c h   a n y   e r r o r s   a n d   r e s t o r e   a u t o s a v e   s e t t i n g� R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� r  /8��� o  /2���� "0 oldwillautosave oldWillAutosave� 1  27��
�� 
FCwa��  � 4  � ����
�� 
docu� m   � ����� �  B 5    �����
�� 
capp� m    �� ���  O F O C
�� kfrmID  �K  �_       �������������  � ������������ *0 previewdaysuntildue pReviewDaysUntilDue�� 0 	pautosave 	pAutoSave�� 0 ntasks nTasks�� 0 processaction ProcessAction
�� .aevtoappnull  �   � ****�� 
�� boovfals�� � �� 6���������� 0 processaction ProcessAction�� ����� �  �������� 0 	selaction 	selAction�� 0 
dstproject 
dstProject�� 0 	datetoday 	dateToday��  � ������������������������ 0 	selaction 	selAction�� 0 
dstproject 
dstProject�� 0 	datetoday 	dateToday�� 0 	startdate 	startDate�� 0 duedate dueDate�� 0 i  �� 0 
datetoday0 
dateToday0�� 0 num  �� 0 newname newName�� 0 oldname oldName�� 0 	newaction 	newAction� ��)���������������� ������� �������������
�� 
capp
�� kfrmID  
�� 
pnam
�� .ascrcmnt****      � ****
�� 
cwor
�� 
insh
�� 
FCac
�� .coreclon****      � ****
�� 
null�� 0 die  
�� 
FCcd
�� 
FCdc�� 
�� 
days�� 
�� 
cobj
�� 
FCDs
�� 
FCDd�� �)���0 ��,Ej O��,Ej O��,E�O��k/��i/lvj O) hUO�E�O �kb  kh ���-6l E�O��  )�k+ Y hO��,e  
��,E�Y hO��k/�%��i/�%E�O��� _  E�O�b   _  E�O� =���fa vE[a k/*�,FZ[a l/*a ,FZ[a m/*a ,FZ[a a /*�,FZUO�E�[OY�\OPU� ��/��������
�� .aevtoappnull  �   � ****��  ��  � �������� 0 
dstproject 
dstProject�� 0 opanel oPanel�� 0 thisone thisOne�  �������������������������������������������������������������
�� .misccurdldt    ��� null
�� 
time�� 0 	datetoday 	dateToday
�� 
capp
�� kfrmID  
�� 
FCDo
�� 
FCdw
�� 
FCcn
�� 
FCSt
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
OTst
�� 
valL�  
�� 
pcls
�� 
FCpr�� 0 lstproj lstProj
�� 
leng�� 0 lngproj lngProj�� 0 dstproject0 dstProject0
�� 
docu
�� 
FCac�� 0 lstselected lstSelected
�� .sysodisAaleR        TEXT
�� 
FCwa�� "0 oldwillautosave oldWillAutosave�� 0 processaction ProcessAction��  ��  ��;*j  *j  �,E�O)���0#*�,�k/ x f*�,*�,lv[��l kh ��-�,�[�,a ,\Za 81E` O_ a ,E` O_ j Y hO��-�,�[�,a ,\Za 81E` [OY��O_ k hY hUO_ �k/E�O*a k/ �*�k/�, 9*�-�[�,a ,\Za 81�,E` O_ O_ j j  a j OhY hUO*a ,E` Ob  *a ,FO $ _ [��l kh )���m+ [OY��W X  hO_ *a ,FUUascr  ��ޭ