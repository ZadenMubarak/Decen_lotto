# Dentralized lottery system

#### javascript example without smartcontract 
#### what frontend would get from the backend

```js
import React from 'react';
import {useRef} from 'react';




const Mainy = () => {
  const inputRef = useRef(null);
  const winning_numbers = "45,67,8,7";

  function handleClick() {
    if(inputRef.current.value === winning_numbers){
      console.log('yaaaaaaaay',inputRef.current.value,'is right')

    }

    console.log(inputRef.current.value);
  }

  return (
    <div>
      <div className='Nav'>
        <h1>Decal<span className='prima'>Lotto</span></h1>

        <a href='/' className='home'>Home</a>

        <a href='/' className='Play'>Play</a>

        <a href='/' className='How'>How To Play</a>

        <a href='/' className='Res'>Results</a>

        <button className='conn'>Connect Algo Wallet</button>

      </div>
      <br/>
      <input
        ref={inputRef}
        type="text"
        id="message"
        name="message"
        className='inp'
        placeholder='play your four numbers here'
      />

      <br/> <br/>

      <button className='button-84' onClick={handleClick} >Play Numbers</button>
    </div>
  );
};

export default Mainy;

```

## when you play your numbers this is how you work it out:

```seperate your numbers by a space or comma ```
` hit the 'play numbers' button and get`
