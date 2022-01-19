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
  String forward = "";
  for (int i = 0; i < word.length(); i++)
  {
    if (word.charAt(i) != ' ' && Character.isLetter(word.charAt(i)))
    forward = forward + word.charAt(i);
  }
  if (forward.toLowerCase().equals(reverse(word).toLowerCase()) == true)
    return true;
  return false;
}

public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length() - 1; i >= 0; i--)
    if (str.charAt(i) != ' ' && Character.isLetter(str.charAt(i)))
      sNew = sNew + str.charAt(i);
  return sNew;
}
