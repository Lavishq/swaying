contract;

storage {
    count: u64 = 0
}

abi Counter {
    #[storage(read)]
    fn get() -> u64;

    #[storage(read, write)]
    fn inc() -> u64;

    #[storage(read, write)]
    fn dec() -> u64;
}

impl Counter for Contract {
    #[storage(read)]
    fn get() -> u64 {
        let fuckitfix = storage.count.read();
        fuckitfix
    }

    #[storage(read, write)]
    fn inc() -> u64 {
        let incremented = storage.count.read() + 1;
        storage.count.write(incremented);
        incremented
    }

    #[storage(read, write)]
    fn dec() -> u64 {
        let decremented = storage.count.read();
        storage.count.write(decremented - 1);
        decremented
    }
}
