import Foundation

public struct Match{
    
    public var localTeam:NationalTeam
    public var visitorTeam:NationalTeam
    public var localTeamGoals:Int?
    public var visitorTeamGoals:Int?
    
    public var matchResult: String {
        //Se pone como tope 10 goles.
        let localTeamScoredGoals = Int.random(in: 0...10)
        let visitorTeamScoredGoals = Int.random(in: 0...10)
        var calculatedMatchResult: String = ""
        if let localTeamGoals = localTeamGoals, let visitorTeamGoals = visitorTeamGoals{
            calculatedMatchResult = "\(localTeamGoals) - \(visitorTeamGoals)"
        }
        return calculatedMatchResult
    }
    
    public init(localTeam: NationalTeam, visitorTeam:NationalTeam){
        self.localTeam = localTeam
        self.visitorTeam = visitorTeam
    }
    public mutating func teamScoredGoals(){
        self.localTeamGoals = Int.random(in: 0...10)
        self.visitorTeamGoals = Int.random(in: 0...10)
    }
}

