using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using RespaldosEdicion.Dto;
using RespaldosEdicion.Model;
using Telerik.Windows.Controls;
using System.IO;
using System.Diagnostics;

namespace RespaldosEdicion
{
    /// <summary>
    /// Interaction logic for AsocFilesWin.xaml
    /// </summary>
    public partial class AsocFilesWin
    {
        private string basePath;
        private ObservableCollection<AsocFiles> archivosAsociados;

        private AsocFiles selectedFile;

        public AsocFilesWin(string basePath, ObservableCollection<AsocFiles> archivosAsociados)
        {
            InitializeComponent();
            this.basePath = basePath;
            this.archivosAsociados = archivosAsociados;
        }


        private void RadWindow_Loaded(object sender, RoutedEventArgs e)
        {
            GFiles.DataContext = archivosAsociados;
        }

        private void GFiles_SelectionChanged(object sender, SelectionChangeEventArgs e)
        {
            selectedFile = GFiles.SelectedItem as AsocFiles;
        }

        private void BtnEliminar_Click(object sender, RoutedEventArgs e)
        {
            if (selectedFile == null)
            {
                MessageBox.Show("Debes seleccionar el archivo que deseas eliminar");
                return;
            }

            MessageBoxResult result = MessageBox.Show(String.Format("¿Estás seguro de eliminar el archivo \"{0}\"?. Una vez completada la operación no se podrá recuperar ", selectedFile.NombreArchivo),
                "Atención", MessageBoxButton.YesNo, MessageBoxImage.Question);

            if (result == MessageBoxResult.Yes)
            {
                File.Delete(String.Format(@"{0}\{1}", basePath, selectedFile.NombreArchivo));

                new AsocFilesModel().DeleteBackUpFiles(selectedFile.IdFile);
                archivosAsociados.Remove(selectedFile);
            }
        }

        private void BtnSalir_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void GFiles_PreviewMouseDoubleClick(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            Process.Start(String.Format(@"{0}\{1}", basePath, selectedFile.NombreArchivo));
        }

       
    }
}
