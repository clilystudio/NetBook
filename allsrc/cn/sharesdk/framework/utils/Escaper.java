package cn.sharesdk.framework.utils;

public abstract interface Escaper
{
  public abstract Appendable escape(Appendable paramAppendable);

  public abstract String escape(String paramString);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.utils.Escaper
 * JD-Core Version:    0.6.0
 */