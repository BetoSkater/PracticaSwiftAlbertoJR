import Foundation
//Este fichero contiene los métodos necesarios para la realización de los tres primeros ejercicios
public class Tool{
    public var primeList:[Int]
    public init() {
        self.primeList =  [2]
    }
    //MARK: - EJERCICIO 1 -
    //Calcular y generar lista con los primeros 100 #primos y hacer un print de los ultimos 10.
    
    public func getTheFirstHundredPrimeNumbers()->[Int]{
        var number:Int = 2;
        repeat{
            number += 1
            primeNumberEvaluation(number: number)
        }while primeList.count < 100
        
        return primeList
        //print(primeList.suffix(10))
    }
    
    func primeNumberEvaluation (number: Int){
        var isPrime:Bool = true
        for index in stride(from: 2, through: number-1, by: 1){
            if (number % index == 0){
                isPrime = false
                break
            }
        }
        if isPrime  {addPrimeNumber(add: number)}
    }
    
    func addPrimeNumber(add newPrime:Int){
        primeList.append(newPrime)
    }
    
    
    //MARK: - EJERCICIO 2-
    
    public func addTheFirst50PrimeNumbers()->Int{
        var addition: Int = 0
        
        if primeList.count == 1 {
            getTheFirstHundredPrimeNumbers()
        }else{
            
            for prime in primeList.prefix(50){
                addition += prime
            }
            
        }
        return addition
    }
    
    //MARK: -EJERCICIO 3-
    
    //Nota: Se ha realizado una extensión para la resolución del ejercicio 3, se puede ver al final de este fichero.
    
    public func retrieveNamesWithMoreThanTwoVowels (namesList: [String])->[String]{
        var namesWithMoreThanTwoVowelsList:[String]=[]
        
        namesList.forEach { name in
            if name.numberOfVowels > 2 {namesWithMoreThanTwoVowelsList.append(name)}
        }
        return namesWithMoreThanTwoVowelsList
    }
    
    
    //MARK: - EJERCICIO 7 -
    /*
     public func twoRandomDifferentNumbersGeneratorBasedOnListSize(list: [NationalTeam])->[Int]{
     print("llega a la funcion")
     let randomNumberOne = Int.random(in: 0...list.count)
     var randomNumberTwo = Int.random(in: 0...list.count)
     print("numero 1 generado")
     print("numero2 antes while generado")
     while randomNumberOne == randomNumberTwo{
     randomNumberTwo = Int.random(in: 0...list.count)
     }
     print("casca aqui?")
     return [randomNumberOne,randomNumberTwo]
     }
     */
    
    
}
//MARK: - EJERCICIO 3 - String Class Extension
extension String{
    var numberOfVowels: Int{
        var numberOfVowels:Int = 0
        self.forEach { char in
            switch char{
            case "A","a","Á","á","À","à","Ä","ä","Â","â": numberOfVowels += 1
            case "E","e","É","é","È","è","Ë","ë","Ê","ê": numberOfVowels += 1
            case "I","i","Í","í","Ì","ì","Ï","ï","Î","î": numberOfVowels += 1
            case "O","o","Ó","ó","Ò","ò","Ö","ö","Ô","ô": numberOfVowels += 1
            case "U","u","Ú","ú","Ù","ù","Ü","ü","Û","û": numberOfVowels += 1
            default:
                numberOfVowels += 0
            }
        }
        return numberOfVowels
    }
}
