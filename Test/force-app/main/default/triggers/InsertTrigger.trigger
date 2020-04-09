trigger InsertTrigger on Case (After INsert) {
List<Case> childCases = new List<Case>();

for(Case parent: Trigger.new )
 {
Case child = new Case(ParentId = parent.Id, Subject = parent.Subject);
childCases.add(child);
}

}