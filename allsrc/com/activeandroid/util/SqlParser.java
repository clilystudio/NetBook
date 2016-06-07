package com.activeandroid.util;

import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class SqlParser
{
  public static final int STATE_COMMENT = 2;
  public static final int STATE_COMMENT_BLOCK = 3;
  public static final int STATE_NONE = 0;
  public static final int STATE_STRING = 1;

  private static boolean isNewLine(char paramChar)
  {
    return (paramChar == '\r') || (paramChar == '\n');
  }

  private static boolean isWhitespace(char paramChar)
  {
    return (paramChar == '\r') || (paramChar == '\n') || (paramChar == '\t') || (paramChar == ' ');
  }

  public static List<String> parse(InputStream paramInputStream)
  {
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramInputStream);
    ArrayList localArrayList = new ArrayList();
    StringBuffer localStringBuffer = new StringBuffer();
    label262: label306: 
    while (true)
    {
      char c;
      try
      {
        Tokenizer localTokenizer = new Tokenizer(localBufferedInputStream);
        i = 0;
        if (!localTokenizer.hasNext())
          break label262;
        c = (char)localTokenizer.next();
        if (i != 3)
          continue;
        if (!localTokenizer.skip("*/"))
          continue;
        i = 0;
        continue;
        if (i != 2)
          continue;
        if (!isNewLine(c))
          continue;
        i = 0;
        continue;
        if ((i != 0) || (!localTokenizer.skip("/*")))
          continue;
        i = 3;
        continue;
        if ((i != 0) || (!localTokenizer.skip("--")))
          continue;
        i = 2;
        continue;
        if ((i == 0) && (c == ';'))
        {
          localArrayList.add(localStringBuffer.toString().trim());
          localStringBuffer.setLength(0);
          continue;
        }
      }
      finally
      {
        IOUtils.closeQuietly(localBufferedInputStream);
      }
      if ((i == 0) && (c == '\''));
      for (int i = 1; ; i = 0)
        do
        {
          if ((i != 0) && (i != 1))
            break label306;
          if ((i == 0) && (isWhitespace(c)))
          {
            if ((localStringBuffer.length() <= 0) || (localStringBuffer.charAt(-1 + localStringBuffer.length()) == ' '))
              break;
            localStringBuffer.append(' ');
            break;
          }
          localStringBuffer.append(c);
          break;
          IOUtils.closeQuietly(localBufferedInputStream);
          if (localStringBuffer.length() > 0)
            localArrayList.add(localStringBuffer.toString().trim());
          return localArrayList;
        }
        while ((i != 1) || (c != '\''));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.util.SqlParser
 * JD-Core Version:    0.6.0
 */