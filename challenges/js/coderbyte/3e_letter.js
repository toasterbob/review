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
