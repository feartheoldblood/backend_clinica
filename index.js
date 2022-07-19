import  Express  from "express";
import { Cita, Doctor, Paciente} from "./dao/index.js";
import bodyParser from "body-parser";
import cors from "cors";
const PORT = process.env.PORT 
const app = Express()

/*const corsOptions = {
    origin : "http://localhost:3000"
}*/

app.use(cors()) //
app.use(bodyParser.json())

/*app.get("/mascotas", async (req,resp)=>{
   
    const edadmascota = req.query.edad
    let mascotas;
    if (edadmascota==undefined){
        mascotas = await Mascota.findAll()
    }else{
        mascotas = await Mascota.findAll({
            where :{
                edad : edadmascota
            }
        })
    }
    
    resp.send(JSON.stringify(mascotas))
})*/
app.get("/doc", async (req, resp) => {

 const doctores = await Doctor.findAll()
    resp.send( JSON.stringify(doctores))
})
app.get("/pac", async (req, resp) => {

    const pacientes = await Paciente.findAll()
       resp.send( JSON.stringify(pacientes))
   })
/*app.get("/cit", async (req, resp) => {

    const citas = await Cita.findAll()
       resp.send( JSON.stringify(citas))
})*/

app.listen(port, ()=>{
    console.log(`servidor iniciado en el puerto ${PORT}`)
})
