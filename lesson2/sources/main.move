module 0x0::Vaules{
    use std::string;
    use std::debug;

    const NUM_U8:u8 = 10;
    const NUM_U64:u64 = 1844674407370955200;

    const BOOLS:bool = true;

    // const ADDR:address = 0x1;
    const ADDR2:address = @0x2;
    const ADDR3:address = @0x00000000000000000000000000000003;

    #[test]
    fun test(){
       debug::print(&NUM_U8);
    }

    #[test]
    fun test2(){
        debug::print(&NUM_U64);
        debug::print(&(NUM_U8 as u64));
    }

    #[test]
    fun test3(){
        // debug::print(&ADDR);
        debug::print(&ADDR2);
        debug::print(&ADDR3);
    }
}