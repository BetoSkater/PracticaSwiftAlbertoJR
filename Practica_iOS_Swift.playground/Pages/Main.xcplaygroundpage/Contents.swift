import UIKit

//MARK: - EJERCICIO 1 -
    //Calcular y generar lista con los primeros 100 #primos y hacer un print de los ultimos 10.

var numero:Int = 2;
var listaPrimos:[Int] = [2]

repeat{
    numero += 1
    calculaSiEsPrimo(numero: numero)
}while listaPrimos.count < 100

print(listaPrimos.suffix(10))

func calculaSiEsPrimo (numero: Int){
    var esPrimo:Bool = true
    for index in stride(from: 2, through: numero-1, by: 1){
        if (numero % index == 0){
            esPrimo = false
            break
        }
    }
    if esPrimo  {anadeNumero(primoNuevo: numero)}
}



func anadeNumero(primoNuevo:Int){
    listaPrimos.append(primoNuevo)
}

//MARK: - EJERCICIO 2-
sumaPrimerosNumerosPrimos(lista: listaPrimos)
func sumaPrimerosNumerosPrimos(lista: [Int]){
    var suma: Int = 0
    for primo in lista.prefix(50){
        suma += primo
    }
    print("La suma de los 50 primeros números primos es \(suma)")
}
//MARK: -EJERCICIO 3-
    //Dada la siguiente lista, obtener todos los elementos que contengas mas de dos vocales.



//añadir un metodo a tring que cuente el numero de vocales y usarlo en el for. ademas usar for each. creo que es con extensiones.

extension String{
    var numeroDeVocales: Int{
        var numeroVocales:Int = 0
        self.forEach { char in
            switch char{
                case "A","a","Á","á","À","à","Ä","ä","Â","â": numeroVocales += 1
                case "E","e","É","é","È","è","Ë","ë","Ê","ê": numeroVocales += 1
                case "I","i","Í","í","Ì","ì","Ï","ï","Î","î": numeroVocales += 1
                case "O","o","Ó","ó","Ò","ò","Ö","ö","Ô","ô": numeroVocales += 1
                case "U","u","Ú","ú","Ù","ù","Ü","ü","Û","û": numeroVocales += 1
                default:
                  numeroVocales += 0
            }
        }
        return numeroVocales
    }
}

var jugadores: [String] = ["Vinicius", "Messi", "Ronaldo", "Pedri", "Mbappe", "Modric", "Militao", "Morata", "Valverde","Benzema", "Piqué"]
var jugadoresConDosVocales:[String]=[]

obtenerJugadoresConDosVocales()

func obtenerJugadoresConDosVocales (){
    
    jugadores.forEach { jugador in
        if jugador.numeroDeVocales > 2 {jugadoresConDosVocales.append(jugador)}
    }
}
print(jugadoresConDosVocales)

//MARK: -EJERCICIO 4-
//Crear un enumerado que permita indicar la posición de un jugador dentro de un campo de futbol.
enum PosicionesEnElCampo:String{
    case PORTERO = "Portero"
    case LATERAL_DERECHO = "Lateral_Derecho"
    case CENTRAL = "Central"
    case LATERAL_IZQUIERDO = "Lateral Izquierdo"
    case MEDIOCENTRO = "Mediocentro"
    case EXTREMO_DERECHA = "Extremo Derecha"
    case EXTREMO_IZQUIERDA = "Extremo Izquierda"
    case DELANTERO = "Delantero"
}

//MARK: - EJERCICIO 5 -
/*
 Crear una clase, con los atributos necesarios, para representar a los miembros
que participan en una selección del mundial y un enumerado que los diferencie por
tipo, por ejemplo: Jugador, Seleccionador, Médico, etc.
 */
struct Miembro{
    var miembroID: String
    var nombre:String
    var apellidos:String
    var funcion:Cargos
    
    
    
    enum Cargos:String{
        
