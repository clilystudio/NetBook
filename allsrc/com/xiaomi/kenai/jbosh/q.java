package com.xiaomi.kenai.jbosh;

abstract class q extends a<Integer>
{
  protected q(String paramString)
  {
    super(Integer.valueOf(a(paramString)));
  }

  private static int a(String paramString)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    throw new aa("Could not parse an integer from the value provided: " + paramString, localNumberFormatException);
  }

  protected final void a(int paramInt)
  {
    int i = ((Integer)a()).intValue();
    if (i < paramInt)
      throw new aa("Illegal attribute value '" + i + "' provided.  Must be >= " + paramInt);
  }

  public final int b()
  {
    return ((Integer)a()).intValue();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.q
 * JD-Core Version:    0.6.0
 */