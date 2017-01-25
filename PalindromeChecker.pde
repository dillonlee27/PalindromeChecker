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

  String cheese = noSpaces(word);
  cheese = cheese.toLowerCase();
  cheese = noPunctuation(cheese);
    if (cheese.equals(reverse(cheese)))
      return true;
  return false;


  
}

public String reverse(String str)
{
    String sNew = new String();
    for (int b= 1; b < str.length()+1; b++)
      sNew = sNew + str.substring(str.length()-b,str.length()-b+1);
    return sNew;
}

public String noSpaces(String sWord)
{
 String cheese = new String();
  for (int i = 0; i < sWord.length(); i++)
   if(sWord.substring(i,i+1).equals(" ") == false)
    cheese = cheese + sWord.substring(i,i+1);
  return cheese;
}

// public String noCapitals(String aWord)
// {
//   return aWord.toLowerCase();
// }

public String noPunctuation(String bWord)
{
  String rNew = new String();
    for(int i = 0; i < bWord.length(); i++)
        if(Character.isLetter(bWord.charAt(i)) == true)
          rNew = rNew + bWord.charAt(i);
  return rNew;
}