        case JUGADOR = "Jugador"
        case CAPITAN = "Capitán"
        case SELECCIONADOR = "Seleccionador"
        case MEDICO = "Médico"
        case NUTRICIONISTA = "Nutricionista"
        case FISIOTERAPEUTA = "Fisioterapeuta"
        
    }

}


//MARK: - EJERCICIO 6 -
/*
 - Crear las clases necesarias, con los atributos mínimos, para representar las
 selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que
 represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada
 selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc
 */

struct Seleccion{
    var seleccionID: String
    var nombre:String
    var pais: String
    var jugadores:[Miembro]
    var equipoTecnico:[Miembro]
}

struct Mundial{
    var listaSelecciones:Seleccion
    
}



func generadorDeSeleccionesYEquipos(){
    var listaSelecciones:[Seleccion] = []
    
    // Selección Española:
    let seleccionadorE = Miembro(miembroID: "se001", nombre: "Luis", apellidos: "Enrique", funcion: .SELECCIONADOR)
    let jugador1E = Miembro(miembroID: "je001", nombre: "Sergio", apellidos: "Busquets", funcion: .CAPITAN)
    let jugador2E = Miembro(miembroID: "je002", nombre: "David", apellidos: "Villa", funcion: .JUGADOR)
    let tecnico1E = Miembro(miembroID: "te001", nombre: "Eva", apellidos: "Inventado", funcion: .FISIOTERAPEUTA)
    listaSelecciones.append(Seleccion(seleccionID: "t001", nombre: "La Roja", pais: "España", jugadores: [jugador1E,jugador2E], equipoTecnico: [seleccionadorE,tecnico1E]))
    
    //Selección Brasileña:
    let seleccionadorB = Miembro(miembroID: "s001", nombre: "Tite", apellidos: "", funcion: .SELECCIONADOR)
    let jugador1B = Miembro(miembroID: "jb001", nombre: "Thiago", apellidos: "Silva", funcion: .CAPITAN)
    let jugador2B = Miembro(miembroID: "jb002", nombre: "Alex", apellidos: "Sandro", funcion: .JUGADOR)
    let tecnico1B = Miembro(miembroID: "tb001", nombre: "Eva2", apellidos: "Inventado2", funcion: .FISIOTERAPEUTA)
    listaSelecciones.append(Seleccion(seleccionID: "t002", nombre: "La Brasileña", pais: "Brasil", jugadores: [jugador1B, jugador2B], equipoTecnico: [seleccionadorB,tecnico1B]))

    //Selección Francesa:
    let seleccionadorF = Miembro(miembroID: "sf001", nombre: "Tite", apellidos: "", funcion: .SELECCIONADOR)
    let jugador1F = Miembro(miembroID: "jf001", nombre: "Thiago", apellidos: "Silva", funcion: .CAPITAN)
    let jugador2F = Miembro(miembroID: "jf002", nombre: "Alex", apellidos: "Sandro", funcion: .JUGADOR)
    let tecnico1F = Miembro(miembroID: "tf001", nombre: "Eva2", apellidos: "Inventado3", funcion: .FISIOTERAPEUTA)
    listaSelecciones.append(Seleccion(seleccionID: "t003", nombre: "La Francesa", pais: "Francia", jugadores: [jugador1F, jugador2F], equipoTecnico: [seleccionadorF,tecnico1F]))

    //Selección Alemana:
    let seleccionadorA = Miembro(miembroID: "sa001", nombre: "Hansi", apellidos: "Flick", funcion: .SELECCIONADOR)
    let jugador1A = Miembro(miembroID: "ja001", nombre: "Manuel", apellidos: "Neuer", funcion: .CAPITAN)
    let jugador2A = Miembro(miembroID: "ja002", nombre: "Kai", apellidos: "Havertz", funcion: .JUGADOR)
    let tecnico1A = Miembro(miembroID: "ta001", nombre: "Elina", apellidos: "Inventado4", funcion: .FISIOTERAPEUTA)
    listaSelecciones.append(Seleccion(seleccionID: "t004", nombre: "La Alemana", pais: "Alemania", jugadores: [jugador1A, jugador2A], equipoTecnico: [seleccionadorA,tecnico1A]))
    
    // Selección Croata:
    let seleccionadorC = Miembro(miembroID: "sc001", nombre: "Zlatko", apellidos: "Dalic", funcion: .SELECCIONADOR)
    let jugador1C = Miembro(miembroID: "jc001", nombre: "Luka", apellidos: "Modric", funcion: .CAPITAN)
    let jugador2C = Miembro(miembroID: "jc002", nombre: "Demagoj", apellidos: "Vida", funcion: .JUGADOR)
    let tecnico1C = Miembro(miembroID: "tc001", nombre: "Ivanka", apellidos: "Inventado5", funcion: .FISIOTERAPEUTA)
    listaSelecciones.append(Seleccion(seleccionID: "t005", nombre: "La Croata", pais: "Croacia", jugadores: [jugador1C,jugador2C], equipoTecnico: [seleccionadorC,tecnico1C]))
    
    //Selección Koreana
    let seleccionadorK = Miembro(miembroID: "sk001", nombre: "Paulo", apellidos: "Bento", funcion: .SELECCIONADOR)
    let jugador1K = Miembro(miembroID: "jk001", nombre: "Heung-min", apellidos: "Son", funcion: .CAPITAN)
    let jugador2K = Miembro(miembroID: "jk002", nombre: "Min-jae", apellidos: "Kim", funcion: .JUGADOR)
    let tecnico1K = Miembro(miembroID: "tk001", nombre: "Eun", apellidos: "Kim Jong", funcion: .FISIOTERAPEUTA)
    listaSelecciones.append(Seleccion(seleccionID: "t006", nombre: "La Koreana", pais: "Korea del Sur", jugadores: [jugador1K,jugador2K], equipoTecnico: [seleccionadorK,tecnico1K]))
    
    
    //Selección Ghana
    let seleccionadorG = Miembro(miembroID: "sg001", nombre: "Vacante", apellidos: "No tienen Seleccionador", funcion: .SELECCIONADOR)
    let jugador1G = Miembro(miembroID: "jg001", nombre: "André", apellidos: "Ayew", funcion: .CAPITAN)
    let jugador2G = Miembro(miembroID: "jg002", nombre: "Iñaki", apellidos: "Williams", funcion: .JUGADOR)
    let tecnico1G = Miembro(miembroID: "tg001", nombre: "Mohammed", apellidos: "Kudus", funcion: .FISIOTERAPEUTA)
    listaSelecciones.append(Seleccion(seleccionID: "t007", nombre: "La Ghana", pais: "Ghana", jugadores: [jugador1G,jugador2G], equipoTecnico: [seleccionadorG,tecnico1G]))
    
    //Selección Japonesa
    let seleccionadorJ = Miembro(miembroID: "sj001", nombre: "Hajime", apellidos: "Moriyasu", funcion: .SELECCIONADOR)
    let jugador1J = Miembro(miembroID: "jj001", nombre: "Maya", apellidos: "Yoshida", funcion: .CAPITAN)
    let jugador2J = Miembro(miembroID: "jj002", nombre: "Ao", apellidos: "Tanaka", funcion: .JUGADOR)
    let tecnico1J = Miembro(miembroID: "tj001", nombre: "Sakura", apellidos: "Kurogane", funcion: .FISIOTERAPEUTA)
    listaSelecciones.append(Seleccion(seleccionID: "t008", nombre: "La Nipona", pais: "Japón", jugadores: [jugador1J,jugador2J], equipoTecnico: [seleccionadorJ,tecnico1J]))
    
}

//MARK: - EJERCICIO 7 -

class Partido {
    /*
    var equipoLocal: Seleccion{
        listaSelecciones.randomElement()
        return -1
    }
     */
    var equipoVisitante: Seleccion
    var resultado: String
     
   
    init(equipoVisitante: Seleccion, resultado: String) {
        self.equipoVisitante = equipoVisitante
        self.resultado = resultado
    }
    
}
