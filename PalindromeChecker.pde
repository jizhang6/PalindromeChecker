public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String simplify = onlyLetters(word.toLowerCase().replaceAll("\\s+", ""));
  String reversed = reverse(simplify);
  if (simplify.equals(reversed)) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for ( int i = str.length(); i > 0; i--) {
    sNew = sNew + str.charAt(i-1);
  }
  return sNew;
}

public String onlyLetters(String sString) {
  String answer = "";
  for (int i = 0; i < sString.length(); i++) {
    if ( Character.isLetter(sString.charAt(i))) {
      answer = answer + sString.charAt(i);
    }
  }
  return answer;
}

