package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.smack.d.g;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class e
{
  private static String a = Locale.getDefault().getLanguage().toLowerCase();
  private static String b = null;
  private static DateFormat c;
  private static String d;
  private static long e;
  private String f = null;
  private String g = null;
  private String h = null;
  private String i = null;
  private String j = null;
  private String k = null;
  private List<a> l = new CopyOnWriteArrayList();
  private final Map<String, Object> m = new HashMap();
  private i n = null;

  static
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    c = localSimpleDateFormat;
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    d = g.a(5) + "-";
    e = 0L;
  }

  public e()
  {
  }

  public e(Bundle paramBundle)
  {
    this.h = paramBundle.getString("ext_to");
    this.i = paramBundle.getString("ext_from");
    this.j = paramBundle.getString("ext_chid");
    this.g = paramBundle.getString("ext_pkt_id");
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("ext_exts");
    if (arrayOfParcelable != null)
    {
      this.l = new ArrayList(arrayOfParcelable.length);
      int i1 = arrayOfParcelable.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        a locala = a.a((Bundle)arrayOfParcelable[i2]);
        this.l.add(locala);
      }
    }
    Bundle localBundle = paramBundle.getBundle("ext_ERROR");
    if (localBundle != null)
      this.n = new i(localBundle);
  }

  private Object a(String paramString)
  {
    monitorenter;
    try
    {
      Object localObject2 = this.m.get(paramString);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  private Collection<String> a()
  {
    monitorenter;
    try
    {
      Set localSet = Collections.unmodifiableSet(new HashSet(this.m.keySet()));
      monitorexit;
      return localSet;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static String d()
  {
    monitorenter;
    try
    {
      StringBuilder localStringBuilder = new StringBuilder().append(d);
      long l1 = e;
      e = 1L + l1;
      String str = Long.toString(l1);
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static String n()
  {
    return a;
  }

  public final void a(a parama)
  {
    this.l.add(parama);
  }

  public final void a(i parami)
  {
    this.n = parami;
  }

  public Bundle b()
  {
    Bundle localBundle1 = new Bundle();
    if (!TextUtils.isEmpty(this.f))
      localBundle1.putString("ext_ns", this.f);
    if (!TextUtils.isEmpty(this.i))
      localBundle1.putString("ext_from", this.i);
    if (!TextUtils.isEmpty(this.h))
      localBundle1.putString("ext_to", this.h);
    if (!TextUtils.isEmpty(this.g))
      localBundle1.putString("ext_pkt_id", this.g);
    if (!TextUtils.isEmpty(this.j))
      localBundle1.putString("ext_chid", this.j);
    if (this.n != null)
      localBundle1.putBundle("ext_ERROR", this.n.c());
    if (this.l != null)
    {
      Bundle[] arrayOfBundle = new Bundle[this.l.size()];
      Iterator localIterator = this.l.iterator();
      int i2;
      for (int i1 = 0; localIterator.hasNext(); i1 = i2)
      {
        Bundle localBundle2 = ((a)localIterator.next()).d();
        i2 = i1 + 1;
        arrayOfBundle[i1] = localBundle2;
      }
      localBundle1.putParcelableArray("ext_exts", arrayOfBundle);
    }
    return localBundle1;
  }

  public abstract String c();

  public final String e()
  {
    if ("ID_NOT_AVAILABLE".equals(this.g))
      return null;
    if (this.g == null)
      this.g = d();
    return this.g;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    e locale;
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      locale = (e)paramObject;
      if (this.n != null)
      {
        if (this.n.equals(locale.n));
      }
      else
        do
          return false;
        while (locale.n != null);
      if (this.i != null)
      {
        if (this.i.equals(locale.i));
      }
      else
        do
          return false;
        while (locale.i != null);
      if (!this.l.equals(locale.l))
        return false;
      if (this.g != null)
      {
        if (this.g.equals(locale.g));
      }
      else
        do
          return false;
        while (locale.g != null);
      if (this.j != null)
      {
        if (this.j.equals(locale.j));
      }
      else
        do
          return false;
        while (locale.j != null);
      if (!this.m.equals(locale.m))
        return false;
      if (this.h != null)
      {
        if (this.h.equals(locale.h));
      }
      else
        do
          return false;
        while (locale.h != null);
      if (this.f == null)
        break;
    }
    while (this.f.equals(locale.f));
    do
      return false;
    while (locale.f != null);
    return true;
  }

  public final String f()
  {
    return this.j;
  }

  public final String g()
  {
    return this.h;
  }

  public final String h()
  {
    return this.i;
  }

  public int hashCode()
  {
    int i1;
    int i3;
    label35: int i5;
    label59: int i7;
    label85: int i8;
    if (this.f != null)
    {
      i1 = this.f.hashCode();
      int i2 = i1 * 31;
      if (this.g == null)
        break label177;
      i3 = this.g.hashCode();
      int i4 = 31 * (i3 + i2);
      if (this.h == null)
        break label182;
      i5 = this.h.hashCode();
      int i6 = 31 * (i5 + i4);
      if (this.i == null)
        break label188;
      i7 = this.i.hashCode();
      i8 = 31 * (i7 + i6);
      if (this.j == null)
        break label194;
    }
    label177: label182: label188: label194: for (int i9 = this.j.hashCode(); ; i9 = 0)
    {
      int i10 = 31 * (31 * (31 * (i9 + i8) + this.l.hashCode()) + this.m.hashCode());
      i locali = this.n;
      int i11 = 0;
      if (locali != null)
        i11 = this.n.hashCode();
      return i10 + i11;
      i1 = 0;
      break;
      i3 = 0;
      break label35;
      i5 = 0;
      break label59;
      i7 = 0;
      break label85;
    }
  }

  public final String i()
  {
    return this.k;
  }

  public final i j()
  {
    return this.n;
  }

  public final Collection<a> k()
  {
    monitorenter;
    try
    {
      List localList2;
      if (this.l == null)
        localList2 = Collections.emptyList();
      List localList1;
      for (Object localObject2 = localList2; ; localObject2 = localList1)
      {
        return localObject2;
        localList1 = Collections.unmodifiableList(new ArrayList(this.l));
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public final void k(String paramString)
  {
    this.g = paramString;
  }

  // ERROR //
  protected final String l()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 73	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   9: astore_1
    //   10: aload_0
    //   11: invokevirtual 269	com/xiaomi/smack/packet/e:k	()Ljava/util/Collection;
    //   14: invokeinterface 272 1 0
    //   19: astore_3
    //   20: aload_3
    //   21: invokeinterface 229 1 0
    //   26: ifeq +30 -> 56
    //   29: aload_1
    //   30: aload_3
    //   31: invokeinterface 233 1 0
    //   36: checkcast 146	com/xiaomi/smack/packet/a
    //   39: invokeinterface 276 1 0
    //   44: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: pop
    //   48: goto -28 -> 20
    //   51: astore_2
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_2
    //   55: athrow
    //   56: aload_0
    //   57: getfield 116	com/xiaomi/smack/packet/e:m	Ljava/util/Map;
    //   60: invokeinterface 278 1 0
    //   65: ifne +440 -> 505
    //   68: aload_1
    //   69: ldc_w 280
    //   72: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: aload_0
    //   77: invokespecial 282	com/xiaomi/smack/packet/e:a	()Ljava/util/Collection;
    //   80: invokeinterface 272 1 0
    //   85: astore 6
    //   87: aload 6
    //   89: invokeinterface 229 1 0
    //   94: ifeq +403 -> 497
    //   97: aload 6
    //   99: invokeinterface 233 1 0
    //   104: checkcast 40	java/lang/String
    //   107: astore 8
    //   109: aload_0
    //   110: aload 8
    //   112: invokespecial 284	com/xiaomi/smack/packet/e:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   115: astore 9
    //   117: aload_1
    //   118: ldc_w 286
    //   121: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: aload_1
    //   126: ldc_w 288
    //   129: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: aload 8
    //   134: invokestatic 290	com/xiaomi/smack/d/g:a	(Ljava/lang/String;)Ljava/lang/String;
    //   137: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: ldc_w 292
    //   143: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: pop
    //   147: aload_1
    //   148: ldc_w 294
    //   151: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: aload 9
    //   157: instanceof 296
    //   160: ifeq +33 -> 193
    //   163: aload_1
    //   164: ldc_w 298
    //   167: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: aload 9
    //   172: invokevirtual 301	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   175: ldc_w 303
    //   178: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: pop
    //   182: aload_1
    //   183: ldc_w 305
    //   186: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: pop
    //   190: goto -103 -> 87
    //   193: aload 9
    //   195: instanceof 190
    //   198: ifeq +25 -> 223
    //   201: aload_1
    //   202: ldc_w 307
    //   205: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: aload 9
    //   210: invokevirtual 301	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   213: ldc_w 303
    //   216: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: pop
    //   220: goto -38 -> 182
    //   223: aload 9
    //   225: instanceof 309
    //   228: ifeq +25 -> 253
    //   231: aload_1
    //   232: ldc_w 311
    //   235: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: aload 9
    //   240: invokevirtual 301	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   243: ldc_w 303
    //   246: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: pop
    //   250: goto -68 -> 182
    //   253: aload 9
    //   255: instanceof 313
    //   258: ifeq +25 -> 283
    //   261: aload_1
    //   262: ldc_w 315
    //   265: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: aload 9
    //   270: invokevirtual 301	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   273: ldc_w 303
    //   276: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: pop
    //   280: goto -98 -> 182
    //   283: aload 9
    //   285: instanceof 317
    //   288: ifeq +25 -> 313
    //   291: aload_1
    //   292: ldc_w 319
    //   295: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: aload 9
    //   300: invokevirtual 301	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   303: ldc_w 303
    //   306: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: pop
    //   310: goto -128 -> 182
    //   313: aload 9
    //   315: instanceof 40
    //   318: ifeq +35 -> 353
    //   321: aload_1
    //   322: ldc_w 321
    //   325: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: pop
    //   329: aload_1
    //   330: aload 9
    //   332: checkcast 40	java/lang/String
    //   335: invokestatic 290	com/xiaomi/smack/d/g:a	(Ljava/lang/String;)Ljava/lang/String;
    //   338: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: pop
    //   342: aload_1
    //   343: ldc_w 303
    //   346: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: pop
    //   350: goto -168 -> 182
    //   353: new 323	java/io/ByteArrayOutputStream
    //   356: dup
    //   357: invokespecial 324	java/io/ByteArrayOutputStream:<init>	()V
    //   360: astore 13
    //   362: new 326	java/io/ObjectOutputStream
    //   365: dup
    //   366: aload 13
    //   368: invokespecial 329	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   371: astore 14
    //   373: aload 14
    //   375: aload 9
    //   377: invokevirtual 333	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   380: aload_1
    //   381: ldc_w 335
    //   384: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: pop
    //   388: aload_1
    //   389: aload 13
    //   391: invokevirtual 339	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   394: invokestatic 342	com/xiaomi/smack/d/g:a	([B)Ljava/lang/String;
    //   397: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: ldc_w 303
    //   403: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: pop
    //   407: aload 14
    //   409: invokevirtual 345	java/io/ObjectOutputStream:close	()V
    //   412: aload 13
    //   414: invokevirtual 346	java/io/ByteArrayOutputStream:close	()V
    //   417: goto -235 -> 182
    //   420: astore 27
    //   422: goto -240 -> 182
    //   425: astore 15
    //   427: aconst_null
    //   428: astore 16
    //   430: aconst_null
    //   431: astore 17
    //   433: aload 15
    //   435: invokevirtual 349	java/lang/Exception:printStackTrace	()V
    //   438: aload 16
    //   440: ifnull +8 -> 448
    //   443: aload 16
    //   445: invokevirtual 345	java/io/ObjectOutputStream:close	()V
    //   448: aload 17
    //   450: ifnull -268 -> 182
    //   453: aload 17
    //   455: invokevirtual 346	java/io/ByteArrayOutputStream:close	()V
    //   458: goto -276 -> 182
    //   461: astore 21
    //   463: goto -281 -> 182
    //   466: astore 18
    //   468: aconst_null
    //   469: astore 14
    //   471: aconst_null
    //   472: astore 13
    //   474: aload 14
    //   476: ifnull +8 -> 484
    //   479: aload 14
    //   481: invokevirtual 345	java/io/ObjectOutputStream:close	()V
    //   484: aload 13
    //   486: ifnull +8 -> 494
    //   489: aload 13
    //   491: invokevirtual 346	java/io/ByteArrayOutputStream:close	()V
    //   494: aload 18
    //   496: athrow
    //   497: aload_1
    //   498: ldc_w 351
    //   501: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   504: pop
    //   505: aload_1
    //   506: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   509: astore 4
    //   511: aload_0
    //   512: monitorexit
    //   513: aload 4
    //   515: areturn
    //   516: astore 26
    //   518: goto -106 -> 412
    //   521: astore 23
    //   523: goto -75 -> 448
    //   526: astore 20
    //   528: goto -44 -> 484
    //   531: astore 19
    //   533: goto -39 -> 494
    //   536: astore 18
    //   538: aconst_null
    //   539: astore 14
    //   541: goto -67 -> 474
    //   544: astore 18
    //   546: goto -72 -> 474
    //   549: astore 18
    //   551: aload 17
    //   553: astore 13
    //   555: aload 16
    //   557: astore 14
    //   559: goto -85 -> 474
    //   562: astore 15
    //   564: aload 13
    //   566: astore 17
    //   568: aconst_null
    //   569: astore 16
    //   571: goto -138 -> 433
    //   574: astore 15
    //   576: aload 14
    //   578: astore 16
    //   580: aload 13
    //   582: astore 17
    //   584: goto -151 -> 433
    //
    // Exception table:
    //   from	to	target	type
    //   2	20	51	finally
    //   20	48	51	finally
    //   56	87	51	finally
    //   87	182	51	finally
    //   182	190	51	finally
    //   193	220	51	finally
    //   223	250	51	finally
    //   253	280	51	finally
    //   283	310	51	finally
    //   313	350	51	finally
    //   407	412	51	finally
    //   412	417	51	finally
    //   443	448	51	finally
    //   453	458	51	finally
    //   479	484	51	finally
    //   489	494	51	finally
    //   494	497	51	finally
    //   497	505	51	finally
    //   505	511	51	finally
    //   412	417	420	java/lang/Exception
    //   353	362	425	java/lang/Exception
    //   453	458	461	java/lang/Exception
    //   353	362	466	finally
    //   407	412	516	java/lang/Exception
    //   443	448	521	java/lang/Exception
    //   479	484	526	java/lang/Exception
    //   489	494	531	java/lang/Exception
    //   362	373	536	finally
    //   373	407	544	finally
    //   433	438	549	finally
    //   362	373	562	java/lang/Exception
    //   373	407	574	java/lang/Exception
  }

  public final void l(String paramString)
  {
    this.j = paramString;
  }

  public final String m()
  {
    return this.f;
  }

  public final void m(String paramString)
  {
    this.h = paramString;
  }

  public final void n(String paramString)
  {
    this.i = paramString;
  }

  public final void o(String paramString)
  {
    this.k = paramString;
  }

  public final a p(String paramString)
  {
    Iterator localIterator = this.l.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (paramString.equals(locala.a()))
        return locala;
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.e
 * JD-Core Version:    0.6.0
 */