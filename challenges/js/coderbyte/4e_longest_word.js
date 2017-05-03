function LongestWord(sen) {
  let longest = "";
  sen.split(" ").forEach(word => {
      let new_word = "";
      word.split("").forEach(letter => {
          if((letter.toLowerCase() >= "a" && letter.toLowerCase() <= "z") ||  (letter >= "0" && letter <= "9" )){
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


function LongestWord(sen) {

  sen = sen.trim();
  sen = sen.replace(/[^a-zA-Z0-9 ]/g, '');

  let longest = ""

  var arr = sen.split(" ").forEach(word => {
      if(word.length > longest.length) longest = word;
  })

  return longest;

}
