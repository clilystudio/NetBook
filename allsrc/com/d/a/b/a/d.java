package com.d.a.b.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.support.v7.app.k;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class d
{
  private String a;
  private String b;
  private boolean c;
  private boolean d;
  private SharedPreferences e;
  private b f;
  private SharedPreferences.Editor g;
  private c h;
  private Context i;
  private e j;
  private boolean k;

  // ERROR //
  public d(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 30	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: ldc 32
    //   7: putfield 34	com/d/a/b/a/d:a	Ljava/lang/String;
    //   10: aload_0
    //   11: ldc 32
    //   13: putfield 36	com/d/a/b/a/d:b	Ljava/lang/String;
    //   16: aload_0
    //   17: iconst_0
    //   18: putfield 38	com/d/a/b/a/d:c	Z
    //   21: aload_0
    //   22: iconst_0
    //   23: putfield 40	com/d/a/b/a/d:d	Z
    //   26: aload_0
    //   27: aconst_null
    //   28: putfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   31: aload_0
    //   32: aconst_null
    //   33: putfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   36: aload_0
    //   37: aconst_null
    //   38: putfield 46	com/d/a/b/a/d:g	Landroid/content/SharedPreferences$Editor;
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield 48	com/d/a/b/a/d:h	Lcom/d/a/b/a/c;
    //   46: aload_0
    //   47: aconst_null
    //   48: putfield 50	com/d/a/b/a/d:i	Landroid/content/Context;
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield 52	com/d/a/b/a/d:j	Lcom/d/a/b/a/e;
    //   56: aload_0
    //   57: iconst_0
    //   58: putfield 54	com/d/a/b/a/d:k	Z
    //   61: aload_0
    //   62: iconst_1
    //   63: putfield 54	com/d/a/b/a/d:k	Z
    //   66: aload_0
    //   67: aload_3
    //   68: putfield 34	com/d/a/b/a/d:a	Ljava/lang/String;
    //   71: aload_0
    //   72: aload_2
    //   73: putfield 36	com/d/a/b/a/d:b	Ljava/lang/String;
    //   76: aload_0
    //   77: aload_1
    //   78: putfield 50	com/d/a/b/a/d:i	Landroid/content/Context;
    //   81: aload_1
    //   82: ifnull +569 -> 651
    //   85: aload_0
    //   86: aload_1
    //   87: aload_3
    //   88: iconst_0
    //   89: invokevirtual 60	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   92: putfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   95: aload_0
    //   96: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   99: ldc 62
    //   101: lconst_0
    //   102: invokeinterface 68 4 0
    //   107: lstore 4
    //   109: invokestatic 71	com/d/a/b/a/d:b	()Ljava/lang/String;
    //   112: astore 6
    //   114: aload 6
    //   116: invokestatic 76	android/support/v7/app/k:a	(Ljava/lang/String;)Z
    //   119: ifne +317 -> 436
    //   122: aload 6
    //   124: ldc 78
    //   126: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   129: ifeq +284 -> 413
    //   132: aload_0
    //   133: iconst_1
    //   134: putfield 40	com/d/a/b/a/d:d	Z
    //   137: aload_0
    //   138: iconst_1
    //   139: putfield 38	com/d/a/b/a/d:c	Z
    //   142: aload_0
    //   143: getfield 38	com/d/a/b/a/d:c	Z
    //   146: ifne +10 -> 156
    //   149: aload_0
    //   150: getfield 40	com/d/a/b/a/d:d	Z
    //   153: ifeq +488 -> 641
    //   156: aload_1
    //   157: ifnull +484 -> 641
    //   160: aload_2
    //   161: invokestatic 76	android/support/v7/app/k:a	(Ljava/lang/String;)Z
    //   164: ifne +477 -> 641
    //   167: aload_0
    //   168: aload_0
    //   169: aload_2
    //   170: invokespecial 87	com/d/a/b/a/d:b	(Ljava/lang/String;)Lcom/d/a/b/a/e;
    //   173: putfield 52	com/d/a/b/a/d:j	Lcom/d/a/b/a/e;
    //   176: aload_0
    //   177: getfield 52	com/d/a/b/a/d:j	Lcom/d/a/b/a/e;
    //   180: ifnull +461 -> 641
    //   183: aload_0
    //   184: aload_0
    //   185: getfield 52	com/d/a/b/a/d:j	Lcom/d/a/b/a/e;
    //   188: aload_3
    //   189: invokevirtual 92	com/d/a/b/a/e:a	(Ljava/lang/String;)Lcom/d/a/b/a/b;
    //   192: putfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   195: aload_0
    //   196: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   199: ldc 62
    //   201: invokeinterface 97 2 0
    //   206: lstore 23
    //   208: aload_0
    //   209: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   212: ldc 99
    //   214: lconst_0
    //   215: invokeinterface 68 4 0
    //   220: lstore 26
    //   222: lload 26
    //   224: lstore 7
    //   226: aload_0
    //   227: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   230: ldc 99
    //   232: invokeinterface 97 2 0
    //   237: lstore 29
    //   239: lload 29
    //   241: lstore 9
    //   243: lload 7
    //   245: lload 9
    //   247: lcmp
    //   248: ifge +201 -> 449
    //   251: lload 7
    //   253: lconst_0
    //   254: lcmp
    //   255: ifle +194 -> 449
    //   258: aload_0
    //   259: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   262: aload_0
    //   263: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   266: invokestatic 102	com/d/a/b/a/d:a	(Landroid/content/SharedPreferences;Lcom/d/a/b/a/b;)V
    //   269: aload_0
    //   270: aload_0
    //   271: getfield 52	com/d/a/b/a/d:j	Lcom/d/a/b/a/e;
    //   274: aload_3
    //   275: invokevirtual 92	com/d/a/b/a/e:a	(Ljava/lang/String;)Lcom/d/a/b/a/b;
    //   278: putfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   281: lload 7
    //   283: lload 9
    //   285: lcmp
    //   286: ifne +17 -> 303
    //   289: lload 7
    //   291: lconst_0
    //   292: lcmp
    //   293: ifne +119 -> 412
    //   296: lload 9
    //   298: lconst_0
    //   299: lcmp
    //   300: ifne +112 -> 412
    //   303: invokestatic 108	java/lang/System:currentTimeMillis	()J
    //   306: lstore 11
    //   308: aload_0
    //   309: getfield 54	com/d/a/b/a/d:k	Z
    //   312: ifeq +24 -> 336
    //   315: aload_0
    //   316: getfield 54	com/d/a/b/a/d:k	Z
    //   319: ifeq +93 -> 412
    //   322: lload 7
    //   324: lconst_0
    //   325: lcmp
    //   326: ifne +86 -> 412
    //   329: lload 9
    //   331: lconst_0
    //   332: lcmp
    //   333: ifne +79 -> 412
    //   336: aload_0
    //   337: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   340: ifnull +34 -> 374
    //   343: aload_0
    //   344: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   347: invokeinterface 112 1 0
    //   352: astore 17
    //   354: aload 17
    //   356: ldc 99
    //   358: lload 11
    //   360: invokeinterface 118 4 0
    //   365: pop
    //   366: aload 17
    //   368: invokeinterface 122 1 0
    //   373: pop
    //   374: aload_0
    //   375: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   378: ifnull +34 -> 412
    //   381: aload_0
    //   382: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   385: invokeinterface 125 1 0
    //   390: astore 14
    //   392: aload 14
    //   394: ldc 99
    //   396: lload 11
    //   398: invokeinterface 130 4 0
    //   403: pop
    //   404: aload 14
    //   406: invokeinterface 132 1 0
    //   411: pop
    //   412: return
    //   413: aload 6
    //   415: ldc 134
    //   417: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   420: ifeq +16 -> 436
    //   423: aload_0
    //   424: iconst_1
    //   425: putfield 38	com/d/a/b/a/d:c	Z
    //   428: aload_0
    //   429: iconst_0
    //   430: putfield 40	com/d/a/b/a/d:d	Z
    //   433: goto -291 -> 142
    //   436: aload_0
    //   437: iconst_0
    //   438: putfield 40	com/d/a/b/a/d:d	Z
    //   441: aload_0
    //   442: iconst_0
    //   443: putfield 38	com/d/a/b/a/d:c	Z
    //   446: goto -304 -> 142
    //   449: lload 7
    //   451: lload 9
    //   453: lcmp
    //   454: ifle +34 -> 488
    //   457: lload 9
    //   459: lconst_0
    //   460: lcmp
    //   461: ifle +27 -> 488
    //   464: aload_0
    //   465: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   468: aload_0
    //   469: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   472: invokestatic 137	com/d/a/b/a/d:a	(Lcom/d/a/b/a/b;Landroid/content/SharedPreferences;)V
    //   475: aload_0
    //   476: aload_1
    //   477: aload_3
    //   478: iconst_0
    //   479: invokevirtual 60	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   482: putfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   485: goto -204 -> 281
    //   488: lload 7
    //   490: lconst_0
    //   491: lcmp
    //   492: ifne +34 -> 526
    //   495: lload 9
    //   497: lconst_0
    //   498: lcmp
    //   499: ifle +27 -> 526
    //   502: aload_0
    //   503: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   506: aload_0
    //   507: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   510: invokestatic 137	com/d/a/b/a/d:a	(Lcom/d/a/b/a/b;Landroid/content/SharedPreferences;)V
    //   513: aload_0
    //   514: aload_1
    //   515: aload_3
    //   516: iconst_0
    //   517: invokevirtual 60	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   520: putfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   523: goto -242 -> 281
    //   526: lload 9
    //   528: lconst_0
    //   529: lcmp
    //   530: ifne +36 -> 566
    //   533: lload 7
    //   535: lconst_0
    //   536: lcmp
    //   537: ifle +29 -> 566
    //   540: aload_0
    //   541: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   544: aload_0
    //   545: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   548: invokestatic 102	com/d/a/b/a/d:a	(Landroid/content/SharedPreferences;Lcom/d/a/b/a/b;)V
    //   551: aload_0
    //   552: aload_0
    //   553: getfield 52	com/d/a/b/a/d:j	Lcom/d/a/b/a/e;
    //   556: aload_3
    //   557: invokevirtual 92	com/d/a/b/a/e:a	(Ljava/lang/String;)Lcom/d/a/b/a/b;
    //   560: putfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   563: goto -282 -> 281
    //   566: lload 7
    //   568: lload 9
    //   570: lcmp
    //   571: ifne -290 -> 281
    //   574: aload_0
    //   575: getfield 42	com/d/a/b/a/d:e	Landroid/content/SharedPreferences;
    //   578: aload_0
    //   579: getfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   582: invokestatic 102	com/d/a/b/a/d:a	(Landroid/content/SharedPreferences;Lcom/d/a/b/a/b;)V
    //   585: aload_0
    //   586: aload_0
    //   587: getfield 52	com/d/a/b/a/d:j	Lcom/d/a/b/a/e;
    //   590: aload_3
    //   591: invokevirtual 92	com/d/a/b/a/e:a	(Ljava/lang/String;)Lcom/d/a/b/a/b;
    //   594: putfield 44	com/d/a/b/a/d:f	Lcom/d/a/b/a/b;
    //   597: goto -316 -> 281
    //   600: astore 13
    //   602: return
    //   603: astore 20
    //   605: lload 4
    //   607: lstore 21
    //   609: lconst_0
    //   610: lstore 9
    //   612: goto +51 -> 663
    //   615: astore 25
    //   617: lload 4
    //   619: lstore 21
    //   621: lload 23
    //   623: lstore 9
    //   625: goto +38 -> 663
    //   628: astore 28
    //   630: lload 23
    //   632: lstore 9
    //   634: lload 7
    //   636: lstore 21
    //   638: goto +25 -> 663
    //   641: lload 4
    //   643: lstore 7
    //   645: lconst_0
    //   646: lstore 9
    //   648: goto -367 -> 281
    //   651: lconst_0
    //   652: lstore 4
    //   654: goto -545 -> 109
    //   657: astore 31
    //   659: lload 7
    //   661: lstore 21
    //   663: lload 21
    //   665: lstore 7
    //   667: goto -386 -> 281
    //
    // Exception table:
    //   from	to	target	type
    //   374	412	600	java/lang/Exception
    //   183	208	603	java/lang/Exception
    //   208	222	615	java/lang/Exception
    //   226	239	628	java/lang/Exception
    //   258	281	657	java/lang/Exception
    //   464	485	657	java/lang/Exception
    //   502	523	657	java/lang/Exception
    //   540	563	657	java/lang/Exception
    //   574	597	657	java/lang/Exception
  }

  public static Object a(XmlPullParser paramXmlPullParser, String[] paramArrayOfString)
  {
    int m = paramXmlPullParser.getEventType();
    while (true)
    {
      if (m == 2)
        return b(paramXmlPullParser, paramArrayOfString);
      if (m == 3)
        throw new XmlPullParserException("Unexpected end tag at: " + paramXmlPullParser.getName());
      if (m == 4)
        throw new XmlPullParserException("Unexpected text: " + paramXmlPullParser.getText());
      try
      {
        int n = paramXmlPullParser.next();
        m = n;
        if (m != 1)
          continue;
        throw new XmlPullParserException("Unexpected end of document");
      }
      catch (Exception localException)
      {
      }
    }
    throw new XmlPullParserException("Unexpected call next(): " + paramXmlPullParser.getName());
  }

  private static HashMap a(XmlPullParser paramXmlPullParser, String paramString, String[] paramArrayOfString)
  {
    HashMap localHashMap = new HashMap();
    int m = paramXmlPullParser.getEventType();
    if (m == 2)
    {
      Object localObject = b(paramXmlPullParser, paramArrayOfString);
      if (paramArrayOfString[0] != null)
        localHashMap.put(paramArrayOfString[0], localObject);
    }
    do
    {
      m = paramXmlPullParser.next();
      if (m != 1)
        break;
      throw new XmlPullParserException("Document ended before " + paramString + " end tag");
      throw new XmlPullParserException("Map value without name attribute: " + paramXmlPullParser.getName());
    }
    while (m != 3);
    if (paramXmlPullParser.getName().equals(paramString))
      return localHashMap;
    throw new XmlPullParserException("Expected " + paramString + " end tag at: " + paramXmlPullParser.getName());
  }

  private static void a(SharedPreferences paramSharedPreferences, b paramb)
  {
    if ((paramSharedPreferences != null) && (paramb != null))
    {
      c localc = paramb.c();
      localc.a();
      Iterator localIterator = paramSharedPreferences.getAll().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str = (String)localEntry.getKey();
        Object localObject = localEntry.getValue();
        if ((localObject instanceof String))
        {
          localc.a(str, (String)localObject);
          continue;
        }
        if ((localObject instanceof Integer))
        {
          localc.a(str, ((Integer)localObject).intValue());
          continue;
        }
        if ((localObject instanceof Long))
        {
          localc.a(str, ((Long)localObject).longValue());
          continue;
        }
        if ((localObject instanceof Float))
        {
          localc.a(str, ((Float)localObject).floatValue());
          continue;
        }
        if (!(localObject instanceof Boolean))
          continue;
        localc.a(str, ((Boolean)localObject).booleanValue());
      }
      localc.b();
    }
  }

  private static void a(b paramb, SharedPreferences paramSharedPreferences)
  {
    if ((paramb != null) && (paramSharedPreferences != null))
    {
      SharedPreferences.Editor localEditor = paramSharedPreferences.edit();
      if (localEditor != null)
      {
        localEditor.clear();
        Iterator localIterator = paramb.b().entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          String str = (String)localEntry.getKey();
          Object localObject = localEntry.getValue();
          if ((localObject instanceof String))
          {
            localEditor.putString(str, (String)localObject);
            continue;
          }
          if ((localObject instanceof Integer))
          {
            localEditor.putInt(str, ((Integer)localObject).intValue());
            continue;
          }
          if ((localObject instanceof Long))
          {
            localEditor.putLong(str, ((Long)localObject).longValue());
            continue;
          }
          if ((localObject instanceof Float))
          {
            localEditor.putFloat(str, ((Float)localObject).floatValue());
            continue;
          }
          if (!(localObject instanceof Boolean))
            continue;
          localEditor.putBoolean(str, ((Boolean)localObject).booleanValue());
        }
        localEditor.commit();
      }
    }
  }

  private static void a(Object paramObject, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramObject == null)
    {
      paramXmlSerializer.startTag(null, "null");
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    if ((paramObject instanceof String))
    {
      paramXmlSerializer.startTag(null, "string");
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      paramXmlSerializer.text(paramObject.toString());
      paramXmlSerializer.endTag(null, "string");
      return;
    }
    String str;
    if ((paramObject instanceof Integer))
      str = "int";
    while (true)
    {
      paramXmlSerializer.startTag(null, str);
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      paramXmlSerializer.attribute(null, "value", paramObject.toString());
      paramXmlSerializer.endTag(null, str);
      return;
      if ((paramObject instanceof Long))
      {
        str = "long";
        continue;
      }
      if ((paramObject instanceof Float))
      {
        str = "float";
        continue;
      }
      if ((paramObject instanceof Double))
      {
        str = "double";
        continue;
      }
      if (!(paramObject instanceof Boolean))
        break;
      str = "boolean";
    }
    if ((paramObject instanceof byte[]))
    {
      byte[] arrayOfByte = (byte[])paramObject;
      if (arrayOfByte == null)
      {
        paramXmlSerializer.startTag(null, "null");
        paramXmlSerializer.endTag(null, "null");
        return;
      }
      paramXmlSerializer.startTag(null, "byte-array");
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      int m = arrayOfByte.length;
      paramXmlSerializer.attribute(null, "num", Integer.toString(m));
      StringBuilder localStringBuilder = new StringBuilder(arrayOfByte.length << 1);
      int n = 0;
      if (n < m)
      {
        int i1 = arrayOfByte[n];
        int i2 = i1 >> 4;
        int i3;
        label367: int i4;
        if (i2 >= 10)
        {
          i3 = -10 + (i2 + 97);
          localStringBuilder.append(i3);
          i4 = i1 & 0xFF;
          if (i4 < 10)
            break label424;
        }
        label424: for (int i5 = -10 + (i4 + 97); ; i5 = i4 + 48)
        {
          localStringBuilder.append(i5);
          n++;
          break;
          i3 = i2 + 48;
          break label367;
        }
      }
      paramXmlSerializer.text(localStringBuilder.toString());
      paramXmlSerializer.endTag(null, "byte-array");
      return;
    }
    if ((paramObject instanceof int[]))
    {
      a((int[])paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof Map))
    {
      a((Map)paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof List))
    {
      a((List)paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof CharSequence))
    {
      paramXmlSerializer.startTag(null, "string");
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      paramXmlSerializer.text(paramObject.toString());
      paramXmlSerializer.endTag(null, "string");
      return;
    }
    throw new RuntimeException("writeValueXml: unable to write value " + paramObject);
  }

  private static void a(List paramList, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramList == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramXmlSerializer.startTag(null, "list");
    if (paramString != null)
      paramXmlSerializer.attribute(null, "name", paramString);
    int m = paramList.size();
    for (int n = 0; n < m; n++)
      a(paramList.get(n), null, paramXmlSerializer);
    paramXmlSerializer.endTag(null, "list");
  }

  public static void a(Map paramMap, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramMap == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    Iterator localIterator = paramMap.entrySet().iterator();
    paramXmlSerializer.startTag(null, "map");
    if (paramString != null)
      paramXmlSerializer.attribute(null, "name", paramString);
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a(localEntry.getValue(), (String)localEntry.getKey(), paramXmlSerializer);
    }
    paramXmlSerializer.endTag(null, "map");
  }

  private static void a(int[] paramArrayOfInt, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramArrayOfInt == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramXmlSerializer.startTag(null, "int-array");
    if (paramString != null)
      paramXmlSerializer.attribute(null, "name", paramString);
    int m = paramArrayOfInt.length;
    paramXmlSerializer.attribute(null, "num", Integer.toString(m));
    for (int n = 0; n < m; n++)
    {
      paramXmlSerializer.startTag(null, "item");
      paramXmlSerializer.attribute(null, "value", Integer.toString(paramArrayOfInt[n]));
      paramXmlSerializer.endTag(null, "item");
    }
    paramXmlSerializer.endTag(null, "int-array");
  }

  // ERROR //
  private static int[] a(XmlPullParser paramXmlPullParser, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: ldc_w 329
    //   5: invokeinterface 387 3 0
    //   10: invokestatic 391	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   13: istore 4
    //   15: iload 4
    //   17: newarray int
    //   19: astore 5
    //   21: aload_0
    //   22: invokeinterface 144 1 0
    //   27: istore 6
    //   29: iconst_0
    //   30: istore 7
    //   32: iload 6
    //   34: istore 8
    //   36: iload 8
    //   38: iconst_2
    //   39: if_icmpne +159 -> 198
    //   42: aload_0
    //   43: invokeinterface 158 1 0
    //   48: ldc_w 378
    //   51: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   54: ifeq +114 -> 168
    //   57: aload 5
    //   59: iload 7
    //   61: aload_0
    //   62: aconst_null
    //   63: ldc_w 313
    //   66: invokeinterface 387 3 0
    //   71: invokestatic 391	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   74: iastore
    //   75: aload_0
    //   76: invokeinterface 174 1 0
    //   81: istore 8
    //   83: iload 8
    //   85: iconst_1
    //   86: if_icmpne -50 -> 36
    //   89: new 148	org/xmlpull/v1/XmlPullParserException
    //   92: dup
    //   93: new 150	java/lang/StringBuilder
    //   96: dup
    //   97: ldc 188
    //   99: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   102: aload_1
    //   103: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: ldc 190
    //   108: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   114: invokespecial 166	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   117: athrow
    //   118: astore_3
    //   119: new 148	org/xmlpull/v1/XmlPullParserException
    //   122: dup
    //   123: ldc_w 393
    //   126: invokespecial 166	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   129: athrow
    //   130: astore_2
    //   131: new 148	org/xmlpull/v1/XmlPullParserException
    //   134: dup
    //   135: ldc_w 395
    //   138: invokespecial 166	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   141: athrow
    //   142: astore 10
    //   144: new 148	org/xmlpull/v1/XmlPullParserException
    //   147: dup
    //   148: ldc_w 397
    //   151: invokespecial 166	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   154: athrow
    //   155: astore 9
    //   157: new 148	org/xmlpull/v1/XmlPullParserException
    //   160: dup
    //   161: ldc_w 399
    //   164: invokespecial 166	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   167: athrow
    //   168: new 148	org/xmlpull/v1/XmlPullParserException
    //   171: dup
    //   172: new 150	java/lang/StringBuilder
    //   175: dup
    //   176: ldc_w 401
    //   179: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   182: aload_0
    //   183: invokeinterface 158 1 0
    //   188: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokespecial 166	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   197: athrow
    //   198: iload 8
    //   200: iconst_3
    //   201: if_icmpne -126 -> 75
    //   204: aload_0
    //   205: invokeinterface 158 1 0
    //   210: aload_1
    //   211: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   214: ifeq +6 -> 220
    //   217: aload 5
    //   219: areturn
    //   220: aload_0
    //   221: invokeinterface 158 1 0
    //   226: ldc_w 378
    //   229: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   232: ifeq +9 -> 241
    //   235: iinc 7 1
    //   238: goto -163 -> 75
    //   241: new 148	org/xmlpull/v1/XmlPullParserException
    //   244: dup
    //   245: new 150	java/lang/StringBuilder
    //   248: dup
    //   249: ldc 194
    //   251: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: aload_1
    //   255: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: ldc 196
    //   260: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: aload_0
    //   264: invokeinterface 158 1 0
    //   269: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: invokespecial 166	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   278: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	15	118	java/lang/NullPointerException
    //   0	15	130	java/lang/NumberFormatException
    //   57	75	142	java/lang/NullPointerException
    //   57	75	155	java/lang/NumberFormatException
  }

  private e b(String paramString)
  {
    File localFile1 = Environment.getExternalStorageDirectory();
    File localFile2;
    if (localFile1 != null)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = localFile1.getAbsolutePath();
      arrayOfObject[1] = File.separator;
      arrayOfObject[2] = paramString;
      localFile2 = new File(String.format("%s%s%s", arrayOfObject));
      if (!localFile2.exists())
        localFile2.mkdirs();
    }
    while (true)
    {
      e locale = null;
      if (localFile2 != null)
      {
        this.j = new e(localFile2.getAbsolutePath());
        locale = this.j;
      }
      return locale;
      localFile2 = null;
    }
  }

  private static Object b(XmlPullParser paramXmlPullParser, String[] paramArrayOfString)
  {
    String str1 = paramXmlPullParser.getAttributeValue(null, "name");
    String str2 = paramXmlPullParser.getName();
    boolean bool = str2.equals("null");
    Object localObject = null;
    if (bool);
    while (true)
    {
      int m = paramXmlPullParser.next();
      if (m == 1)
        break;
      if (m == 3)
      {
        if (paramXmlPullParser.getName().equals(str2))
        {
          paramArrayOfString[0] = str1;
          return localObject;
          if (str2.equals("string"))
          {
            String str3 = "";
            while (true)
            {
              int n = paramXmlPullParser.next();
              if (n == 1)
                break;
              if (n == 3)
              {
                if (paramXmlPullParser.getName().equals("string"))
                {
                  paramArrayOfString[0] = str1;
                  return str3;
                }
                throw new XmlPullParserException("Unexpected end tag in <string>: " + paramXmlPullParser.getName());
              }
              if (n == 4)
              {
                str3 = str3 + paramXmlPullParser.getText();
                continue;
              }
              if (n != 2)
                continue;
              throw new XmlPullParserException("Unexpected start tag in <string>: " + paramXmlPullParser.getName());
            }
            throw new XmlPullParserException("Unexpected end of document in <string>");
          }
          if (str2.equals("int"))
          {
            localObject = Integer.valueOf(Integer.parseInt(paramXmlPullParser.getAttributeValue(null, "value")));
            continue;
          }
          if (str2.equals("long"))
          {
            localObject = Long.valueOf(paramXmlPullParser.getAttributeValue(null, "value"));
            continue;
          }
          if (str2.equals("float"))
          {
            localObject = new Float(paramXmlPullParser.getAttributeValue(null, "value"));
            continue;
          }
          if (str2.equals("double"))
          {
            localObject = new Double(paramXmlPullParser.getAttributeValue(null, "value"));
            continue;
          }
          if (str2.equals("boolean"))
          {
            localObject = Boolean.valueOf(paramXmlPullParser.getAttributeValue(null, "value"));
            continue;
          }
          if (str2.equals("int-array"))
          {
            paramXmlPullParser.next();
            int[] arrayOfInt = a(paramXmlPullParser, "int-array");
            paramArrayOfString[0] = str1;
            return arrayOfInt;
          }
          if (str2.equals("map"))
          {
            paramXmlPullParser.next();
            HashMap localHashMap = a(paramXmlPullParser, "map", paramArrayOfString);
            paramArrayOfString[0] = str1;
            return localHashMap;
          }
          if (str2.equals("list"))
          {
            paramXmlPullParser.next();
            ArrayList localArrayList = b(paramXmlPullParser, "list", paramArrayOfString);
            paramArrayOfString[0] = str1;
            return localArrayList;
          }
          throw new XmlPullParserException("Unknown tag: " + str2);
        }
        throw new XmlPullParserException("Unexpected end tag in <" + str2 + ">: " + paramXmlPullParser.getName());
      }
      if (m == 4)
        throw new XmlPullParserException("Unexpected text in <" + str2 + ">: " + paramXmlPullParser.getName());
      if (m != 2)
        continue;
      throw new XmlPullParserException("Unexpected start tag in <" + str2 + ">: " + paramXmlPullParser.getName());
    }
    throw new XmlPullParserException("Unexpected end of document in <" + str2 + ">");
  }

  private static String b()
  {
    try
    {
      String str = Environment.getExternalStorageState();
      return str;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return "";
  }

  private static ArrayList b(XmlPullParser paramXmlPullParser, String paramString, String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    int m = paramXmlPullParser.getEventType();
    if (m == 2)
      localArrayList.add(b(paramXmlPullParser, paramArrayOfString));
    do
    {
      m = paramXmlPullParser.next();
      if (m != 1)
        break;
      throw new XmlPullParserException("Document ended before " + paramString + " end tag");
    }
    while (m != 3);
    if (paramXmlPullParser.getName().equals(paramString))
      return localArrayList;
    throw new XmlPullParserException("Expected " + paramString + " end tag at: " + paramXmlPullParser.getName());
  }

  private boolean c()
  {
    if (this.f != null)
    {
      boolean bool = this.f.a();
      if (!bool)
        a();
      return bool;
    }
    return false;
  }

  public final String a(String paramString)
  {
    c();
    if (this.e != null)
    {
      String str = this.e.getString(paramString, "");
      if (!k.a(str))
        return str;
    }
    if (this.f != null)
      return this.f.a(paramString, "");
    return "";
  }

  public final void a(String paramString1, String paramString2)
  {
    if ((!k.a(paramString1)) && (!paramString1.equals("t")))
    {
      if ((this.g == null) && (this.e != null))
        this.g = this.e.edit();
      if ((this.d) && (this.h == null) && (this.f != null))
        this.h = this.f.c();
      c();
      if (this.g != null)
        this.g.putString(paramString1, paramString2);
      if (this.h != null)
        this.h.a(paramString1, paramString2);
    }
  }

  public final boolean a()
  {
    int m = 1;
    long l = System.currentTimeMillis();
    if (this.g != null)
    {
      if ((!this.k) && (this.e != null))
        this.g.putLong("t", l);
      if (!this.g.commit())
        m = 0;
    }
    if ((this.e != null) && (this.i != null))
      this.e = this.i.getSharedPreferences(this.a, 0);
    String str = b();
    if (!k.a(str))
      if (str.equals("mounted"))
      {
        if (this.f != null)
          break label238;
        e locale = b(this.b);
        if (locale != null)
        {
          this.f = locale.a(this.a);
          if (this.k)
            break label224;
          a(this.e, this.f);
        }
      }
    while (true)
    {
      this.h = this.f.c();
      label173: if ((str.equals("mounted")) || ((str.equals("mounted_ro")) && (this.f != null)));
      try
      {
        if (this.j != null)
          this.f = this.j.a(this.a);
        return m;
        label224: a(this.f, this.e);
        continue;
        label238: if ((this.h == null) || (this.h.b()))
          break label173;
        m = 0;
      }
      catch (Exception localException)
      {
      }
    }
    return m;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.d.a.b.a.d
 * JD-Core Version:    0.6.0
 */