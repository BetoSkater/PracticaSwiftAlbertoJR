import Foundation
//MARK: - EJERCICIO 4 -

//Crear un enumerado que permita indicar la posición de un jugador dentro de un campo de futbol.
public enum PlayerPosition:String{
    case GOALKEEPER = "Goalkeeper"
    case LEFT_BACK = "Left_Back"
    case CENTRE_BACK = "Centre_Back"
    case RIGHT_BACK = "Right_Back"
    case CENTRE_MIDFIELDER = "Centre_Mildfielder"
    case LEFT_MILDFIELDER = "Left_Mildfielder"
    case RIGHT_MILDFIELDER = "Right_Mildfielder"
    case STRIKER = "Striker"
}
