#[rustler::nif]
fn add(a: i64, b: i64) -> i64 {
    a + b
}

fn load<'a>(_: rustler::Env<'a>, _: rustler::Term<'a>) -> bool {
    println!("Hello world");

    true
}

rustler::init!("Elixir.Demo", [add], load = load);
