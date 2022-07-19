
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


const Paciente = sequelize.define("Paciente", {
    id :{
        primaryKey : true,
        type :  DataTypes.UUID,
        defaultValue : sequelize.UUIDV4
    },
    nombre : DataTypes.STRING(200),
    dni : DataTypes.INTEGER,
    telefono : DataTypes.STRING(200),
    correo : DataTypes.STRING(200),
    edad : DataTypes.STRING(200),
    telefono : DataTypes.STRING(200),
    
    
},{
    freezeTableName: true,
    timestamps: false
})
const Cita = sequelize.define("Paciente", {
    id :{
        primaryKey : true,
        type :  DataTypes.UUID,
        defaultValue : sequelize.UUIDV4
    },
    
    doctorid : {
        type : DataTypes.UUID,
        allowNull : false
    },
        
    pacienteid : {
        type : DataTypes.UUID,
        allowNull : false
    },
    fecha : DataTypes.STRING(200),   
    horainicio : DataTypes.STRING(200),
    horafin : DataTypes.STRING(200),
},{
    freezeTableName: true,
    timestamps: false
})

Cita.belongsTo(Paciente, {
    foreginkey : "pacienteid"
})

Cita.belongsTo(Doctor, {
    foreignKey : "doctorid"
})

Doctor.hasMany(Cita, {
    foreignKey : "id"
})
Paciente.hasMany(Cita ,{
    foreignKey :  "id"
})

export {Doctor, Paciente, Cita}