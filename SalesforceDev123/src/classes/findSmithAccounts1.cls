public class findSmithAccounts1 {
    private final List<Account> accounts;

    public findSmithAccounts1() {
        accounts = [select Name from Account where Name LIKE 'Smith_%'];
    }

    public List<Account> getSmithAccounts() {
        return accounts;
    }
}