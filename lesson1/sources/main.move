module myWallet::Example {
    use std::debug;
    use std::string;

    fun sayHi() {
        debug::print(&string::utf8(b"Hi"));
    }

    #[test]
    fun test() {
        debug::print(&string::utf8(b"Hello, world!"));
    }
}