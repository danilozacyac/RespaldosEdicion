   M S B A M L   `   `   `  ����  RespaldosEdicion0    *RespaldosEdicion.UserControls.SetAutorObra   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      p lTelerik.Windows.Controls.RibbonView, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k gTelerik.Windows.Controls.Input, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7m iTelerik.Windows.Controls.Docking, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e	 aTelerik.Windows.Controls, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n
 jTelerik.Windows.Controls.GridView, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2014.2.729.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ktelerik1http://schemas.telerik.com/2008/xaml/presentation     	 
  5      .��5      � .+�5   
   * 
 $Telerik.Windows.Controls.RadGridView  -   5           Name$  
GAutorObra��5      $��1��5      $��Stretch=�5      $��Stretch=�5      ; 
 5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .     CanUserDeleteRows .     CanUserReorderColumns .     CanUserResizeColumns .     ShowGroupPanel .     ValidatesOnDataErrors$
 None=�5      *  $Telerik.Windows.Controls.DataControl   ItemsSource 5      ��    Columns 5      1 
 +Telerik.Windows.Controls.GridViewDataColumn  5      - 
 'Telerik.Windows.Controls.GridViewColumn	   Width? 
 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$	 50 5      6 
 0Telerik.Windows.Controls.GridViewBoundColumnBase
   Header$
 Id��5         HeaderTextAlignment$ Center=�5         IsFilterable .     
IsReadOnly .    	IsVisible .     DataMemberBinding 5      �� *	IdAutor+5"        5$      $	 * 5%         MinWidth$	 100Q�5&      $
 Nombre��5(      $ Center=�5)       .   .  5'      �� *NombreCompleto+5+      5 
 /Telerik.Windows.Controls.GridViewCheckBoxColumn  5-      $	 60 5.         AutoSelectOnEdit .    EditTriggers$ 	CellClick=�51      $
 Autor��52      $ Center=�53       .  50      �� *	IsAutor+ �� Mode$ TwoWay=�54        55      $	 90 56       . $ 	CellClick=�59      $
 
Compilador��5:      $ Center=�5;       .  58      �� *IsCompilador+$ TwoWay=�5<        5=      $	 90 5>       . $ 	CellClick=�5A      $
 	Traductor��5B      $ Center=�5C       .  5@      �� *IsTraductor+$ TwoWay=�5D        5E      $	 90 5F       . $ 	CellClick=�5I      $
 Coordinador��5J      $ Center=�5K       .  5H      �� *IsCoordinador+$ TwoWay=�5L        5M      $	 90 5N       . $ 	CellClick=�5Q      $
 Comentarista��5R      $ Center=�5S       .  5P      �� *IsComentarista+$ TwoWay=�5T        5U      $	 90 5V       . $ 	CellClick=�5Y      $
 Coeditor��5Z      $ Center=�5[       .  5X      �� *IsCoedicion+$ TwoWay=�5\        5]      $	 90 5^       . $ 	CellClick=�5a      $
 Estudio In.��5b      $ Center=�5c       .  5`      �� *	IsEstudio+$ TwoWay=�5d        5e      $	 90 5f       . $ 	CellClick=�5i      $
 Prologuista��5j      $ Center=�5k       .  5h      �� *	IsPrologo+$ TwoWay=�5l      5o      5p      5q      