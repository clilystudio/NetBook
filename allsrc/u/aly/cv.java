package u.aly;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class cv
{
  private ct a;
  private Context b;
  private ch c;

  public cv(Context paramContext)
  {
    if (paramContext == null)
      throw new RuntimeException("Context is null, can't track event");
    this.b = paramContext.getApplicationContext();
    this.a = new ct(this.b);
    this.c = ch.a(this.b);
  }

  private static boolean a(String paramString)
  {
    if (paramString != null)
    {
      int i = paramString.trim().getBytes().length;
      if ((i > 0) && (i <= 128))
        return true;
    }
    bt.b("MobclickAgent", "Event id is empty or too long in tracking Event");
    return false;
  }

  private static boolean b(String paramString)
  {
    if (paramString == null);
    do
      return true;
    while (paramString.trim().getBytes().length <= 256);
    bt.b("MobclickAgent", "Event label or value is empty or too long in tracking Event");
    return false;
  }

  public final void a(String paramString1, String paramString2, long paramLong, int paramInt)
  {
    if ((!a(paramString1)) || (!b(paramString2)))
      return;
    HashMap localHashMap = new HashMap();
    if (paramString2 == null)
      paramString2 = "";
    localHashMap.put(paramString1, paramString2);
    this.c.a(new ab(paramString1, localHashMap, paramLong, paramInt));
  }

  public final void a(String paramString, Map<String, Object> paramMap, long paramLong)
  {
    while (true)
    {
      try
      {
        if (!a(paramString))
          return;
        if ((paramMap == null) || (paramMap.isEmpty()))
        {
          bt.b("MobclickAgent", "map is null or empty in onEvent");
          i = 0;
          if (i == 0)
            break;
          this.c.a(new ab(paramString, paramMap, paramLong, -1));
          return;
        }
      }
      catch (Exception localException)
      {
        bt.b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", localException);
        return;
      }
      Iterator localIterator = paramMap.entrySet().iterator();
      boolean bool;
      do
      {
        Map.Entry localEntry;
        do
        {
          if (!localIterator.hasNext())
          {
            i = 1;
            break;
          }
          localEntry = (Map.Entry)localIterator.next();
          if (!a((String)localEntry.getKey()))
          {
            i = 0;
            break;
          }
          if (localEntry.getValue() != null)
            continue;
          i = 0;
          break;
        }
        while (!(localEntry.getValue() instanceof String));
        bool = b(localEntry.getValue().toString());
      }
      while (bool);
      int i = 0;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cv
 * JD-Core Version:    0.6.0
 */