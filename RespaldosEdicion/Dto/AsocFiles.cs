using System;
using System.Linq;

namespace RespaldosEdicion.Dto
{
    public class AsocFiles
    {
        private int idFile;
        private int idObra;
        private string usuario;
        private string nombreArchivo;
        private string recursoOriginal;

        public int IdFile
        {
            get
            {
                return this.idFile;
            }
            set
            {
                this.idFile = value;
            }
        }

        public int IdObra
        {
            get
            {
                return this.idObra;
            }
            set
            {
                this.idObra = value;
            }
        }

        public string Usuario
        {
            get
            {
                return this.usuario;
            }
            set
            {
                this.usuario = value;
            }
        }

        public string NombreArchivo
        {
            get
            {
                return this.nombreArchivo;
            }
            set
            {
                this.nombreArchivo = value;
            }
        }

        public string RecursoOriginal
        {
            get
            {
                return this.recursoOriginal;
            }
            set
            {
                this.recursoOriginal = value;
            }
        }
    }
}
