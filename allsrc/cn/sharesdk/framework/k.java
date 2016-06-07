package cn.sharesdk.framework;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mob.tools.b.e;
import com.mob.tools.f;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class k extends f
{
  private k.a a = k.a.a;
  private Context b;
  private HashMap<String, HashMap<String, String>> c;
  private ArrayList<Platform> d;
  private HashMap<String, Integer> e;
  private HashMap<Integer, String> f;
  private HashMap<Integer, CustomPlatform> g;
  private HashMap<Integer, HashMap<String, Object>> h;
  private HashMap<Integer, Service> i;
  private String j;
  private boolean k;
  private String l;
  private boolean m;
  private boolean n;

  public k(Context paramContext)
  {
    super("Thread-" + Math.abs(31203));
    this.b = paramContext.getApplicationContext();
    this.c = new HashMap();
    this.d = new ArrayList();
    this.e = new HashMap();
    this.f = new HashMap();
    this.g = new HashMap();
    this.h = new HashMap();
    this.i = new HashMap();
  }

  private boolean a(cn.sharesdk.framework.statistics.a parama, HashMap<String, Object> paramHashMap1, HashMap<String, Object> paramHashMap2)
  {
    try
    {
      if (paramHashMap1.containsKey("error"))
      {
        com.mob.tools.log.d locald = cn.sharesdk.framework.utils.d.a();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = new e().a(paramHashMap1);
        locald.w("ShareSDK parse sns config ==>>", arrayOfObject);
        return false;
      }
      if (!paramHashMap1.containsKey("res"))
      {
        cn.sharesdk.framework.utils.d.a().d("ShareSDK platform config result ==>>", new Object[] { "SNS configuration is empty" });
        return false;
      }
      String str = (String)paramHashMap1.get("res");
      if (str == null)
        return false;
      paramHashMap2.putAll(parama.a(this.j, str));
      return true;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return false;
  }

  private void h()
  {
    while (true)
    {
      synchronized (this.c)
      {
        this.c.clear();
        i();
        if (!this.c.containsKey("ShareSDK"))
          continue;
        HashMap localHashMap2 = (HashMap)this.c.remove("ShareSDK");
        if (localHashMap2 == null)
          continue;
        if (this.j != null)
          continue;
        this.j = ((String)localHashMap2.get("AppKey"));
        if (localHashMap2.containsKey("UseVersion"))
        {
          str = (String)localHashMap2.get("UseVersion");
          this.l = str;
          return;
        }
      }
      String str = "latest";
    }
  }

  private void i()
  {
    try
    {
      XmlPullParserFactory localXmlPullParserFactory = XmlPullParserFactory.newInstance();
      localXmlPullParserFactory.setNamespaceAware(true);
      XmlPullParser localXmlPullParser = localXmlPullParserFactory.newPullParser();
      try
      {
        InputStream localInputStream2 = this.b.getAssets().open("ShareSDK.xml");
        localInputStream1 = localInputStream2;
        localXmlPullParser.setInput(localInputStream1, "utf-8");
        i1 = localXmlPullParser.getEventType();
        if (i1 != 1)
          if (i1 == 2)
          {
            str = localXmlPullParser.getName();
            localHashMap = new HashMap();
            int i2 = localXmlPullParser.getAttributeCount();
            for (int i3 = 0; i3 < i2; i3++)
              localHashMap.put(localXmlPullParser.getAttributeName(i3), localXmlPullParser.getAttributeValue(i3).trim());
          }
      }
      catch (Throwable localThrowable2)
      {
        InputStream localInputStream1;
        while (true)
        {
          String str;
          HashMap localHashMap;
          cn.sharesdk.framework.utils.d.a().w(localThrowable2);
          localInputStream1 = this.b.getAssets().open("ShareSDK.conf");
          continue;
          this.c.put(str, localHashMap);
          int i1 = localXmlPullParser.next();
        }
        localInputStream1.close();
        return;
      }
    }
    catch (Throwable localThrowable1)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable1);
    }
  }

  private void j()
  {
    new l(this).start();
  }

  private void k()
  {
    this.d.clear();
    ArrayList localArrayList = new i().a(this.b);
    if (localArrayList != null)
      this.d.addAll(localArrayList);
    synchronized (this.e)
    {
      synchronized (this.f)
      {
        Iterator localIterator = this.d.iterator();
        if (localIterator.hasNext())
        {
          Platform localPlatform = (Platform)localIterator.next();
          this.f.put(Integer.valueOf(localPlatform.getPlatformId()), localPlatform.getName());
          this.e.put(localPlatform.getName(), Integer.valueOf(localPlatform.getPlatformId()));
        }
      }
    }
    monitorexit;
    monitorexit;
  }

  private void l()
  {
    i locali = new i();
    locali.a(this);
    locali.a(this.b, this.j, this.handler, this.k, c());
  }

  public String a(int paramInt, String paramString)
  {
    synchronized (this.h)
    {
      String str = new i().a(paramInt, paramString, this.h);
      return str;
    }
  }

  public String a(Bitmap paramBitmap)
  {
    if (k.a.c != this.a)
      return null;
    return new i().a(this.b, paramBitmap);
  }

  public String a(String paramString1, boolean paramBoolean, int paramInt, String paramString2)
  {
    if (k.a.c != this.a)
      return paramString1;
    return new i().a(this.b, this.j, paramString1, paramBoolean, paramInt, paramString2);
  }

  public void a(int paramInt)
  {
    com.mob.tools.a.l.connectionTimeout = paramInt;
  }

  public void a(int paramInt1, int paramInt2)
  {
    synchronized (this.h)
    {
      new i().a(paramInt1, paramInt2, this.h);
      return;
    }
  }

  public void a(int paramInt, Platform paramPlatform)
  {
    new i().a(paramInt, paramPlatform);
  }

  public void a(Class<? extends Service> paramClass)
  {
    synchronized (this.i)
    {
      if (this.i.containsKey(Integer.valueOf(paramClass.hashCode())))
        return;
    }
    try
    {
      Service localService = (Service)paramClass.newInstance();
      this.i.put(Integer.valueOf(paramClass.hashCode()), localService);
      localService.a(this.b);
      localService.a(this.j);
      localService.onBind();
      monitorexit;
      return;
      localObject = finally;
      monitorexit;
      throw localObject;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public void a(String paramString)
  {
    this.j = paramString;
  }

  public void a(String paramString, int paramInt)
  {
    new i().a(paramString, paramInt);
  }

  public void a(String paramString1, String paramString2)
  {
    synchronized (this.c)
    {
      HashMap localHashMap2 = (HashMap)this.c.get(paramString1);
      this.c.put(paramString2, localHashMap2);
      return;
    }
  }

  public void a(String paramString, HashMap<String, Object> paramHashMap)
  {
    while (true)
    {
      HashMap localHashMap2;
      synchronized (this.c)
      {
        localHashMap2 = (HashMap)this.c.get(paramString);
        if (localHashMap2 != null)
          break label144;
        synchronized (new HashMap())
        {
          Iterator localIterator = paramHashMap.entrySet().iterator();
          if (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            String str = (String)localEntry.getKey();
            Object localObject3 = localEntry.getValue();
            if (localObject3 == null)
              continue;
            ???.put(str, String.valueOf(localObject3));
          }
        }
      }
      monitorexit;
      this.c.put(paramString, ???);
      monitorexit;
      return;
      label144: ??? = localHashMap2;
    }
  }

  public void a(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public boolean a(HashMap<String, Object> paramHashMap)
  {
    if (k.a.c != this.a)
    {
      cn.sharesdk.framework.utils.d.a().d("Statistics module unopened", new Object[0]);
      return false;
    }
    cn.sharesdk.framework.statistics.a locala = cn.sharesdk.framework.statistics.a.a(this.b);
    boolean bool = a(locala, locala.f(this.j), paramHashMap);
    if (bool)
    {
      this.n = true;
      new m(this, locala).start();
      return bool;
    }
    try
    {
      HashMap localHashMap = locala.g(this.j);
      bool = a(locala, localHashMap, paramHashMap);
      if (bool)
        locala.a(this.j, localHashMap);
      this.n = true;
      return bool;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      this.n = false;
    }
    return bool;
  }

  public Platform[] a()
  {
    long l1 = System.currentTimeMillis();
    ArrayList localArrayList2;
    synchronized (this.d)
    {
      if (this.a == k.a.a)
        return null;
      k.a locala1 = this.a;
      k.a locala2 = k.a.b;
      if (locala1 == locala2);
      try
      {
        this.d.wait();
        localArrayList2 = new ArrayList();
        Iterator localIterator1 = this.d.iterator();
        while (localIterator1.hasNext())
        {
          Platform localPlatform2 = (Platform)localIterator1.next();
          if ((localPlatform2 == null) || (!localPlatform2.b()))
            continue;
          localPlatform2.a();
          localArrayList2.add(localPlatform2);
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
          cn.sharesdk.framework.utils.d.a().w(localThrowable);
      }
    }
    Iterator localIterator2 = this.g.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Platform localPlatform1 = (Platform)((Map.Entry)localIterator2.next()).getValue();
      if ((localPlatform1 == null) || (!localPlatform1.b()))
        continue;
      localArrayList2.add(localPlatform1);
    }
    if (localArrayList2.size() <= 0)
      return null;
    Platform[] arrayOfPlatform = new Platform[localArrayList2.size()];
    for (int i1 = 0; i1 < arrayOfPlatform.length; i1++)
      arrayOfPlatform[i1] = ((Platform)localArrayList2.get(i1));
    com.mob.tools.log.d locald = cn.sharesdk.framework.utils.d.a();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - l1);
    locald.i("sort list use time: %s", arrayOfObject);
    return arrayOfPlatform;
  }

  public Platform b(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return null;
      Platform[] arrayOfPlatform = a();
      if (arrayOfPlatform == null)
        continue;
      int i1 = arrayOfPlatform.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        Platform localPlatform = arrayOfPlatform[i2];
        if (paramString.equals(localPlatform.getName()))
          return localPlatform;
      }
    }
  }

  public String b()
  {
    try
    {
      String str = new i().a();
      return str;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return "2.6.5";
  }

  public String b(String paramString1, String paramString2)
  {
    synchronized (this.c)
    {
      HashMap localHashMap2 = (HashMap)this.c.get(paramString1);
      if (localHashMap2 == null)
        return null;
      String str = (String)localHashMap2.get(paramString2);
      return str;
    }
  }

  public void b(int paramInt)
  {
    com.mob.tools.a.l.readTimout = paramInt;
  }

  public void b(Class<? extends Service> paramClass)
  {
    synchronized (this.i)
    {
      int i1 = paramClass.hashCode();
      if (this.i.containsKey(Integer.valueOf(i1)))
      {
        ((Service)this.i.get(Integer.valueOf(i1))).onUnbind();
        this.i.remove(Integer.valueOf(i1));
      }
      return;
    }
  }

  public void b(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }

  public boolean b(HashMap<String, Object> paramHashMap)
  {
    synchronized (this.h)
    {
      this.h.clear();
      boolean bool = new i().a(paramHashMap, this.h);
      return bool;
    }
  }

  public int c()
  {
    try
    {
      int i1 = new i().b();
      return i1;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return 56;
  }

  public int c(String paramString)
  {
    synchronized (this.e)
    {
      if (this.e.containsKey(paramString))
      {
        int i1 = ((Integer)this.e.get(paramString)).intValue();
        return i1;
      }
      return 0;
    }
  }

  public <T extends Service> T c(Class<T> paramClass)
  {
    synchronized (this.i)
    {
      if (this.a == k.a.a)
        return null;
      k.a locala1 = this.a;
      k.a locala2 = k.a.b;
      if (locala1 != locala2);
    }
    try
    {
      this.i.wait();
    }
    catch (Throwable localThrowable2)
    {
      try
      {
        while (true)
        {
          Service localService = (Service)paramClass.cast(this.i.get(Integer.valueOf(paramClass.hashCode())));
          monitorexit;
          return localService;
          localObject = finally;
          monitorexit;
          throw localObject;
          localThrowable2 = localThrowable2;
          cn.sharesdk.framework.utils.d.a().w(localThrowable2);
        }
      }
      catch (Throwable localThrowable1)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable1);
        monitorexit;
      }
    }
    return null;
  }

  public String c(int paramInt)
  {
    synchronized (this.f)
    {
      String str = (String)this.f.get(Integer.valueOf(paramInt));
      return str;
    }
  }

  public String d(String paramString)
  {
    if (k.a.c != this.a)
      return null;
    return new i().a(this.b, paramString);
  }

  public void d(Class<? extends CustomPlatform> paramClass)
  {
    synchronized (this.g)
    {
      if (this.g.containsKey(Integer.valueOf(paramClass.hashCode())))
        return;
    }
    try
    {
      Constructor localConstructor = paramClass.getConstructor(new Class[] { Context.class });
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.b;
      CustomPlatform localCustomPlatform = (CustomPlatform)localConstructor.newInstance(arrayOfObject);
      this.g.put(Integer.valueOf(paramClass.hashCode()), localCustomPlatform);
      synchronized (this.e)
      {
        HashMap localHashMap3 = this.f;
        monitorenter;
        if (localCustomPlatform != null);
        try
        {
          if (localCustomPlatform.b())
          {
            this.f.put(Integer.valueOf(localCustomPlatform.getPlatformId()), localCustomPlatform.getName());
            this.e.put(localCustomPlatform.getName(), Integer.valueOf(localCustomPlatform.getPlatformId()));
          }
          monitorexit;
          return;
          localObject1 = finally;
          throw localObject1;
        }
        finally
        {
          monitorexit;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public boolean d()
  {
    return this.m;
  }

  public void e(Class<? extends CustomPlatform> paramClass)
  {
    int i1 = paramClass.hashCode();
    synchronized (this.g)
    {
      this.g.remove(Integer.valueOf(i1));
      return;
    }
  }

  public boolean e()
  {
    return this.k;
  }

  public boolean f()
  {
    synchronized (this.h)
    {
      if ((this.h != null) && (this.h.size() > 0))
        return true;
      boolean bool = this.n;
      return bool;
    }
  }

  public void g()
  {
    try
    {
      com.arcsoft.hpay100.a.a.a(new File(com.arcsoft.hpay100.a.a.h(this.b, null)));
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  protected void onMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
    }
    this.a = k.a.a;
    this.handler.getLooper().quit();
  }

  protected void onStart(Message paramMessage)
  {
    synchronized (this.i)
    {
      synchronized (this.d)
      {
        try
        {
          k();
          l();
          this.a = k.a.c;
          this.d.notify();
          this.i.notify();
          j();
          return;
        }
        catch (Throwable localThrowable)
        {
          while (true)
            cn.sharesdk.framework.utils.d.a().w(localThrowable);
        }
      }
    }
  }

  protected void onStop(Message paramMessage)
  {
    synchronized (this.i)
    {
      Iterator localIterator = this.i.entrySet().iterator();
      if (localIterator.hasNext())
        ((Service)((Map.Entry)localIterator.next()).getValue()).onUnbind();
    }
    this.i.clear();
    monitorexit;
    synchronized (this.g)
    {
      this.g.clear();
    }
    try
    {
      new i().b(this.b);
      return;
      localObject2 = finally;
      monitorexit;
      throw localObject2;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      this.handler.getLooper().quit();
      this.a = k.a.a;
    }
  }

  public void startThread()
  {
    this.a = k.a.b;
    h();
    cn.sharesdk.framework.utils.d.a(this.b, 60056, this.j);
    super.startThread();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.k
 * JD-Core Version:    0.6.0
 */