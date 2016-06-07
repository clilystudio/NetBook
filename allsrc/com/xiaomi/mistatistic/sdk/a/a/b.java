package com.xiaomi.mistatistic.sdk.a.a;

import android.database.Cursor;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.a.j;
import com.xiaomi.mistatistic.sdk.a.n;
import com.xiaomi.mistatistic.sdk.a.t;
import com.xiaomi.mistatistic.sdk.b.i;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class b
  implements j
{
  private long a;
  private HashMap b = new HashMap();
  private long c = System.currentTimeMillis();
  private long d = 0L;
  private JSONArray e = new JSONArray();
  private JSONObject f = null;
  private ArrayList g = new ArrayList();
  private c h;
  private HashMap i = new HashMap();

  public b(long paramLong, c paramc)
  {
    this.a = paramLong;
    this.h = paramc;
  }

  private void a(i parami)
  {
    JSONObject localJSONObject = (JSONObject)this.b.get("mistat_pv");
    if (localJSONObject == null)
    {
      localJSONObject = new JSONObject();
      JSONArray localJSONArray = new JSONArray();
      localJSONObject.put("category", "mistat_pv");
      localJSONObject.put("values", localJSONArray);
      this.b.put("mistat_pv", localJSONObject);
      this.f.getJSONArray("content").put(localJSONObject);
    }
    String[] arrayOfString1 = parami.e.trim().split(",");
    String[] arrayOfString2 = new String[arrayOfString1.length];
    int j = 0;
    if (j < arrayOfString1.length)
    {
      int k = this.g.indexOf(arrayOfString1[j]);
      if (k >= 0)
        arrayOfString2[j] = String.valueOf(k + 1);
      while (true)
      {
        j++;
        break;
        arrayOfString2[j] = String.valueOf(1 + this.g.size());
        this.g.add(arrayOfString1[j]);
      }
    }
    String str = TextUtils.join(",", arrayOfString2);
    localJSONObject.getJSONArray("values").put(str);
    localJSONObject.put("index", TextUtils.join(",", this.g));
  }

  private JSONArray b()
  {
    new t();
    new n();
    n.c();
    Cursor localCursor = n.b();
    t.a("Begin to packing data from local DB");
    int j;
    int k;
    i locali;
    try
    {
      boolean bool = localCursor.moveToFirst();
      j = 0;
      if (!bool)
        break label915;
      k = j + 1;
      locali = n.a(localCursor);
      t.a("Packing " + locali.toString());
      if (this.d == 0L)
      {
        this.d = locali.b;
        this.c = this.d;
      }
      if ((this.a > 0L) && (this.c - locali.b > this.a) && (this.f != null))
      {
        this.f = null;
        this.b.clear();
        this.g.clear();
        this.c = locali.b;
        this.i.clear();
      }
      if (this.f == null)
      {
        this.f = new JSONObject();
        this.f.put("endTS", locali.b);
        JSONArray localJSONArray3 = new JSONArray();
        this.f.put("content", localJSONArray3);
        this.e.put(this.f);
      }
      if ("mistat_session".equals(locali.a))
      {
        JSONObject localJSONObject7 = (JSONObject)this.b.get("mistat_session");
        if (localJSONObject7 == null)
        {
          JSONArray localJSONArray2 = new JSONArray();
          localJSONObject7 = new JSONObject();
          localJSONObject7.put("category", "mistat_session");
          localJSONObject7.put("values", localJSONArray2);
          this.b.put("mistat_session", localJSONObject7);
          this.f.getJSONArray("content").put(localJSONObject7);
        }
        JSONObject localJSONObject8 = new JSONObject();
        String[] arrayOfString = locali.e.split(",");
        long l1 = Long.parseLong(arrayOfString[0]);
        long l2 = Long.parseLong(arrayOfString[1]);
        localJSONObject8.put("start", l1);
        localJSONObject8.put("end", l2);
        localJSONObject8.put("env", locali.f);
        localJSONObject7.getJSONArray("values").put(localJSONObject8);
      }
      while (true)
      {
        label422: this.f.put("startTS", locali.b);
        if (localCursor.moveToNext())
          break label928;
        t.a("Packing complete, total " + k + " records were packed and to be uploaded");
        label471: return this.e;
        if (!"mistat_pv".equals(locali.a))
          break;
        a(locali);
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
    JSONObject localJSONObject1 = (JSONObject)this.b.get(locali.a);
    JSONObject localJSONObject2;
    if (localJSONObject1 == null)
    {
      localJSONObject2 = new JSONObject();
      JSONArray localJSONArray1 = new JSONArray();
      localJSONObject2.put("category", locali.a);
      localJSONObject2.put("values", localJSONArray1);
      this.b.put(locali.a, localJSONObject2);
      this.f.getJSONArray("content").put(localJSONObject2);
    }
    for (JSONObject localJSONObject3 = localJSONObject2; ; localJSONObject3 = localJSONObject1)
    {
      if (("event".equals(locali.d)) && (TextUtils.isEmpty(locali.f)))
      {
        JSONObject localJSONObject5 = (JSONObject)this.i.get(locali.c);
        if (localJSONObject5 != null)
        {
          localJSONObject5.put("value", localJSONObject5.getLong("value") + Long.parseLong(locali.e));
          break label422;
        }
        JSONObject localJSONObject6 = new JSONObject();
        localJSONObject6.put("key", locali.c);
        localJSONObject6.put("type", locali.d);
        localJSONObject6.put("value", Long.parseLong(locali.e));
        localJSONObject3.getJSONArray("values").put(localJSONObject6);
        this.i.put(locali.c, localJSONObject6);
        break label422;
      }
      JSONObject localJSONObject4 = new JSONObject();
      localJSONObject4.put("key", locali.c);
      localJSONObject4.put("type", locali.d);
      if (("count".equals(locali.d)) || ("numeric".equals(locali.d)))
        localJSONObject4.put("value", Long.parseLong(locali.e));
      while (true)
      {
        if (!TextUtils.isEmpty(locali.f))
          localJSONObject4.put("params", new JSONObject(locali.f));
        localJSONObject3.getJSONArray("values").put(localJSONObject4);
        break;
        localJSONObject4.put("value", locali.e);
      }
      label915: t.a("No data available to be packed");
      this.e = null;
      break label471;
      label928: j = k;
      break;
    }
  }

  public final void a()
  {
    try
    {
      JSONArray localJSONArray = b();
      if (localJSONArray == null)
      {
        this.h.a("", this.d);
        return;
      }
      this.h.a(localJSONArray.toString(), this.d);
      return;
    }
    catch (JSONException localJSONException)
    {
      this.h.a("", this.d);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.a.b
 * JD-Core Version:    0.6.0
 */