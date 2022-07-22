import {useRef} from 'react';
import './Navbar.css'


const Navbar = () => {
  const inputRef = useRef(null);
  const winning_numbers = "45,67,8,7";

  function handleClick() {
    if(inputRef.current.value === winning_numbers){
      console.log('yaaaaaaaay',inputRef.current.value,'is right')

    }

    // else{
    //   alert("nah wrong")
    //   console.warn(inputRef.current.value);
    //   console.log('try again',inputRef)
    // }

    console.log(inputRef.current.value);
  }

  return (
    <div>
      <br/>
      <input
        ref={inputRef}
        type="text"
        id="message"
        name="message"
      />

      <br/> <br/>

      <button className='button-84' onClick={handleClick} >Log message</button>

      <h2>message:</h2>
    </div>
  );
};

export default Navbar;
