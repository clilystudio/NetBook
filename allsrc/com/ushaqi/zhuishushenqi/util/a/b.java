package com.ushaqi.zhuishushenqi.util.a;

import com.ushaqi.zhuishushenqi.model.InsideLink;
import com.ushaqi.zhuishushenqi.model.InsideLinkFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class b
{
  public static InsideLink a(String paramString)
  {
    Matcher localMatcher = Pattern.compile("(.+?):(.+)").matcher(paramString);
    if ((localMatcher.find()) && (localMatcher.groupCount() == 2))
      return InsideLinkFactory.create(localMatcher.group(1), localMatcher.group(2));
    throw new IllegalStateException("Type not found exception");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.a.b
 * JD-Core Version:    0.6.0
 */