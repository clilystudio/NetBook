package com.squareup.okhttp;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class z
{
  private static final Pattern a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
  private static final Pattern b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
  private final String c;
  private final String d;

  private z(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.c = paramString1;
    this.d = paramString4;
  }

  public static z a(String paramString)
  {
    Matcher localMatcher1 = a.matcher(paramString);
    if (!localMatcher1.lookingAt())
      return null;
    String str1 = localMatcher1.group(1).toLowerCase(Locale.US);
    String str2 = localMatcher1.group(2).toLowerCase(Locale.US);
    Matcher localMatcher2 = b.matcher(paramString);
    int i = localMatcher1.end();
    Object localObject3;
    for (Object localObject1 = null; ; localObject1 = localObject3)
    {
      if (i >= paramString.length())
        break label204;
      localMatcher2.region(i, paramString.length());
      if (!localMatcher2.lookingAt())
        break;
      String str3 = localMatcher2.group(1);
      Object localObject2;
      if ((str3 != null) && (str3.equalsIgnoreCase("charset")))
        if (localMatcher2.group(2) != null)
          localObject2 = localMatcher2.group(2);
      while ((localObject1 != null) && (!((String)localObject2).equalsIgnoreCase((String)localObject1)))
      {
        throw new IllegalArgumentException("Multiple different charsets: " + paramString);
        localObject2 = localMatcher2.group(3);
        continue;
        localObject2 = localObject1;
      }
      int j = localMatcher2.end();
      localObject3 = localObject2;
      i = j;
    }
    label204: return (z)(z)new z(paramString, str1, str2, (String)localObject1);
  }

  public final Charset a(Charset paramCharset)
  {
    if (this.d != null)
      paramCharset = Charset.forName(this.d);
    return paramCharset;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof z)) && (((z)paramObject).c.equals(this.c));
  }

  public final int hashCode()
  {
    return this.c.hashCode();
  }

  public final String toString()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.z
 * JD-Core Version:    0.6.0
 */