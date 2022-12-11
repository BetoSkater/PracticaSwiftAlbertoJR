import Foundation

public struct Match{
    
    public var localTeam:NationalTeam
    public var visitorTeam:NationalTeam
    public var matchResult: String {
        //Se pone como tope 10 goles.
        let localTeamScoredGoals = Int.random(in: 0...10)
        let visitorTeamScoredGoals = Int.random(in: 0...10)
        return "Partido: \(localTeam.country) \(localTeamScoredGoals) - \(visitorTeamScoredGoals) \(visitorTeam.country)"
    }
    
    public init(localTeam: NationalTeam, visitorTeam:NationalTeam){
       
        self.localTeam = localTeam
        self.visitorTeam = visitorTeam
    }
   
}
/*
extension Int{
 public var randomTeamScoredGoals : Int {
 return Int.random(in: 0 ... 10)
 }
}
*/
