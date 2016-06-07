package com.clilystudio.netbook.util.a;

import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a
{
  public static InsideLink a(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 4))
      throw new IllegalArgumentException(paramString + " must have length above 4");
    Matcher localMatcher = Pattern.compile("^\\[\\[(.+?):(.+?) (.+)\\]\\]$").matcher(paramString);
    if (!localMatcher.find())
      throw new IllegalArgumentException(paramString + " is in wrong format");
    return InsideLinkFactory.create(localMatcher.group(1), localMatcher.group(2), localMatcher.group(3));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.a.a
 * JD-Core Version:    0.6.0
 */