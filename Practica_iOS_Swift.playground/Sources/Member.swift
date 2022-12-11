import Foundation

 public struct Member{
    public var memberID: String
    public var name:String
    public var subname:String
    public var occupation:JobPosition
     /*
     He tenido que hacer el constructor de forma manual para poder tener un init publico con el que poder
      instanciar la struct desde Main
     */
     public init(memberID: String, name: String, subname: String, occupation:JobPosition) {
         self.memberID = memberID
         self.name = name
         self.subname = subname
         self.occupation = occupation
     }
    
    public enum JobPosition:String{
        
        case PLAYER = "Player"
        case CAPTAIN = "Captain"
        case HEAD_COACH = "Head_Coach"
        case MEDIC = "Medic"
        case NUTRITIONIST = "Nutritionist"
        case PHYSIOTHERAPIST = "Physiotherapist"
        
    }

}
