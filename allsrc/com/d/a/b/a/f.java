package com.d.a.b.a;

import android.support.design.widget.h;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

final class f
  implements b
{
  private final File a;
  private final File b;
  private Map c;
  private boolean d = false;
  private WeakHashMap<h, Object> e;

  static
  {
    new Object();
  }

  f(File paramFile, Map paramMap)
  {
    this.a = paramFile;
    this.b = e.a(paramFile);
    if (paramMap != null);
    while (true)
    {
      this.c = paramMap;
      this.e = new WeakHashMap();
      return;
      paramMap = new HashMap();
    }
  }

  private static FileOutputStream a(File paramFile)
  {
    try
    {
      FileOutputStream localFileOutputStream1 = new FileOutputStream(paramFile);
      return localFileOutputStream1;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      if (!paramFile.getParentFile().mkdir())
        return null;
      try
      {
        FileOutputStream localFileOutputStream2 = new FileOutputStream(paramFile);
        return localFileOutputStream2;
      }
      catch (FileNotFoundException localFileNotFoundException2)
      {
      }
    }
    return null;
  }

  private boolean f()
  {
    if (this.a.exists())
      if (!this.b.exists())
        if (this.a.renameTo(this.b))
          break label44;
    while (true)
    {
      return false;
      this.a.delete();
      try
      {
        label44: FileOutputStream localFileOutputStream = a(this.a);
        if (localFileOutputStream == null)
          continue;
        Map localMap = this.c;
        a locala = new a();
        locala.setOutput(localFileOutputStream, "utf-8");
        locala.startDocument(null, Boolean.valueOf(true));
        locala.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        d.a(localMap, null, locala);
        locala.endDocument();
        localFileOutputStream.close();
        this.b.delete();
        return true;
      }
      catch (IOException localIOException)
      {
        if (!this.a.exists())
          continue;
        this.a.delete();
        return false;
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        label137: break label137;
      }
    }
  }

  public final long a(String paramString)
  {
    monitorenter;
    try
    {
      Long localLong = (Long)this.c.get(paramString);
      long l;
      if (localLong != null)
        l = localLong.longValue();
      while (true)
      {
        return l;
        l = 0L;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final String a(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      String str = (String)this.c.get(paramString1);
      if (str != null);
      while (true)
      {
        return str;
        str = paramString2;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void a(Map paramMap)
  {
    if (paramMap != null)
      monitorenter;
    try
    {
      this.c = paramMap;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final boolean a()
  {
    return (this.a != null) && (new File(this.a.getAbsolutePath()).exists());
  }

  public final Map<String, ?> b()
  {
    monitorenter;
    try
    {
      HashMap localHashMap = new HashMap(this.c);
      monitorexit;
      return localHashMap;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final c c()
  {
    return new g(this);
  }

  public final void d()
  {
    monitorenter;
    try
    {
      this.d = true;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final boolean e()
  {
    monitorenter;
    try
    {
      boolean bool = this.d;
      monitorexit;
      return bool;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.d.a.b.a.f
 * JD-Core Version:    0.6.0
 */