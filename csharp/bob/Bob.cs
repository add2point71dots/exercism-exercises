using System.Text.RegularExpressions;

public static class Bob
{
    public static string Response(string statement)
    {
        string strippedStatement = Regex.Replace(statement, @"\s+", "");
        if (string.IsNullOrWhiteSpace(statement))
        {
            return "Fine. Be that way!";
        }
        else if (statement == statement.ToUpper() && Regex.IsMatch(statement, @"[A-Z]+"))
        {
           return "Whoa, chill out!";
        }
        else if (strippedStatement.Substring(strippedStatement.Length-1, 1) == "?")
        {
            return "Sure.";
        }
        else
        {
            return "Whatever.";
        }
    }
}
