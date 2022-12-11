import Foundation

public struct NationalTeam{
    var nationalTeamID: String
    var name:String
    var country: String
    var team:[Member]
    var technicalTeam:[Member]
    
    public init(nationalTeamID: String, name: String, country: String, team : [Member], technicalTeam: [Member]) {
        self.nationalTeamID = nationalTeamID
        self.name = name
        self.country = country
        self.team = team
        self.technicalTeam = technicalTeam
    }
}
