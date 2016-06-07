package m.framework.network;

public class KVPair<T>
{
  public final String name;
  public final T value;

  public KVPair(String paramString, T paramT)
  {
    this.name = paramString;
    this.value = paramT;
  }

  public String toString()
  {
    return this.name + " = " + this.value;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.KVPair
 * JD-Core Version:    0.6.0
 */