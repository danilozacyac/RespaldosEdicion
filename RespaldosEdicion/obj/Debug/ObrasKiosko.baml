   M S B A M L   `   `   `  ����D  @PadronApi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullL4clr-namespace:PadronApi.Converter;assembly=PadronApiPadronApi.Converter  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089M4clr-namespace:System.Globalization;assembly=mscorlibSystem.Globalization 5      K GRespaldosEdicion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:RespaldosEdicion.ConverterRespaldosEdicion.Converter 5      M+clr-namespace:RespaldosEdicion.UserControlsRespaldosEdicion.UserControls 5	      "   RespaldosEdicion.ObrasKiosko   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      K
Converters4clr-namespace:PadronApi.Converter;assembly=PadronApi     5      H DMahApps.Metro, Version=1.2.3.0, Culture=neutral, PublicKeyToken=null9Custom,http://metro.mahapps.com/winfx/xaml/controls  5      HGlobalization4clr-namespace:System.Globalization;assembly=mscorlib  5      =ImageConverter(clr-namespace:RespaldosEdicion.Converter  5      >UserControls+clr-namespace:RespaldosEdicion.UserControls  5	      p lTelerik.Windows.Controls.RibbonView, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k	 gTelerik.Windows.Controls.Input, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7m
 iTelerik.Windows.Controls.Docking, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.GridView, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ktelerik1http://schemas.telerik.com/2008/xaml/presentation  	 
     5
      -   5        $
��1030��5      $	��850��5      $��Información de la obra��5      (  "Telerik.Windows.Controls.RadWindow    WindowStartupLocation$  CenterScreen=�5       � 	Resources 5      *   $PadronApi.Converter.TextValConverter   textConv3  -RespaldosEdicion.Converter.ImagePathConverter  	imageConv��%:   &	        &	        5   
   6&     5   
   6,   5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   � -   5         �Name$ 	DatosObra��5       5      �� 5      $	��256 �6    �� 5      $��75 �6    �� 5      $��75 �6    �� 5      $��75 �6    �� 5       $	��250 �6     � ColumnDefinitions 5#      �� 5$      $	��256 �6#   �� 5%      $��* �6#   .+�5'      �� -   5         ��Name$ ImBook��5(      $��15,20,15,25q�5)      $��Stretch=�5*      $��Stretch=�5+      $
��Fill=�5-      ��5,      �� *	ImagePath+ �� Mode$ TwoWay=� �� 	Converter# [ 5-      �� 50      $��1��51      $��	10,21,0,0q�52      $
��Left=�53      $	��Top=�54      $��Título:��55      $
��Bold"�56      �� 57      -   5         ��Name$ TxTitulo��58      $��1��59      $��50��5:      $��
10,52,15,0q�5;      $��Stretch=�5<      $	��Top=�5=      	 �� AcceptsReturn	 . 
 �� TextWrapping$

 Wrap=�5A       �� 
IsReadOnly 5?      �� *
IsReadOnly+��5@      �� *Titulo+# [  $ TwoWay=� �� UpdateSourceTrigger$ 	LostFocus=�5A      �� 5B      $��1��5C      $��
10,121,0,0q�5D      $
��Left=�5E      $	��Top=�5F      $��	Sintesis:��5G      $
��Bold"�5H      �� 5I      $��1��5J      $��10,152,15,10q�5K      $��Stretch=�5L      $��Stretch=�5M      	 . $

 Wrap=�5Q       5O      �� *
IsReadOnly+��5P      �� *
Sintesis+# [  $ TwoWay=�$ 	LostFocus=�5Q      �� 5R      $��1��5S      $��15,8,0,0q�5T      $
��Left=�5U      $	��Top=�5V      $��Orden:��5W      �� 5X      -   5        $ TxtOrden��5Y      $��1��5Z      $	��120��5[      $��23��5\      $��	15,39,0,0q�5]      $
��Left=�5^      $	��Top=�5_      $

 Wrap=�5d       5`      �� *
