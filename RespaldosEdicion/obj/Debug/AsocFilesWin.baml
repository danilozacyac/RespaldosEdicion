   M S B A M L   `   `   `  ����K  GRespaldosEdicion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:RespaldosEdicionRespaldosEdicion  5      #    RespaldosEdicion.AsocFilesWin   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      7CustomColumnclr-namespace:RespaldosEdicion     5      p lTelerik.Windows.Controls.RibbonView, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7m iTelerik.Windows.Controls.Docking, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e	 aTelerik.Windows.Controls, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n
 jTelerik.Windows.Controls.GridView, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ktelerik1http://schemas.telerik.com/2008/xaml/presentation     	 
  5      -   5        $	��856��5      $	��359��5      $��Archivos de respaldo��5	      (  "Telerik.Windows.Controls.RadWindow    WindowStartupLocation$  CenterScreen=�5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   �� $��	31,23,0,0q�5      $
��Left=�5      $	��Top=�5      $��Archivos asociados��5      $��14(�5      $
��Bold"�5      * 
 $Telerik.Windows.Controls.RadGridView  5   
   -   5          Name$ GFiles��5      $��30,60,30,10q�5      $��Stretch=�5      $��Stretch=�5      ; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .     
IsReadOnly .    RowIndicatorVisibility$ 	Collapsed=�5!         SelectionMode$ Single=�5#         ShowGroupPanel .  *  $Telerik.Windows.Controls.DataControl   ItemsSource 5      �� 	   Columns	 5%      %   RespaldosEdicion.MyColumnNumber  5&      - 
 'Telerik.Windows.Controls.GridViewColumn
   Width? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$
 30 5'         ColumnaNumerica   	CellStyle# [  5(         Header$ #��5)      1 
 +Telerik.Windows.Controls.GridViewDataColumn  5*      $	
 150 5+      6	 
 0Telerik.Windows.Controls.GridViewBoundColumnBase 	  Header$ 	Respaldó��5-         IsFilterable .   	  DataMemberBinding 5,      �� *	Usuario+5.        5/      $
 * 50      $ Nombre del Archivo��52       .   51      �� *NombreArchivo+53        54      $
 * 55      $ Recurso Original��57       .   56      �� *RecursoOriginal+58      5:      �� 5;   
   -   5         ��Name$ BtnEliminar��5<      $��1��5=      $	��130��5>      $��	30,10,0,0q�5?      $
��Left=�5@      $	��Top=�5A      $��Eliminar archivo��5C        
BlueButton#��[ 5D      �� 5E   
   -   5        $ BtnSalir��5F      $��1��5G      $��90��5H      $��	0,10,30,0q�5I      $��Right=�5J      $	��Top=�5K      $��Salir��5M       �� IsCancel . #��[ 5O      5Q      5R      