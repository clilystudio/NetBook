package u.aly;

import java.io.Serializable;
import java.util.Map;

public class aa
  implements Serializable
{
  public long a = System.currentTimeMillis();
  public String b;
  public String c;
  public Map<String, Object> d;

  public String a()
  {
    return this.b + this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.aa
 * JD-Core Version:    0.6.0
 */