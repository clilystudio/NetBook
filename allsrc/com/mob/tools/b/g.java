package com.mob.tools.b;

import android.text.TextUtils;
import android.util.Base64;
import com.mob.tools.e;
import com.mob.tools.log.d;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.channels.FileChannel;
import java.util.HashMap;

public final class g
{
  private File a;
  private HashMap<String, Object> b;

  private void a()
  {
    if (this.b == null);
    do
      return;
    while (this.a == null);
    while (true)
    {
      FileOutputStream localFileOutputStream;
      try
      {
        if (this.a.getParentFile().exists())
          continue;
        this.a.getParentFile().mkdirs();
        synchronized (this.b)
        {
          localFileOutputStream = new FileOutputStream(this.a);
          if (localFileOutputStream.getChannel().tryLock() != null)
          {
            ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localFileOutputStream);
            localObjectOutputStream.writeObject(this.b);
            localObjectOutputStream.flush();
            localObjectOutputStream.close();
            return;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        e.a().w(localThrowable);
        return;
      }
      localFileOutputStream.close();
    }
  }

  private void a(String paramString, Object paramObject)
  {
    if (this.b == null)
      this.b = new HashMap();
    this.b.put(paramString, paramObject);
  }

  private Object d(String paramString)
  {
    if (this.b == null)
      return null;
    return this.b.get(paramString);
  }

  public final void a(String paramString)
  {
    try
    {
      if (TextUtils.isEmpty(paramString))
        return;
      this.a = new File(paramString);
      if (this.a.exists())
      {
        ObjectInputStream localObjectInputStream = new ObjectInputStream(new FileInputStream(this.a));
        this.b = ((HashMap)localObjectInputStream.readObject());
        localObjectInputStream.close();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      e.a().w(localThrowable);
    }
  }

  public final void a(String paramString, Long paramLong)
  {
    a(paramString, paramLong);
    a();
  }

  public final void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2);
    a();
  }

  public final long b(String paramString)
  {
    Object localObject = d(paramString);
    if (localObject == null)
      return 0L;
    if ((localObject instanceof Long))
      return ((Long)localObject).longValue();
    return 0L;
  }

  public final Object c(String paramString)
  {
    try
    {
      Object localObject1 = d(paramString);
      Object localObject2;
      if (localObject1 == null)
        localObject2 = null;
      while (TextUtils.isEmpty((CharSequence)localObject2))
      {
        return null;
        if ((localObject1 instanceof String))
        {
          localObject2 = (String)localObject1;
          continue;
        }
        localObject2 = String.valueOf(localObject1);
      }
      ObjectInputStream localObjectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode((String)localObject2, 2)));
      Object localObject3 = localObjectInputStream.readObject();
      localObjectInputStream.close();
      return localObject3;
    }
    catch (Throwable localThrowable)
    {
      e.a().w(localThrowable);
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b.g
 * JD-Core Version:    0.6.0
 */