package cn.sharesdk.framework.statistics.b;

import android.graphics.Bitmap;
import com.mob.tools.b.e;
import java.util.ArrayList;
import java.util.HashMap;

public class f$a
{
  public String a = "";
  public String b;
  public ArrayList<String> c = new ArrayList();
  public ArrayList<String> d = new ArrayList();
  public ArrayList<String> e = new ArrayList();
  public ArrayList<Bitmap> f = new ArrayList();
  public HashMap<String, Object> g;

  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("text", this.b);
    localHashMap.put("url", this.c);
    if ((this.d != null) && (this.d.size() > 0))
      localHashMap.put("imgs", this.d);
    if (this.g != null)
      localHashMap.put("attch", new e().a(this.g));
    return new e().a(localHashMap);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.b.f.a
 * JD-Core Version:    0.6.0
 */