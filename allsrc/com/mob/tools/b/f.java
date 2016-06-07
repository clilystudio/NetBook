package com.mob.tools.b;

import java.io.PrintStream;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;

public final class f
{
  private CharacterIterator a;
  private char b;
  private int c;

  private boolean a()
  {
    boolean bool1;
    if ((!b("true")) && (!b("false")) && (!b("null")) && (!b()))
    {
      if ((Character.isDigit(this.b)) || (this.b == '-'))
        break label93;
      bool1 = false;
    }
    while (true)
    {
      int i;
      if ((!bool1) && (!a('{', '}', true)))
      {
        boolean bool2 = a('[', ']', false);
        i = 0;
        if (!bool2);
      }
      else
      {
        i = 1;
      }
      return i;
      label93: int j = this.c;
      if (this.b == '-')
        d();
      if (this.b == '0')
        d();
      while (true)
      {
        if (this.b != '.')
          break label216;
        d();
        if (Character.isDigit(this.b))
        {
          while (Character.isDigit(this.b))
            d();
          if (Character.isDigit(this.b))
          {
            while (Character.isDigit(this.b))
              d();
            continue;
          }
          bool1 = a("number", j);
          break;
        }
      }
      bool1 = a("number", j);
      continue;
      label216: if ((this.b == 'e') || (this.b == 'E'))
      {
        d();
        if ((this.b == '+') || (this.b == '-'))
          d();
        if (Character.isDigit(this.b))
          while (Character.isDigit(this.b))
            d();
        bool1 = a("number", j);
        continue;
      }
      bool1 = true;
    }
  }

  private boolean a(char paramChar1, char paramChar2, boolean paramBoolean)
  {
    if (this.b != paramChar1)
      return false;
    d();
    e();
    if (this.b == paramChar2)
    {
      d();
      return true;
    }
    while (true)
    {
      d();
      e();
      while (true)
      {
        if (!a())
          break label152;
        e();
        if (this.b == ',')
        {
          d();
          e();
          if (!paramBoolean)
            continue;
          int i = this.c;
          if (!b())
            return a("string", i);
          e();
          if (this.b == ':')
            break;
          return a("colon", this.c);
        }
      }
    }
    if (this.b != paramChar2)
    {
      return a("comma or " + paramChar2, this.c);
      label152: return a("value", this.c);
    }
    d();
    return true;
  }

  private static boolean a(String paramString, int paramInt)
  {
    PrintStream localPrintStream = System.out;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    arrayOfObject[2] = System.getProperty("line.separator");
    localPrintStream.printf("type: %s, col: %s%s", arrayOfObject);
    return false;
  }

  private boolean b()
  {
    if (this.b != '"')
      return false;
    int i = this.c;
    d();
    int j = 0;
    label23: if (this.b != 65535)
    {
      if ((j == 0) && (this.b == '\\'))
        j = 1;
      label167: label171: 
      do
      {
        d();
        break label23;
        if (j == 0)
          continue;
        int k = -1 + this.c;
        boolean bool;
        if (" \\\"/bfnrtu".indexOf(this.b) < 0)
          bool = a("escape sequence  \\\",\\\\,\\/,\\b,\\f,\\n,\\r,\\t  or  \\uxxxx ", k);
        while (true)
        {
          if (!bool)
            break label171;
          j = 0;
          break;
          if (this.b == 'u')
          {
            d();
            if (c())
            {
              d();
              if (c())
              {
                d();
                if (c())
                {
                  d();
                  if (c())
                    break label167;
                }
              }
            }
            bool = a("unicode escape sequence  \\uxxxx ", k);
            continue;
          }
          bool = true;
        }
        break;
      }
      while (this.b != '"');
      d();
      return true;
    }
    return a("quoted string", i);
  }

  private boolean b(String paramString)
  {
    StringCharacterIterator localStringCharacterIterator = new StringCharacterIterator(paramString);
    int i = localStringCharacterIterator.first();
    int j = this.b;
    int k = 0;
    if (j != i)
      return k;
    int m = this.c;
    int n = localStringCharacterIterator.next();
    label48: if (n != 65535)
    {
      int i1 = d();
      k = 0;
      if (n == i1);
    }
    while (true)
    {
      d();
      if (k != 0)
        break;
      a("literal " + paramString, m);
      return k;
      n = localStringCharacterIterator.next();
      break label48;
      k = 1;
    }
  }

  private boolean c()
  {
    return "0123456789abcdefABCDEF".indexOf(this.b) >= 0;
  }

  private char d()
  {
    this.b = this.a.next();
    this.c = (1 + this.c);
    return this.b;
  }

  private void e()
  {
    while (Character.isWhitespace(this.b))
      d();
  }

  public final boolean a(String paramString)
  {
    String str = paramString.trim();
    if ("".equals(str));
    do
    {
      return true;
      this.a = new StringCharacterIterator(str);
      this.b = this.a.first();
      this.c = 1;
      if (!a())
        return a("value", 1);
      e();
    }
    while (this.b == 65535);
    return a("end", this.c);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b.f
 * JD-Core Version:    0.6.0
 */