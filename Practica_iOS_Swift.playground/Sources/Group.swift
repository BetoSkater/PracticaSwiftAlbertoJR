import Foundation

public struct Group{
    public var name : String
    public var groupTeams : [NationalTeam]
    public var matchList : [Match]?
    
    public init(name: String, groupTeams: [NationalTeam]){
        self.name = name
        self.groupTeams = groupTeams
    }
    
    public func totalPoints(team: [NationalTeam])->[PointsTeam]{
        /*Puntuaciones por cada posición del Array[0,1,2,3]
         Creo que es un poco chapuza el hacerlo así, pero los arrays tienen ordenación, por lo es algo más dificil que salg mal.
         */
        var totalPointsTeam:[PointsTeam] = []
        var totalGroupName:[String] = []
        var totalGroupScore: [Int] = [0,0,0,0]
        
        team.forEach { teamName in
            totalGroupName.append(teamName.country)
        }
        
        var auxGroup = team
        
        while auxGroup.count > 0 {
            var localTeam = team[auxGroup.count - 1]
            
            auxGroup.remove(at: auxGroup.count - 1)
            
            for(index, rival) in auxGroup.enumerated(){
                var matchTime = Match(localTeam: localTeam, visitorTeam: rival)
                matchTime.teamScoredGoals()
                //Se puede hacer un desempaquetamiento forzoso porque las dos variables adquieren valores al aplicar el metodo anterior.
                var localPoints = 0
                var visitorPoints = 0
                if matchTime.localTeamGoals! > matchTime.visitorTeamGoals!{
                    localPoints += 3
                }else if matchTime.localTeamGoals! < matchTime.visitorTeamGoals!{
                    visitorPoints += 3
                }else{
                    localPoints += 1
                    visitorPoints += 1
                }
                totalGroupScore[auxGroup.count] += localPoints
                totalGroupScore[index] += visitorPoints
            }
        }
        
        for count in 0...3{
            var teamWithPoints = PointsTeam(teamName: totalGroupName[count], teamPoints: totalGroupScore[count], isClassificated: false)
            totalPointsTeam.append(teamWithPoints)
        }
        let classificatedTeams = teamHasClassificated(groupResults: totalPointsTeam)
        
        for(index,teamPoint) in totalPointsTeam.enumerated(){
            if index == classificatedTeams[0] || index == classificatedTeams[1]{
                totalPointsTeam[index].isClassificated = true
            }
        }
        return totalPointsTeam
    }
    
    public func teamHasClassificated(groupResults: [PointsTeam])->[Int]{
        var highestTeamIndex = 0
        var highestTeamValue = 0
        var secondHighestTeamIndex = 0
        var secondHighestTeamValue = 0
        
        for(index,team) in groupResults.enumerated(){
            if team.teamPoints > highestTeamValue{
                highestTeamValue = team.teamPoints
                highestTeamIndex = index
                
            }else if team.teamPoints <= highestTeamValue &&  team.teamPoints >= secondHighestTeamValue{
                secondHighestTeamValue = team.teamPoints
                secondHighestTeamIndex = index
            }
        }
        return [highestTeamIndex,secondHighestTeamIndex]
    }
    
}
