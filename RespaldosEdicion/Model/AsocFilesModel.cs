using System;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using PadronApi.Dto;
using RespaldosEdicion.Dto;
using ScjnUtilities;

namespace RespaldosEdicion.Model
{
    public class AsocFilesModel
    {

        private readonly string connectionString = ConfigurationManager.ConnectionStrings["Base"].ConnectionString;

        public ObservableCollection<AsocFiles> GetBackUpFiles(int idObra)
        {
            ObservableCollection<AsocFiles> asocFiles = new ObservableCollection<AsocFiles>();

            SqlConnection connection = new SqlConnection(connectionString);

            try
            {
                connection.Open();

                SqlCommand cmd = new SqlCommand("SELECT R.*, (U.Nombre + ' ' + U.Apellidos) Nombre  FROM RespaldoEdicion R INNER JOIN C_Usuario U ON R.IdUsr = U.IdUsr WHERE IdObra = @IdObra", connection);
                cmd.Parameters.AddWithValue("@IdObra", idObra);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        AsocFiles respaldo = new AsocFiles()
                        {
                            IdFile = Convert.ToInt32(reader["Id"]),
                            IdObra = Convert.ToInt32(reader["IdObra"]),
                            Usuario = reader["Nombre"].ToString(),
                            NombreArchivo = reader["ObraFileName"].ToString(),
                            RecursoOriginal = reader["SourceResource"].ToString()
                        };

                        asocFiles.Add(respaldo);
                    }
                }
                cmd.Dispose();
                reader.Close();
            }
            catch (SqlException ex)
            {
                string methodName = System.Reflection.MethodBase.GetCurrentMethod().Name;
                ErrorUtilities.SetNewErrorMessage(ex, methodName + " Exception,AsocFilesModel", "RespaldoEdicion");
            }
            catch (Exception ex)
            {
                string methodName = System.Reflection.MethodBase.GetCurrentMethod().Name;
                ErrorUtilities.SetNewErrorMessage(ex, methodName + " Exception,AsocFilesModel", "RespaldoEdicion");
            }
            finally
            {
                connection.Close();
            }

            return asocFiles;
        }


        public bool InsertFileBackup(int idObra, string originalResource, string fileName)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            bool insertCompleted = false;


            try
            {
                connection.Open();

                string sqlQuery = "INSERT INTO RespaldoEdicion(IdObra,IdUsr,ObraFileName,SourceResource)" +
                                  "VALUES (@IdObra,@IdUsr,@ObraFileName,@SourceResource)";

                SqlCommand cmd = new SqlCommand(sqlQuery, connection);
                cmd.Parameters.AddWithValue("@IdObra", idObra);
                cmd.Parameters.AddWithValue("@IdUsr", AccesoUsuario.Llave);
                cmd.Parameters.AddWithValue("@ObraFileName", fileName);
                cmd.Parameters.AddWithValue("@SourceResource", originalResource);
                cmd.ExecuteNonQuery();

                cmd.Dispose();

                

                insertCompleted = true;
            }
            catch (SqlException ex)
            {
                string methodName = System.Reflection.MethodBase.GetCurrentMethod().Name;
                ErrorUtilities.SetNewErrorMessage(ex, methodName + " Exception,AsocFilesModel", "RespaldoEdicion");
            }
            catch (Exception ex)
            {
                string methodName = System.Reflection.MethodBase.GetCurrentMethod().Name;
                ErrorUtilities.SetNewErrorMessage(ex, methodName + " Exception,AsocFilesModel", "RespaldoEdicion");
            }
            finally
            {
                connection.Close();
            }

            return insertCompleted;
        }


        public bool DeleteBackUpFiles(int idFile)
        {

            SqlConnection connection = new SqlConnection(connectionString);
            bool completed = false;
            try
            {
                connection.Open();

                SqlCommand cmd = new SqlCommand("DELETE FROM RespaldoEdicion WHERE Id = @Id", connection);
                cmd.Parameters.AddWithValue("@Id", idFile);
                cmd.ExecuteNonQuery();
                
                cmd.Dispose();

                completed = true;
            }
            catch (SqlException ex)
            {
                string methodName = System.Reflection.MethodBase.GetCurrentMethod().Name;
                ErrorUtilities.SetNewErrorMessage(ex, methodName + " Exception,AsocFilesModel", "RespaldoEdicion");
            }
            catch (Exception ex)
            {
                string methodName = System.Reflection.MethodBase.GetCurrentMethod().Name;
                ErrorUtilities.SetNewErrorMessage(ex, methodName + " Exception,AsocFilesModel", "RespaldoEdicion");
            }
            finally
            {
                connection.Close();
            }

            return completed;
        }

    }
}
