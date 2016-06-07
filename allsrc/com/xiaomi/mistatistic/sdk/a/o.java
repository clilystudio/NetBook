package com.xiaomi.mistatistic.sdk.a;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public final class o
{
  private static o a = new o();
  private a b;
  private boolean c = false;
  private List d = new LinkedList();
  private Handler e = new p(this, Looper.getMainLooper());

  public static o a()
  {
    return a;
  }

  public static boolean c()
  {
    return (System.currentTimeMillis() > com.arcsoft.hpay100.a.a.e(r.b(), "rt_ban_time", 0L)) && (10000.0D * Math.random() <= com.arcsoft.hpay100.a.a.c(r.b(), "rt_upload_rate", 10000));
  }

  private static String d()
  {
    if (com.xiaomi.mistatistic.sdk.a.a())
      return "http://10.99.168.145:8097/realtime_network";
    return "https://data.mistat.xiaomi.com/realtime_network";
  }

  private boolean e()
  {
    HashMap localHashMap = new HashMap();
    while (true)
    {
      com.xiaomi.mistatistic.sdk.b.a locala;
      String str4;
      synchronized (this.d)
      {
        Iterator localIterator1 = this.d.iterator();
        if (!localIterator1.hasNext())
          break;
        locala = (com.xiaomi.mistatistic.sdk.b.a)localIterator1.next();
        str4 = locala.a();
        if (TextUtils.isEmpty(str4))
          continue;
        if (localHashMap.containsKey(str4))
          ((List)localHashMap.get(str4)).add(locala);
      }
      localHashMap.put(str4, new ArrayList());
      ((List)localHashMap.get(str4)).add(locala);
    }
    if (!localHashMap.isEmpty())
    {
      JSONArray localJSONArray1 = new JSONArray();
      Iterator localIterator2 = localHashMap.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str3 = (String)localIterator2.next();
        JSONArray localJSONArray2 = new JSONArray();
        Iterator localIterator3 = ((List)localHashMap.get(str3)).iterator();
        while (localIterator3.hasNext())
          localJSONArray2.put(((com.xiaomi.mistatistic.sdk.b.a)localIterator3.next()).b());
        JSONObject localJSONObject3 = new JSONObject();
        localJSONObject3.put("url", str3);
        localJSONObject3.put("data", localJSONArray2);
        localJSONArray1.put(localJSONObject3);
      }
      String str1 = localJSONArray1.toString();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("app_id", r.c()));
      localArrayList.add(new BasicNameValuePair("app_package", r.b().getPackageName()));
      localArrayList.add(new BasicNameValuePair("device_uuid", l.a(r.b())));
      localArrayList.add(new BasicNameValuePair("device_os", "android" + Build.VERSION.SDK_INT));
      localArrayList.add(new BasicNameValuePair("device_model", Build.MODEL));
      localArrayList.add(new BasicNameValuePair("app_version", r.f()));
      localArrayList.add(new BasicNameValuePair("app_channel", r.e()));
      localArrayList.add(new BasicNameValuePair("time", String.valueOf(System.currentTimeMillis())));
      localArrayList.add(new BasicNameValuePair("net_value", str1));
      String str2 = r.a(r.b(), d(), localArrayList);
      new t();
      t.a("http data complete, result=" + str2);
      if (TextUtils.isEmpty(str2))
        break label696;
      JSONObject localJSONObject1 = new JSONObject(str2);
      if (!"ok".equals(localJSONObject1.getString("status")))
        break label696;
      if (!localJSONObject1.has("data"))
        break label690;
      JSONObject localJSONObject2 = localJSONObject1.getJSONObject("data");
      int j = localJSONObject2.optInt("sample_rate", 10000);
      int k = localJSONObject2.optInt("delay", 300000);
      long l = localJSONObject2.optLong("ban_time", 0L);
      com.arcsoft.hpay100.a.a.d(r.b(), "rt_upload_rate", j);
      com.arcsoft.hpay100.a.a.f(r.b(), "rt_upload_delay", k);
      com.arcsoft.hpay100.a.a.f(r.b(), "rt_ban_time", l + System.currentTimeMillis());
    }
    while (true)
    {
      monitorexit;
      return i;
      monitorexit;
      return false;
      label690: int i = 1;
      continue;
      label696: i = 0;
    }
  }

  public final void a(a parama)
  {
    this.b = parama;
  }

  public final void a(com.xiaomi.mistatistic.sdk.b.a parama)
  {
    if (parama.a().equals(d()));
    while (true)
    {
      return;
      if ((this.b != null) && (!parama.a().equals(d())))
        parama = this.b.a(parama);
      if ((parama == null) || (TextUtils.isEmpty(parama.a())))
        continue;
      synchronized (this.d)
      {
        this.d.add(parama);
        if (this.d.size() > 100)
          this.d.remove(0);
        if ((this.e.hasMessages(1023)) || (parama.a().equals(d())))
          continue;
        this.e.sendEmptyMessageDelayed(1023, com.arcsoft.hpay100.a.a.e(r.b(), "rt_upload_delay", 300000L));
        return;
      }
    }
  }

  public final List b()
  {
    synchronized (this.d)
    {
      LinkedList localLinkedList = new LinkedList(this.d);
      return localLinkedList;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.o
 * JD-Core Version:    0.6.0
 */