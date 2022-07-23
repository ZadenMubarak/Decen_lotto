'reach 0.1';

//decentralized lottory system
//with generated numbers
//accepts guesses
//if the guess is right you win
//if not you lose 
//if there are some numbers you get told you got a few right

const numbers = View({Number: uint})

numbers_given = {
    num: numbers,
    fee_for_participation: UInt,
}

const lost_mssg = "Sorry you guessed wrong better luck next time";


const Main = Reach.App(() => {

    const winningNumbers = '5, 9, 12, 28';
    //
    const Player = API('Player',{
        ...numbers_given,
        pay(interact.fee_for_participacion)
        
    });
    commit()
    Player.publish();

    if (interact.numbers == winningNumbers) {
         Player.only(()=>{
            interact.acceptWager(12000);        
    })
    }
    else{

        return interact.notify(lost_mssg)
    }

    init();
})