using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using Microsoft.Win32;
using PadronApi.Dto;
using PadronApi.Model;
using RespaldosEdicion.Dto;
using RespaldosEdicion.Model;
using Telerik.Windows.Controls;

namespace RespaldosEdicion
{
    /// <summary>
    /// Interaction logic for EdicionWin.xaml
    /// </summary>
    public partial class EdicionWin
    {
        ObservableCollection<Obra> catalogoObras;

        Obra selectedObra;

        int tipoProceso = 1;

        ObservableCollection<AsocFiles> archivosRelacionados;

        public EdicionWin()
        {
            InitializeComponent();
            worker.DoWork += this.WorkerDoWork;
            worker.RunWorkerCompleted += WorkerRunWorkerCompleted;

            this.ShowInTaskbar(this, "Respaldos Edición");
        }

        public void ShowInTaskbar(RadWindow control, string title)
        {
            control.Show();
            var window = control.ParentOfType<Window>();
            window.ShowInTaskbar = true;
            window.Title = title;
            var uri = new Uri("pack://application:,,,/RespaldosEdicion;component/Resources/bookshelf.ico");
            window.Icon = BitmapFrame.Create(uri);
        }

        private void RadWindow_Loaded(object sender, RoutedEventArgs e)
        {
            tipoProceso = 1;
            if (catalogoObras == null)
                LaunchBusyIndicator();   
        }


        private void SearchTextBox_Search(object sender, RoutedEventArgs e)
        {
            String tempString = ((TextBox)sender).Text.ToUpper();

            if (!String.IsNullOrEmpty(tempString))
            {
                var resultado = (from n in catalogoObras
                                 where n.Titulo.ToUpper().Contains(tempString) ||
                                 n.TituloStr.ToUpper().Contains(tempString) || n.Sintesis.Contains(tempString) ||
                                 n.NumMaterial.Contains(tempString) || n.Isbn.Contains(tempString)
                                 select n).ToList();
                GObras.DataContext = resultado;
            }
            else
            {
                GObras.DataContext = catalogoObras;
            }

            this.GObras.FilterDescriptors.SuspendNotifications();
            foreach (Telerik.Windows.Controls.GridViewColumn column in this.GObras.Columns)
            {
                column.ClearFilters();
            }
            this.GObras.FilterDescriptors.ResumeNotifications();
        }

        private void GObras_SelectionChanged(object sender, SelectionChangeEventArgs e)
        {
            selectedObra = GObras.SelectedItem as Obra;

            archivosRelacionados = new AsocFilesModel().GetBackUpFiles(selectedObra.IdObra);
        }

        private void BtnAddFiles_Click(object sender, RoutedEventArgs e)
        {
            if (selectedObra == null)
            {
                MessageBox.Show("Selecciona la obra a la cual deseas agregar una imagen");
                return;
            }

            OpenFileDialog open = new OpenFileDialog()
            {
                Multiselect = true
            };

            AsocFilesModel model = new AsocFilesModel();
            if (open.ShowDialog() == true)
            {
                string basePath = String.Format("{0}PadronResEdi{1}",ConfigurationManager.AppSettings["RespEdicion"], selectedObra.IdObra.ToString("000000"));

                if (!Directory.Exists(basePath))
                {
                    Directory.CreateDirectory(basePath);
                }

                foreach (string file in open.FileNames)
                {
                    string newPath = String.Format(@"{0}\{1}",basePath, Path.GetFileName(file));

                    File.Copy(file, newPath, true);

                    model.InsertFileBackup(selectedObra.IdObra, file, Path.GetFileName(file));

                }
            }

            archivosRelacionados = model.GetBackUpFiles(selectedObra.IdObra);
        }

        private void BtnViewFiles_Click(object sender, RoutedEventArgs e)
        {
            string basePath = String.Format("{0}PadronResEdi{1}",ConfigurationManager.AppSettings["RespEdicion"], selectedObra.IdObra.ToString("000000"));

            if (archivosRelacionados.Count > 0)
            {
                AsocFilesWin asoc = new AsocFilesWin(basePath, archivosRelacionados) { Owner = this };
                asoc.ShowDialog();
            }
            else
            {
                MessageBox.Show("Esta obra no cuenta con archivos de respaldo");
            }
        }

        private void BtnVerInfo_Click(object sender, RoutedEventArgs e)
        {
            ObrasKiosko obraWin = new ObrasKiosko(selectedObra) { Owner = this };
            obraWin.ShowDialog();
        }

        #region Background Worker

        private BackgroundWorker worker = new BackgroundWorker();

        private void WorkerDoWork(object sender, DoWorkEventArgs e)
        {
            if (tipoProceso == 1)
                catalogoObras = new ObraModel().GetObras();

        }

        void WorkerRunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (tipoProceso == 1)
                GObras.DataContext = catalogoObras;
            //Dispatcher.BeginInvoke(new Action<ObservableCollection<Organismos>>(this.UpdateGridDataSource), e.Result);
            this.BusyIndicator.IsBusy = false;
        }

        private void LaunchBusyIndicator()
        {
            if (!worker.IsBusy)
            {
                this.BusyIndicator.IsBusy = true;
                worker.RunWorkerAsync();
            }
        }

        #endregion

        
    }
}
