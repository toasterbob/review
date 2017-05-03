function LetterChanges(str) {
  let result = "";
  str.split("").forEach(letter => {
      if(letter >= "a" && letter <= "z"){
          let num = letter.charCodeAt(0) + 1;
          if(num > 122){
            num -= 26;
          }
          let new_letter = String.fromCharCode(num);
          if(new_letter === "a" || new_letter === "e" || new_letter === "i" || new_letter === "o" || new_letter === "u"){
              new_letter = new_letter.toUpperCase();
          }
          result += new_letter;
      } else {
          result += letter;
      }
  })
  return result;

}

function LetterChanges2(str) {
    let result = "";
    str.split("").forEach(letter => {
        if(letter >= "a" && letter <= "z"){
            let num = letter.charCodeAt() + 1;
            num = num === 123 ? 123 - 26 : num;
            let new_letter = String.fromCharCode(num);
            if(new_letter === "a" || new_letter === "e" || new_letter === "i" || new_letter === "o" || new_letter === "u" ){
                new_letter = new_letter.toUpperCase();
            }
            result += new_letter;
        } else {
            result += letter;
        }
     })
    return result;
}

function LetterChanges3(str) {
  let result = "";
  str.split("").forEach(letter => {
      if(letter >= "a" && letter <= "z"){
          let num = letter.charCodeAt() + 1;
          if(num >= 123) num -= 26;
          letter = String.fromCharCode(num);
          if(letter === "a" || letter === "e" || letter === "i" || letter === "o" || letter === "u" ) {
              letter = letter.toUpperCase();
          }

      }
      result += letter;
  })
  return result;

}

function LetterChanges4(str) {

  // code goes here
  var converted = str.replace(/[a-z]/gi,function(char){
      return (char === 'z' || char === 'Z') ? 'a' :String.fromCharCode(char.charCodeAt()+1);
  });

  var capitalized = converted.replace(/a|e|i|o|u/gi,function(vowel){
      return vowel.toUpperCase();
  });
  return capitalized;

}
