import  Express  from "express";
import { Doctor} from "./dao/index.js";
import bodyParser from "body-parser";
import cors from "cors";
const port = 4000
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
app.listen(port, ()=>{
    console.log(`servidor iniciado en el puerto ${port}`)
})
