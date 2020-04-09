Public class displyrecords
{

List<Account> acct =[select Name,Type from Account];

Public List<Account> getacct()
{

return acct;
}

}