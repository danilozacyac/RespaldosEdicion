using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using PadronApi.Dto;
using PadronApi.Model;
using PadronApi.Singletons;
using ScjnUtilities;

namespace RespaldosEdicion
{
    /// <summary>
    /// Interaction logic for ObrasKiosko.xaml
    /// </summary>
    public partial class ObrasKiosko
    {
        private readonly string noPictureString = String.Format("{0}{1}", ConfigurationManager.AppSettings["Imagenes"], "picture.png");

        private readonly string catalograficaRootDir = ConfigurationManager.AppSettings["Catalografica"];

        private Obra obra;



        public ObrasKiosko(Obra obra)
        {
            InitializeComponent();
            this.obra = obra;

        }

        private void RadWindow_Loaded(object sender, RoutedEventArgs e)
        {
            CbxPresentacion.DataContext = ElementalPropertiesSingleton.Presentacion;
            CbxTipoObra.DataContext = new ElementalPropertiesModel().GetTipoObra();
            CbxTipoPub.DataContext = ElementalPropertiesSingleton.TipoPublicacion;
            CbxMedioPub.DataContext = ElementalPropertiesSingleton.MedioPublicacion;
            CbxIdioma.DataContext = ElementalPropertiesSingleton.Idioma;
            CbxPais.DataContext = PaisesSingleton.Paises;


            this.DataContext = obra;
            LoadData();

            DatosObra.IsEnabled = false;
        }

        private void LoadData()
        {
            try
            {
                CbxPresentacion.SelectedValue = obra.Presentacion;
                CbxTipoObra.SelectedValue = obra.TipoObra;
                CbxTipoPub.SelectedValue = obra.IdTipoPublicacion;
                CbxMedioPub.SelectedValue = obra.MedioPublicacion;
                CbxIdioma.SelectedValue = obra.IdIdioma;
                CbxPais.SelectedValue = obra.Pais;
                CargaAutores();

               

                if (!String.IsNullOrEmpty(obra.Catalografica) && File.Exists(String.Format("{0}{1}", catalograficaRootDir, obra.Catalografica)))
                {
                    BtnVerCatalografica.Visibility = Visibility.Visible;
                }
                else
                {
                    BtnVerCatalografica.Visibility = Visibility.Collapsed;
                }

            }
            catch (FileNotFoundException) { }
        }

        private void CargaAutores()
        {
            AutorModel model = new AutorModel();

            List<Autor> autores = model.GetAutores(obra).ToList();
            List<Autor> instituciones = model.GetInstituciones(obra).ToList();

            autores.AddRange(instituciones);

            GAutores.GAutorObra.DataContext = (from n in autores
                                               orderby n.NombreCompleto
                                               select n);

            if (autores.Count > 0)
                obra.Autores = new System.Collections.ObjectModel.ObservableCollection<Autor>(autores);
            else
                obra.Autores = new System.Collections.ObjectModel.ObservableCollection<Autor>();

        }


        private void BtnCancelar_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Txt_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = VerificationUtilities.IsNumber(e.Text);
        }


        private void Txt_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Space)
            {
                e.Handled = true;
            }
        }

        private void BtnVerCatalografica_Click(object sender, RoutedEventArgs e)
        {
            Process.Start(String.Format("{0}{1}", catalograficaRootDir, obra.Catalografica));
        }

    }
}
