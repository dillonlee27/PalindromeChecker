public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String cheese = new String();
  for (int a = 1; a < word.length()+1; a++)
    cheese = cheese + word.substring(word.length()-a,word.length()-a+1);
    if (cheese.equals(word))
      return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int a = 1; a < str.length()+1; a++)
      sNew = sNew + str.substring(str.length()-a,str.length()-a+1);
    return sNew;
}


