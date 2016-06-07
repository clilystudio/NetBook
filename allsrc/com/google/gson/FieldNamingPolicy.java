package com.google.gson;

public enum FieldNamingPolicy
  implements FieldNamingStrategy
{
  static
  {
    LOWER_CASE_WITH_UNDERSCORES = new FieldNamingPolicy.4("LOWER_CASE_WITH_UNDERSCORES", 3);
    LOWER_CASE_WITH_DASHES = new FieldNamingPolicy.5("LOWER_CASE_WITH_DASHES", 4);
    FieldNamingPolicy[] arrayOfFieldNamingPolicy = new FieldNamingPolicy[5];
    arrayOfFieldNamingPolicy[0] = IDENTITY;
    arrayOfFieldNamingPolicy[1] = UPPER_CAMEL_CASE;
    arrayOfFieldNamingPolicy[2] = UPPER_CAMEL_CASE_WITH_SPACES;
    arrayOfFieldNamingPolicy[3] = LOWER_CASE_WITH_UNDERSCORES;
    arrayOfFieldNamingPolicy[4] = LOWER_CASE_WITH_DASHES;
    $VALUES = arrayOfFieldNamingPolicy;
  }

  private static String modifyString(char paramChar, String paramString, int paramInt)
  {
    if (paramInt < paramString.length())
      return paramChar + paramString.substring(paramInt);
    return String.valueOf(paramChar);
  }

  private static String separateCamelCase(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < paramString1.length(); i++)
    {
      char c = paramString1.charAt(i);
      if ((Character.isUpperCase(c)) && (localStringBuilder.length() != 0))
        localStringBuilder.append(paramString2);
      localStringBuilder.append(c);
    }
    return localStringBuilder.toString();
  }

  private static String upperCaseFirstLetter(String paramString)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    for (char c = paramString.charAt(0); (i < -1 + paramString.length()) && (!Character.isLetter(c)); c = paramString.charAt(i))
    {
      localStringBuilder.append(c);
      i++;
    }
    if (i == paramString.length())
      paramString = localStringBuilder.toString();
    do
      return paramString;
    while (Character.isUpperCase(c));
    return modifyString(Character.toUpperCase(c), paramString, i + 1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.google.gson.FieldNamingPolicy
 * JD-Core Version:    0.6.0
 */