IsReadOnly+��5c      �� *Orden+5d      �� 5e      $��1��5f      $��1��5g      $��17,5,0,0q�5h      $
��Left=�5i      $	��Top=�5j      $��Núm. de material:��5k      �� 5l      -   5        $ TxtNumMaterial��5m      $��1��5n      $��1��5o      $	��140��5p      $��23��5q      $��	17,36,0,0q�5r      $
��Left=�5s      $	��Top=�5t      $

 Wrap=�5y       5u      �� *
IsReadOnly+��5x      �� *NumMaterial+$ TwoWay=�5y      �� 5z      $��1��5{      $��1��5|      $��	217,6,0,0q�5}      $
��Left=�5~      $	��Top=�5      $��Núm. de volúmenes:��5�      �� 5�      -   5        $ TxtIsbn��5�      $��1��5�      $��1��5�      $	��140��5�      $��23��5�      $��
411,36,0,0q�5�      $
��Left=�5�      $	��Top=�5�       5�      �� *
IsReadOnly+��5�      �� *Isbn+$ TwoWay=��� 5�      $��1��5�      $��1��5�      $��	411,5,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��ISBN:��5�      �� 5�      $��1��5�      $��1��5�      $��	589,5,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��Año de publicación:��5�      / 	 )Telerik.Windows.Controls.RadNumericUpDown  5�      -   5          Name$ NudYear��5�      $��1��5�      $��1��5�      $	��140��5�      $��
589,38,0,0q�5�      $
��Left=�5�      $	��Top=�5�         	IsInteger .    ValueFormat$ Numeric=�5�      +  %Telerik.Windows.Controls.RadRangeBase   Value 5�      �� *AnioPublicacion+$ TwoWay=�   NumberFormatInfo 5�      +  %System.Globalization.NumberFormatInfo  5�         NumberDecimalDigits$ 0��65      NumberGroupSeparator$  ��6M   5�        5�      -	   5        $ NudVolumenes��5�      $��1��5�      $��1��5�      $	��140��5�      $��
217,36,0,0q�5�      $
��Left=�5�      $	��Top=�5�       .    Maximum$ 15Q�5�         Minimum$ 1Q�5�       5�      �� *	NumLibros+$ TwoWay=��� 5�      $��2��5�      $��15,6,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��País:��5�      �� 5�      -
   5         ��Name$ CbxPais��5�      $��2��5�      $	��140��5�      $��	15,39,0,0q�5�      $
