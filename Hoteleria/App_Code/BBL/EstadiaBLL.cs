using BD_Hotel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EstadiaBLL
/// </summary>
namespace BD_Hotel.BBL
{
    public class EstadiaBLL
    {
        public EstadiaBLL()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        //public static List<Estadia> GetData()
        //{
        //    EstadiadbTableAdapters.EstadiaTableAdapter adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
        //    Estadiadb.EstadiaDataTable table = adapter.GetData();
        //    List<Estadia> list = new List<Estadia>();
        //    foreach (var row in table)
        //    {
        //        Estadia obj = GetEstadiaFromRow(row);
        //        list.Add(obj);
        //    }
        //    return list;
        //}



        ////public static Estadia getEstadiaById(int estadia_id)
        ////{
        ////    if (estadia_id <= 0)
        ////        throw new ArgumentException("El id de la estadia no puede ser menor o igual que cero");
        ////    EstadiadbTableAdapters.EstadiaTableAdapter Adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
        ////    Estadiadb.EstadiaDataTable table = Adapter.getEstadiaById(estadia_id);///Ver porq sale error//
        ////    Estadia obj = GetEstadiaFromRow(table[0]);
        ////    return obj;

        ////}




        //public static void Drop_Cliente(int cliente_id)
        //{
        //    if (cliente_id <= 0)
        //        throw new ArgumentException("El id del Paciente no puede ser menor o igual que cero");

        //    ClientedbTableAdapters.ClienteTableAdapter adapter = new ClientedbTableAdapters.ClienteTableAdapter();
        //    adapter.Drop_Cliente(cliente_id);
        //}

        //public static int Ins_Estadia(Estadia obj)
        //{
        //    if (obj == null)
        //    {
        //        throw new ArgumentException("El objeto no puede ser nulo");
        //    }

        //    if (string.IsNullOrEmpty(obj.fechaLlegada))
        //    {
        //        throw new ArgumentException("Seleccione una fecha de llegada");
        //    }
        //    if (string.IsNullOrEmpty(obj.fechaSalida))
        //    {
        //        throw new ArgumentException("Seleccione una fecha de salida");
        //    }
        //    if (string.IsNullOrEmpty(Convert.ToString(obj.fkClienteiD)))
        //    {
        //        throw new ArgumentException("El cliente no puede ser nulo");
        //    }
        //    if (string.IsNullOrEmpty(Convert.ToString(obj.fkHabitacioniD)))
        //    {
        //        throw new ArgumentException("La habitacion no puede ser nulo");
        //    }
        //    int? id = 0;
        //    EstadiadbTableAdapters.EstadiaTableAdapter adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
        //    adapter.InsertarEstadia(ref id, obj.fechaLlegada, obj.fechaSalida, obj.fkClienteiD, obj.fkHabitacioniD);
        //    if (id == null || id <= 0)
        //        throw new Exception("la llave primaria no recorrio  bien");
        //    return id.Value;
        //}


        //public static void Upd_Estadia(Estadia obj)
        //{
        //    if (obj == null)
        //    {
        //        throw new ArgumentException("El objeto no puede ser nulo");
        //    }
        //    if (obj.estadia_id <= 0)
        //    {
        //        throw new ArgumentException("El id de estadia no puede ser menor  o igual que a cero");
        //    }

        //    if (string.IsNullOrEmpty(obj.fechaLlegada))
        //    {
        //        throw new ArgumentException("El Nombre del cliente no puede ser nulo");
        //    }
        //    if (string.IsNullOrEmpty(obj.fechaSalida))
        //    {
        //        throw new ArgumentException("La apellido no puede ser nulo");
        //    }
        //    if (string.IsNullOrEmpty(Convert.ToString(obj.fkClienteiD)))
        //    {
        //        throw new ArgumentException("El tipo cliente no puede ser nulo");
        //    }
        //    if (string.IsNullOrEmpty(Convert.ToString(obj.fkHabitacioniD)))
        //    {
        //        throw new ArgumentException("El tipo cliente no puede ser nulo");
        //    }
        //    int? id = 0;
        //    EstadiadbTableAdapters.EstadiaTableAdapter adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
        //    adapter.Upd_Estadia(ref id, obj.fechaLlegada, obj.fechaSalida, obj.fkClienteiD, obj.fkHabitacioniD);
           
        //}


        //public static Estadia GetEstadiaFromRow(Estadiadb.EstadiaRow row)
        //{
        //    Estadia obj = new Estadia()
        //    {
        //        estadia_id= row.Estadia_iD,
        //        fechaLlegada = row.fecha_Llegada,
        //        fechaSalida = row.fecha_Salida,
        //        fkHabitacioniD = row.Fk_Habitacion_iD,
        //        fkClienteiD = row.Fk_Cliente_iD

        //    };
        //    return obj;
        //}
    }
}