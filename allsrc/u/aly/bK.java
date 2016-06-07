package u.aly;

public final class bK
{
  public final String a;
  public final byte b;
  public final short c;

  public bK()
  {
    this("", 0, 0);
  }

  public bK(String paramString, byte paramByte, short paramShort)
  {
    this.a = paramString;
    this.b = paramByte;
    this.c = paramShort;
  }

  public final String toString()
  {
    return "<TField name:'" + this.a + "' type:" + this.b + " field-id:" + this.c + ">";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bK
 * JD-Core Version:    0.6.0
 */