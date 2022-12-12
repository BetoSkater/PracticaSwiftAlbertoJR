import Foundation

public class WorldCup{
    public var nationalTeamsList:[NationalTeam]
    
    public init(nationalTeamsList: [NationalTeam]) {
        self.nationalTeamsList = nationalTeamsList
    }
    public func generateGroups() -> [Group]{
        var tracer: [NationalTeam] = []
        var tracer2: [NationalTeam] = nationalTeamsList
        //Se obtienen cuatro numeros aleatorios para generar el Grupo A, El Grupo B tendrá los equipos restantes.
        
        while(tracer.count < 4){
            let auxTeam = tracer2.randomElement()!
            var auxIndex = 0
            tracer.append(auxTeam)
            for (index, team) in tracer2.enumerated(){
                if team.country == auxTeam.country{ auxIndex = index}
            }
            tracer2.remove(at: auxIndex)
        }//while
        
        let groupA = Group(name: "Grupo A", groupTeams: tracer)
        let groupB = Group(name: "Grupo B", groupTeams: tracer2)
        
        return [groupA,groupB]
    }//funcion
}//Clase


