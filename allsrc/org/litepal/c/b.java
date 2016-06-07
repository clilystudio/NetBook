package org.litepal.c;

import java.util.List;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

public final class b extends DefaultHandler
{
  private a a;

  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
  }

  public final void endDocument()
  {
  }

  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
  }

  public final void startDocument()
  {
    this.a = a.a();
    this.a.d().clear();
  }

  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    boolean bool1 = "dbname".equalsIgnoreCase(paramString2);
    int i = 0;
    if (bool1)
      if (i < paramAttributes.getLength());
    while (true)
    {
      return;
      if ("value".equalsIgnoreCase(paramAttributes.getLocalName(i)))
        this.a.a(paramAttributes.getValue(i).trim());
      i++;
      break;
      boolean bool2 = "version".equalsIgnoreCase(paramString2);
      int j = 0;
      if (bool2)
      {
        while (j < paramAttributes.getLength())
        {
          if ("value".equalsIgnoreCase(paramAttributes.getLocalName(j)))
            this.a.a(Integer.parseInt(paramAttributes.getValue(j).trim()));
          j++;
        }
        continue;
      }
      boolean bool3 = "mapping".equalsIgnoreCase(paramString2);
      int k = 0;
      if (bool3)
      {
        while (k < paramAttributes.getLength())
        {
          if ("class".equalsIgnoreCase(paramAttributes.getLocalName(k)))
            this.a.b(paramAttributes.getValue(k).trim());
          k++;
        }
        continue;
      }
      boolean bool4 = "cases".equalsIgnoreCase(paramString2);
      int m = 0;
      if (!bool4)
        continue;
      while (m < paramAttributes.getLength())
      {
        if ("value".equalsIgnoreCase(paramAttributes.getLocalName(m)))
          this.a.c(paramAttributes.getValue(m).trim());
        m++;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.c.b
 * JD-Core Version:    0.6.0
 */