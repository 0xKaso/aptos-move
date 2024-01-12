module 0x0::Vector{
    use std::debug;
    use std::vector;

    const ARRAY:vector<u64> = vector[1,2,4,8,16,32];

    #[test]
    fun test(){
        debug::print(&ARRAY);
    }

    #[test]
    fun test_empty(){
        let v:vector<u64> = vector::empty<u64>();
        debug::print(&v);
    }

    #[test]
    fun test_push(){
        let v:vector<u64> = vector::empty<u64>();
        vector::push_back(&mut v,666);
        vector::push_back(&mut v,888);
        debug::print(&v);
    }

    #[test]
    fun test_append(){
        let v:vector<u64> = vector[1,2,4,8,16,32];
        let v2:vector<u64> = vector[64,128,256,512,1024,2048];
        vector::append(&mut v,v2);
        debug::print(&v);
    }
    
    #[test]
    fun test_pop(){
        let v:vector<u64> = vector[1,2,4,8,16,32];
        debug::print(&v);
        vector::pop_back(&mut v);
        debug::print(&v);
    }

    #[test]
    fun test_remove(){
        let v:vector<u64> = vector[1,2,4,8,16,32];
        debug::print(&v);
        vector::remove(&mut v,3);
        debug::print(&v);
    }

    // #[test]
    // fun test_destory(){
    //     let v:vector<u64> = vector[1,2,4,8,16,32];
    //     vector::destroy_empty(v);

    //     debug::print(&v);
    // }

    #[test]
    fun test_contains(){
        let v:vector<u64> = vector[1,2,4,8,16,32];
        let element:u64 = 5;
        let element2:u64 = 8;
        debug::print(&v);
        debug::print(&vector::contains(&v,&element));
        debug::print(&vector::contains(&v,&element2));
    }

    #[test]
    fun test_indexof(){
        let v:vector<u64> = vector[1,2,4,8,16,32];
        let element:u64 = 8;
        let element2:u64 = 8;
        debug::print(&v);

        let (isIndex, index) = vector::index_of(&v,&element);
        debug::print(&index);
        debug::print(&isIndex);
        // debug::print(&vector::index_of(&v,&element));
        // debug::print(&vector::index_of(&v,&element2));
    }

    #[test]
    fun test_swap_remove(){
        let v:vector<u64> = vector[1,2,4,8,16,32];
        debug::print(&v);

        let element:u64 = 1;
        vector::swap_remove(&mut v,element);

        debug::print(&v);
    }
    // #[test]
    // fun test_borrow(){
    //     let v:vector<u64> = vector[1,2,4,8,16,32];
    //     let v2 = v::borrow_mut(0,1);

    //     // debug::print(&v);
    //     debug::print(&v2);
    // }

    
}