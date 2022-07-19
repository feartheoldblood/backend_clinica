
import { Sequelize, Model, DataTypes } from "sequelize";

//postgrees: postgres://<user>:<pwd>@<host(ip o dominio)>:5432/<db_name>
const conexion = "postgres://admin:admin@localhost:5432/clinica"

const sequelize = new Sequelize(conexion)

const Doctor = sequelize.define("Doctor", {
    id :{
        primaryKey : true,
        type :  DataTypes.UUID,
        defaultValue : sequelize.UUIDV4
    },
    nombre : DataTypes.STRING(200),
    correo : DataTypes.STRING(200),
    telefono : DataTypes.STRING(200),
    especialidad : DataTypes.STRING(200),
    consultorio1 : DataTypes.STRING(200),
    consultorio2 : DataTypes.STRING(200),
    nro_cuenta_bcp : DataTypes.STRING(200),
    nro_cuenta_banco_nacion : DataTypes.STRING(200),

    
},{
    freezeTableName: true,
    timestamps: false
})


export {Doctor}