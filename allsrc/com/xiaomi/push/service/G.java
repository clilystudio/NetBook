package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class G
{
  private static final Map<String, byte[]> a = new HashMap();
  private static final ArrayList<Pair<String, byte[]>> b = new ArrayList();

  public static void a(Context paramContext, int paramInt, String paramString)
  {
    synchronized (a)
    {
      Iterator localIterator = a.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        a(paramContext, str, (byte[])a.get(str), paramInt, paramString);
      }
    }
    a.clear();
    monitorexit;
  }

  public static void a(Context paramContext, String paramString1, byte[] paramArrayOfByte, int paramInt, String paramString2)
  {
    Intent localIntent = new Intent("com.xiaomi.mipush.ERROR");
    localIntent.setPackage(paramString1);
    localIntent.putExtra("mipush_payload", paramArrayOfByte);
    localIntent.putExtra("mipush_error_code", paramInt);
    localIntent.putExtra("mipush_error_msg", paramString2);
    paramContext.sendBroadcast(localIntent, y.a(paramString1));
  }

  public static void a(XMPushService paramXMPushService)
  {
    try
    {
      synchronized (a)
      {
        Iterator localIterator = a.keySet().iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          paramXMPushService.a(str, (byte[])a.get(str));
        }
      }
    }
    catch (w localw)
    {
      b.a(localw);
      paramXMPushService.a(10, localw);
      return;
    }
    a.clear();
    monitorexit;
  }

  public static void a(String paramString, byte[] paramArrayOfByte)
  {
    synchronized (a)
    {
      a.put(paramString, paramArrayOfByte);
      return;
    }
  }

  public static void b(XMPushService paramXMPushService)
  {
    try
    {
      synchronized (b)
      {
        Iterator localIterator = b.iterator();
        if (localIterator.hasNext())
        {
          Pair localPair = (Pair)localIterator.next();
          paramXMPushService.a((String)localPair.first, (byte[])localPair.second);
        }
      }
    }
    catch (w localw)
    {
      b.a(localw);
      paramXMPushService.a(10, localw);
      return;
    }
    b.clear();
    monitorexit;
  }

  public static void b(String paramString, byte[] paramArrayOfByte)
  {
    synchronized (b)
    {
      b.add(new Pair(paramString, paramArrayOfByte));
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.G
 * JD-Core Version:    0.6.0
 */