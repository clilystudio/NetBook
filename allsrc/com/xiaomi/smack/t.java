package com.xiaomi.smack;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import org.xmlpull.v1.XmlPullParser;

public final class t
{
  private static int a = 5000;
  private static int b = 330000;
  private static int c = 300000;
  private static Vector<String> d = new Vector();

  // ERROR //
  static
  {
    // Byte code:
    //   0: sipush 5000
    //   3: putstatic 19	com/xiaomi/smack/t:a	I
    //   6: ldc 20
    //   8: putstatic 22	com/xiaomi/smack/t:b	I
    //   11: ldc 23
    //   13: putstatic 25	com/xiaomi/smack/t:c	I
    //   16: new 27	java/util/Vector
    //   19: dup
    //   20: invokespecial 30	java/util/Vector:<init>	()V
    //   23: putstatic 32	com/xiaomi/smack/t:d	Ljava/util/Vector;
    //   26: invokestatic 36	com/xiaomi/smack/t:e	()[Ljava/lang/ClassLoader;
    //   29: astore_1
    //   30: aload_1
    //   31: arraylength
    //   32: istore_2
    //   33: iconst_0
    //   34: istore_3
    //   35: iload_3
    //   36: iload_2
    //   37: if_icmpge +238 -> 275
    //   40: aload_1
    //   41: iload_3
    //   42: aaload
    //   43: ldc 38
    //   45: invokevirtual 44	java/lang/ClassLoader:getResources	(Ljava/lang/String;)Ljava/util/Enumeration;
    //   48: astore 4
    //   50: aload 4
    //   52: invokeinterface 50 1 0
    //   57: ifeq +280 -> 337
    //   60: aload 4
    //   62: invokeinterface 54 1 0
    //   67: checkcast 56	java/net/URL
    //   70: astore 5
    //   72: aconst_null
    //   73: astore 6
    //   75: aload 5
    //   77: invokevirtual 60	java/net/URL:openStream	()Ljava/io/InputStream;
    //   80: astore 6
    //   82: invokestatic 66	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   85: invokevirtual 70	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   88: astore 11
    //   90: aload 11
    //   92: ldc 72
    //   94: iconst_1
    //   95: invokeinterface 78 3 0
    //   100: aload 11
    //   102: aload 6
    //   104: ldc 80
    //   106: invokeinterface 84 3 0
    //   111: aload 11
    //   113: invokeinterface 88 1 0
    //   118: istore 12
    //   120: iload 12
    //   122: iconst_2
    //   123: if_icmpne +33 -> 156
    //   126: aload 11
    //   128: invokeinterface 92 1 0
    //   133: ldc 94
    //   135: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   138: ifeq +93 -> 231
    //   141: aload 11
    //   143: invokeinterface 103 1 0
    //   148: astore 15
    //   150: aload 15
    //   152: invokestatic 109	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   155: pop
    //   156: aload 11
    //   158: invokeinterface 112 1 0
    //   163: istore 14
    //   165: iload 14
    //   167: istore 12
    //   169: iload 12
    //   171: iconst_1
    //   172: if_icmpne -52 -> 120
    //   175: aload 6
    //   177: invokevirtual 117	java/io/InputStream:close	()V
    //   180: goto -130 -> 50
    //   183: astore 10
    //   185: goto -135 -> 50
    //   188: astore 16
    //   190: getstatic 123	java/lang/System:err	Ljava/io/PrintStream;
    //   193: new 125	java/lang/StringBuilder
    //   196: dup
    //   197: ldc 127
    //   199: invokespecial 130	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   202: aload 15
    //   204: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokevirtual 142	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   213: goto -57 -> 156
    //   216: astore 9
    //   218: aload 9
    //   220: invokevirtual 145	java/lang/Exception:printStackTrace	()V
    //   223: aload 6
    //   225: invokevirtual 117	java/io/InputStream:close	()V
    //   228: goto -178 -> 50
    //   231: aload 11
    //   233: invokeinterface 92 1 0
    //   238: ldc 147
    //   240: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   243: ifeq +33 -> 276
    //   246: aload 11
    //   248: getstatic 19	com/xiaomi/smack/t:a	I
    //   251: invokestatic 150	com/xiaomi/smack/t:a	(Lorg/xmlpull/v1/XmlPullParser;I)I
    //   254: putstatic 19	com/xiaomi/smack/t:a	I
    //   257: goto -101 -> 156
    //   260: astore 7
    //   262: aload 6
    //   264: invokevirtual 117	java/io/InputStream:close	()V
    //   267: aload 7
    //   269: athrow
    //   270: astore_0
    //   271: aload_0
    //   272: invokevirtual 145	java/lang/Exception:printStackTrace	()V
    //   275: return
    //   276: aload 11
    //   278: invokeinterface 92 1 0
    //   283: ldc 152
    //   285: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   288: ifeq +17 -> 305
    //   291: aload 11
    //   293: getstatic 22	com/xiaomi/smack/t:b	I
    //   296: invokestatic 150	com/xiaomi/smack/t:a	(Lorg/xmlpull/v1/XmlPullParser;I)I
    //   299: putstatic 22	com/xiaomi/smack/t:b	I
    //   302: goto -146 -> 156
    //   305: aload 11
    //   307: invokeinterface 92 1 0
    //   312: ldc 154
    //   314: invokevirtual 100	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   317: ifeq -161 -> 156
    //   320: getstatic 32	com/xiaomi/smack/t:d	Ljava/util/Vector;
    //   323: aload 11
    //   325: invokeinterface 103 1 0
    //   330: invokevirtual 157	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   333: pop
    //   334: goto -178 -> 156
    //   337: iinc 3 1
    //   340: goto -305 -> 35
    //   343: astore 8
    //   345: goto -78 -> 267
    //
    // Exception table:
    //   from	to	target	type
    //   175	180	183	java/lang/Exception
    //   223	228	183	java/lang/Exception
    //   150	156	188	java/lang/ClassNotFoundException
    //   75	120	216	java/lang/Exception
    //   126	150	216	java/lang/Exception
    //   150	156	216	java/lang/Exception
    //   156	165	216	java/lang/Exception
    //   190	213	216	java/lang/Exception
    //   231	257	216	java/lang/Exception
    //   276	302	216	java/lang/Exception
    //   305	334	216	java/lang/Exception
    //   75	120	260	finally
    //   126	150	260	finally
    //   150	156	260	finally
    //   156	165	260	finally
    //   190	213	260	finally
    //   218	223	260	finally
    //   231	257	260	finally
    //   276	302	260	finally
    //   305	334	260	finally
    //   26	33	270	java/lang/Exception
    //   40	50	270	java/lang/Exception
    //   50	72	270	java/lang/Exception
    //   267	270	270	java/lang/Exception
    //   262	267	343	java/lang/Exception
  }

  private static int a(XmlPullParser paramXmlPullParser, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramXmlPullParser.nextText());
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      localNumberFormatException.printStackTrace();
    }
    return paramInt;
  }

  public static String a()
  {
    return "3.1.0";
  }

  public static int b()
  {
    if (a <= 0)
      a = 5000;
    return a;
  }

  public static int c()
  {
    return b;
  }

  public static int d()
  {
    return c;
  }

  private static ClassLoader[] e()
  {
    int i = 0;
    ClassLoader[] arrayOfClassLoader = new ClassLoader[2];
    arrayOfClassLoader[0] = t.class.getClassLoader();
    arrayOfClassLoader[1] = Thread.currentThread().getContextClassLoader();
    ArrayList localArrayList = new ArrayList();
    while (i < 2)
    {
      ClassLoader localClassLoader = arrayOfClassLoader[i];
      if (localClassLoader != null)
        localArrayList.add(localClassLoader);
      i++;
    }
    return (ClassLoader[])localArrayList.toArray(new ClassLoader[localArrayList.size()]);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.t
 * JD-Core Version:    0.6.0
 */