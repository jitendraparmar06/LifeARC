global class Schedule implements Schedulable {
    global void execute(SchedulableContext SC) {
        batchAccountUpdate  acc = new batchAccountUpdate();
        database.executeBatch(acc,200);
    }
}