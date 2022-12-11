import Foundation

public class WorldCup{
    public var nationalTeamsList:[NationalTeam]
    
    public init(nationalTeamsList: [NationalTeam]) {
        self.nationalTeamsList = nationalTeamsList
    }
    
    public func generateGroups() {
        var tracer: [NationalTeam] = []
        //Se obtienen cuatro numeros aleatorios para generar el Grupo A, El Grupo B tendrá
        //los equipos restantes.
        
        while(tracer.count < 4){
            if tracer.isEmpty{
                tracer.append(nationalTeamsList.randomElement()!)
            }else{
                let posibleTeam = nationalTeamsList.randomElement()!
                var retrived = false
                
                tracer.forEach { nationalTeam in
                    print("\(nationalTeam.country) is \(posibleTeam.country) ")
                    if nationalTeam.country == posibleTeam.country {
                        retrived = true
                        print("\(nationalTeam.country) == \(posibleTeam.country) bool : \(notRetrived)")
                    }else{
                        retrived = false
                        print("El posible equipo es: \(posibleTeam.country)")
                    }
                }
                if !retrived {tracer.append(posibleTeam)}
            }
        }
       
        var groupA = Group(name: "Grupo A", groupTeams: tracer)
       
        print("_______")
        tracer.forEach { equipo in
            print(equipo.country)
        }
        
        var tracer2: [NationalTeam] = []
        
        while (tracer2.count < 4 || tracer2.isEmpty){
            print("llega al tracer 2 while y tracer2 tiene \(tracer2.count)")
            var addedTeamInGroupA = true
            var addedTeamInGroupB = false
           
            let posibleTeamB = nationalTeamsList.randomElement()
            
            
            tracer.forEach { team in
                if team.name == posibleTeamB!.name{
                    addedTeamInGroupA = true
                }else{
                    addedTeamInGroupA = false
                }
            }
            tracer2.forEach { team in
                if team.name == posibleTeamB!.name{
                    addedTeamInGroupB = true
                }else{
                    addedTeamInGroupB = false
                }
            }
            if (!addedTeamInGroupA && !addedTeamInGroupB) {tracer2.append(posibleTeamB!)}
            
        }
        
        
        
        print("---2---")
        print(tracer2.count)
        tracer2.forEach { equipo in
            print(equipo.country)
        }
       
        //return [Group]
    }
    
    public func getRandomNumber()->Int{
        Int.random(in: 0...nationalTeamsList.count-1)
    }
}



