public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A man! A Plan! A Canal! Panama!"};
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
      println(reverse(lines[i]));
    }
  }
}
public boolean palindrome(String word)
{
  String str = new String();
  for (int x = 0; x <= word.length() - 1; x++) {
    if (Character.isLetter(word.charAt(x))) {
      str = str + word.substring(x, x + 1).toLowerCase();
    }
  }
  println(str);
  if (str.equals(reverse(str))) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int len = str.length() - 1 ;
    for (int x = 0; x <= str.length() - 1; x++) {
      
      sNew = sNew + str.substring(str.length() - x - 1, str.length() - x);
    }
    return sNew;
}
