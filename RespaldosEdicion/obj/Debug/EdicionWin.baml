   M S B A M L   `   `   `  ����K  GRespaldosEdicion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:RespaldosEdicion.ConverterRespaldosEdicion.Converter  5      3clr-namespace:RespaldosEdicionRespaldosEdicion  5      E AUIControls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;,clr-namespace:UIControls;assembly=UIControls
UIControls 5      !    RespaldosEdicion.EdicionWin   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      >	Converter(clr-namespace:RespaldosEdicion.Converter     5      7CustomColumnclr-namespace:RespaldosEdicion     5      C
UIControls,clr-namespace:UIControls;assembly=UIControls     5      p lTelerik.Windows.Controls.RibbonView, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7m iTelerik.Windows.Controls.Docking, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a	 ]Telerik.Windows.Data, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e
 aTelerik.Windows.Controls, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n jTelerik.Windows.Controls.GridView, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ktelerik1http://schemas.telerik.com/2008/xaml/presentation    	 
   5      -   5        $	��700��5	      $	��600��5
      $�� ��5      )  #Telerik.Windows.Controls.WindowBase    WindowState$  	Maximized=�5       � 	Resources 5      /   )RespaldosEdicion.Converter.MedioConverter   	medioConv1   +RespaldosEdicion.Converter.AutoresConverter  	autorConv3   -RespaldosEdicion.Converter.ImagePathConverter  	imageConv��%W   &	        &	      &	 &       5   
   6#     5   
   6%     5   
   6'   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   ,  &Telerik.Windows.Controls.RadRibbonView  $��0��5      $	��Top=�5         ApplicationName$* $Respaldo de los archivos de edición��5      .@�5      +  %Telerik.Windows.Controls.RadRibbonTab  $��General��6#   .@�5      -  'Telerik.Windows.Controls.RadRibbonGroup  .@�5       .  (Telerik.Windows.Controls.RadRibbonButton  -   5          Name$ 
BtnVerInfo��5!      $
��Auto��5"      $
��Auto��5#         
LargeImage$ Resources/Books_128.png��5%         Size$ Large=�5&         Text$ Ver información��5'      5(        5)      $��Archivos de respaldo��6)   .@�5*        -   5        $ BtnAddFiles��5+      $
��Auto��5,      $
��Auto��5-      $ Resources/searchFile.png��5/      $ Large=�50      $" Agregar archivos de respaldo��51        52      -   5        $ BtnViewFiles��53      $
��Auto��54      $
��Auto��55      $ Resources/ViewFiles.png��57      $ Large=�58      $ Ver archivos de respaldo��59      5:      5;      5=      /	 
 )Telerik.Windows.Controls.RadBusyIndicator	  5?   
   -   5         	 Name$ BusyIndicator��5@      $��1��5A      	 	  IsIndeterminate	 . .��5C      �  5E      �� 5F      $
��Auto �6$   �� 5G      $��50 �6$   �� 5H      $��* �6$   .+�5K      
  UIControls.SearchTextBox
  -   5        $��1��5L      $	��350��5M      $��	10,15,0,0q�5N      $
��Left=�5O      $	��Top=�5P      
 
  	LabelText$A
 ;Buscar en síntesis, título, número de material o ISBN...��5Q      5R      *  $Telerik.Windows.Controls.RadGridView  5T      -   5          Name$ GObras��5U      $��2��5V      $��Stretch=�5W      $��Stretch=�5X      ;  5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .     EnableRowVirtualization .    
IsReadOnly .    RowIndicatorVisibility$ 	Collapsed=�5]         SelectionMode$ Single=�5_         ShowGroupPanel .     ValidatesOnDataErrors$
 None=�5a      * 	 $Telerik.Windows.Controls.DataControl   ItemsSource 5\      ��    Columns 5b      %   RespaldosEdicion.MyColumnNumber  5c      -  'Telerik.Windows.Controls.GridViewColumn   Width?  9Telerik.Windows.Controls.GridView.GridViewLengthConverter$ 30 5d        ColumnaNumerica   	CellStyle# [ 5e         Header$ #��5f      2  ,Telerik.Windows.Controls.GridViewImageColumn  5g      $	 100 5h      6  0Telerik.Windows.Controls.GridViewBoundColumnBase   Header$ Portada��5j         IsFilterable .     DataMemberBinding 5i      �� *	ImagePath+ �� 	Converter# [  5l      �� 5m   "    �� 
TargetType4  .Telerik.Windows.Controls.GridView.GridViewCell"  6(   .�5n   &   ��  �� Property � �� �� Value$	 Top=�6Q   5o   #   5q      1  +Telerik.Windows.Controls.GridViewDataColumn  5r      $ * 5s      $ Título��5t       .     CellTemplate 5v      �� 5w   "   .R�5x   &   �� $	��Top=�5y   )   $��12(�5z   )     �� TextAlignment$  Justify=�5|   )   $
��Wrap=�5}   )   ��5{   )   �� *Titulo+5}   )   5~   #   5�        5�      $
 1.5* 5�      $ Sintesis��5�       .   5�      �� 5�   "   .R�5�   &   �� $	��150��5�   )   $��12(�5�   )   $  Justify=�5�   )   $
��Wrap=�5�   )   ��5�   )   �� *
Sintesis+5�   )   5�   #   5�        5�      $	 100 5�      $
 Tipo��5�       5�      �� *TipoPublicacionStr+5�        5�      $	 100 5�      $ Núm. Material��5�       .   5�      �� *NumMaterial+5�        5�      $	 100 5�      $ Año Publicación��5�       .  5�      �� *AnioPublicacion+5�        5�      $ 90 5�      $ Precio��5�      !   ShowDistinctFilters! .   5�      �� *Precio+5�        5�      $	 150 5�      $
 ISBN��5�       .   5�      �� *Isbn+5�        5�      $ 90 5�      $ Págs.��5�       . ! .   5�      �� *	Paginas+5�        5�      $	 .5* 5�      $ Autores��5�       .  5�      �� *	Autores+" �� Mode$" TwoWay=�# [ 5�      #   RowStyle# 5�      �� 5�      3  -Telerik.Windows.Controls.GridView.GridViewRow"  6    .�5�      ��  � �� 6;   �� *MedioPublicacion+# [  5�      5�      5�      5�      5�      5�      