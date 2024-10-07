module MyModule::Crowdsourcing {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing a crowdsourcing project.
    struct Task has store, key {
        reward_pool: u64,   // Reward tokens available for the task
        description: vector<u8>, // Task description
    }

    /// Function to create a new task with an initial reward pool.
    public fun create_task(owner: &signer, description: vector<u8>, reward: u64) {
        let task = Task {
            reward_pool: reward,
            description,
        };
        move_to(owner, task);
    }


}
