function FirstReverse(str) {

  let reverse = "";
  str.split("").forEach(letter => {
      reverse = letter + reverse;
  });
  return reverse;


}
