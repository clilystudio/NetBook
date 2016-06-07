package cn.sharesdk.framework.utils;

public abstract class g
  implements Escaper
{
  private static final ThreadLocal<char[]> a = new i();

  private static final char[] a(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2];
    if (paramInt1 > 0)
      System.arraycopy(paramArrayOfChar, 0, arrayOfChar, 0, paramInt1);
    return arrayOfChar;
  }

  protected static final int b(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      int i = paramInt1 + 1;
      int j = paramCharSequence.charAt(paramInt1);
      if ((j < 55296) || (j > 57343))
        return j;
      if (j <= 56319)
      {
        if (i == paramInt2)
          return -j;
        char c = paramCharSequence.charAt(i);
        if (Character.isLowSurrogate(c))
          return Character.toCodePoint(j, c);
        throw new IllegalArgumentException("Expected low surrogate but got char '" + c + "' with value " + c + " at index " + i);
      }
      throw new IllegalArgumentException("Unexpected low surrogate character '" + j + "' with value " + j + " at index " + (i - 1));
    }
    throw new IndexOutOfBoundsException("Index exceeds specified range");
  }

  protected int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      int i = b(paramCharSequence, paramInt1, paramInt2);
      if ((i >= 0) && (a(i) == null))
      {
        if (Character.isSupplementaryCodePoint(i));
        for (int j = 2; ; j = 1)
        {
          paramInt1 += j;
          break;
        }
      }
    }
    return paramInt1;
  }

  protected final String a(String paramString, int paramInt)
  {
    int i = paramString.length();
    char[] arrayOfChar1 = (char[])a.get();
    int j = 0;
    char[] arrayOfChar2 = arrayOfChar1;
    int k = 0;
    if (paramInt < i)
    {
      int i1 = b(paramString, paramInt, i);
      if (i1 < 0)
        throw new IllegalArgumentException("Trailing high surrogate at end of input");
      char[] arrayOfChar3 = a(i1);
      if (arrayOfChar3 != null)
      {
        int i4 = paramInt - j;
        int i5 = k + i4 + arrayOfChar3.length;
        if (arrayOfChar2.length < i5)
          arrayOfChar2 = a(arrayOfChar2, k, 32 + (i5 + (i - paramInt)));
        if (i4 > 0)
        {
          paramString.getChars(j, paramInt, arrayOfChar2, k);
          k += i4;
        }
        if (arrayOfChar3.length > 0)
        {
          System.arraycopy(arrayOfChar3, 0, arrayOfChar2, k, arrayOfChar3.length);
          k += arrayOfChar3.length;
        }
      }
      if (Character.isSupplementaryCodePoint(i1));
      for (int i2 = 2; ; i2 = 1)
      {
        int i3 = i2 + paramInt;
        paramInt = a(paramString, i3, i);
        j = i3;
        break;
      }
    }
    int m = i - j;
    if (m > 0)
    {
      int n = m + k;
      if (arrayOfChar2.length < n)
        arrayOfChar2 = a(arrayOfChar2, k, n);
      paramString.getChars(j, i, arrayOfChar2, k);
      k = n;
    }
    return new String(arrayOfChar2, 0, k);
  }

  protected abstract char[] a(int paramInt);

  public Appendable escape(Appendable paramAppendable)
  {
    c.a(paramAppendable);
    return new h(this, paramAppendable);
  }

  public String escape(String paramString)
  {
    int i = paramString.length();
    int j = a(paramString, 0, i);
    if (j == i)
      return paramString;
    return a(paramString, j);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.utils.g
 * JD-Core Version:    0.6.0
 */