��Left=�5�      $	��Top=�5�       �� DisplayMemberPath$ PaisDesc��5�       �� SelectedValuePath$ IdPais��5�       �� 
IsReadOnly 5�      �� *
IsReadOnly+��5�      �� 5�      �� 5�      $��2��5�      $��1��5�      $��	416,8,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��	Edición:��5�      �� 5�      $��2��5�      $��1��5�      $��	222,7,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��Núm. Páginas��5�      �� 5�      $��2��5�      $��1��5�      $��	594,8,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��Precio:��5�      �� 5�      -   5        $ 	TxtPrecio��5�      $��2��5�      $��1��5�      $	��140��5�      $��23��5�      $��
594,39,0,0q�5�      $
��Left=�5�      $	��Top=�5�       5�      �� *
IsReadOnly+��5�      �� *Precio+$ TwoWay=��� 5�      $��2��5�      $��1��5�      $��22,9,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��Tiraje:��5�        5�      -   5        $ 	NudTiraje��5�      $��2��5�      $��1��5�      $	��140��5�      $��	22,39,0,0q�5�      $
��Left=�5�      $	��Top=�5�       .  5�      �� *Tiraje+$ TwoWay=�  5�      -   5        $ 
NudPaginas��5�      $��2��5�      $��1��5�      $	��140��5�      $��
222,39,0,0q�5�      $
��Left=�5�      $	��Top=�5�       . $ 0Q�5       5     �� *	Paginas+$ TwoWay=�  5     -   5        $ 
NudEdicion��5     $��2��5     $��1��5     $	��140��5     $��
416,39,0,0q�5     $
��Left=�5     $	��Top=�5	      . $ 1Q�5      5     �� *	Edicion+$ TwoWay=��� 5     $��3��5     $��15,5,0,0q�5     $
��Left=�5     $	��Top=�5     $��Idioma:��5     �� 5     -   5        $ 	CbxIdioma��5     $��3��5     $	��140��5     $��	15,37,0,0q�5     $
��Left=�5     $	��Top=�5     $ Descripcion��5     $ 
IdElemento��5      5     �� *
IsReadOnly+��5     �� 5     �� 5     $��3��5     $��1��5      $��	25,11,0,0q�5!     $
��Left=�5"     $	��Top=�5#     $��Presentación:��5$     �� 5%     -   5        $ CbxPresentacion��5&     $��3��5'     $��1��5(     $	��138��5)     $��	24,37,0,0q�5*     $
��Left=�5+     $	��Top=�5,     $ Descripcion��5-     $ 
IdElemento��50      5.     �� *
IsReadOnly+��5/     �� 50     �� 51     $��3��52     $��1��53     $��
222,11,0,0q�54     $
��Left=�55     $	��Top=�56     $��Tipo de obra:��57     �� 58     -   5        $ CbxTipoObra��59     $��3��5:     $��1��5;     $	��140��5<     $��
222,37,0,0q�5=     $
��Left=�5>     $	��Top=�5?     $ Descripcion��5@     $ 
IdElemento��5C      5A     �� *
IsReadOnly+��5B     �� 5C     �� 5D     $��3��5E     $��1��5F     $��
425,11,0,0q�5G     $
��Left=�5H     $	��Top=�5I     $��Tipo de Publicación:��5J     �� 5K     -   5        $ 
CbxTipoPub��5L     $��3��5M     $��1��5N     $	��132��5O     $��
424,37,0,0q�5P     $
��Left=�5Q     $	��Top=�5R     $ Descripcion��5S     $ 
IdElemento��5V      5T     �� *
IsReadOnly+��5U     �� 5V     �� 5W     $��3��5X     $��1��5Y     $��
594,11,0,0q�5Z     $
��Left=�5[     $	��Top=�5\     $��Medio de publicación:��5]     �� 5^     -   5        $ CbxMedioPub��5_     $��3��5`     $��1��5a     $	��140��5b     $��
594,37,0,0q�5c     $
��Left=�5d     $	��Top=�5e     $ Descripcion��5f     $ 
IdElemento��5i      5g     �� *
IsReadOnly+��5h     �� 5i     )  #MahApps.Metro.Controls.ToggleSwitch  5k     $��4��5l     $��	15,34,0,0q�5m     $
��Left=�5n     $	��Top=�5o     $��¿Incluir en catálogo?��5p     $��12(�5q        	IsChecked 5r     �� *MuestraEnKiosko+$ TwoWay=�  5s     $��4��5t     $��	15,88,0,0q�5u     $
��Left=�5v     $	��Top=�5w     $ ��                ¿Agotado?��5x     $��12(�5y      5z     �� *	Agotado+$ TwoWay=�0  *RespaldosEdicion.UserControls.SetAutorObra  5|     -   5          Name$ GAutores��5}     $��4��5~     $��1��5     $��15,40,10,10q�5�     $��Stretch=�5�     $��Stretch=�5�     {�. 5�     �� 5�     $��4��5�     $��
15,152,0,0q�5�     $
��Left=�5�     $	��Top=�5�     $��Ficha catalográfica:��5�     $
��Bold"�5�     �� 5�     $��4��5�     $��15,188,0,-69q�5�     $
��Left=�5�     $	��Top=�5�      �� Orientation$ Vertical=�5�     .+�5�     �� -   5         ��Name$ BtnVerCatalografica��5�     $��10q�5�     $��	Ver ficha��5�       
BlueButton#��[ 5�     5�     5�     �� 5�  
   -   5        $ BtnCancelar��5�     $��1��5�     $��80��5�     $��	0,20,10,0q�5�     $��Right=�5�     $	��Top=�5�     $��Salir��5�      �� IsCancel . #��[ 5�     5�     5�     