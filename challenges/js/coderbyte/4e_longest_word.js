function LongestWord(sen) {
  let longest = "";
  sen.split(" ").forEach(word => {
      let new_word = "";
      word.split("").forEach(letter => {
          if(letter.toLowerCase() >= "a" && letter.toLowerCase() <= "z"){
              new_word += letter;
          }
      })
      word = new_word;
      if(word.length > longest.length) {
          longest = word;
      }
  })
  return longest;

}

// keep this function call here
LongestWord(readline());
