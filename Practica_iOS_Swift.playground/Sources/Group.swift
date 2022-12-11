import Foundation

public struct Group{
    public var name : String
    public var groupTeams : [NationalTeam]
    public var matchList : [Match]?
    
    public init(name: String, groupTeams: [NationalTeam]){
        self.name = name
        self.groupTeams = groupTeams
    }
    
}
