package com.koushikdutta.async.http.b;

public class a
{
  private final e a;

  // ERROR //
  public a(android.net.Uri paramUri, e parame)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 13	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aload_2
    //   6: putfield 15	com/koushikdutta/async/http/b/a:a	Lcom/koushikdutta/async/http/b/e;
    //   9: new 17	com/koushikdutta/async/http/b/g
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 20	com/koushikdutta/async/http/b/g:<init>	(Lcom/koushikdutta/async/http/b/a;)V
    //   17: astore_3
    //   18: iconst_0
    //   19: istore 4
    //   21: iload 4
    //   23: aload_2
    //   24: invokevirtual 26	com/koushikdutta/async/http/b/e:d	()I
    //   27: if_icmpge +189 -> 216
    //   30: aload_2
    //   31: iload 4
    //   33: invokevirtual 29	com/koushikdutta/async/http/b/e:a	(I)Ljava/lang/String;
    //   36: astore 5
    //   38: aload_2
    //   39: iload 4
    //   41: invokevirtual 32	com/koushikdutta/async/http/b/e:b	(I)Ljava/lang/String;
    //   44: astore 6
    //   46: ldc 34
    //   48: aload 5
    //   50: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   53: ifeq +15 -> 68
    //   56: aload 6
    //   58: aload_3
    //   59: invokestatic 43	com/koushikdutta/async/http/b/a:a	(Ljava/lang/String;Lcom/koushikdutta/async/http/b/b;)V
    //   62: iinc 4 1
    //   65: goto -44 -> 21
    //   68: ldc 45
    //   70: aload 5
    //   72: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   75: ifeq +16 -> 91
    //   78: aload 6
    //   80: ldc 47
    //   82: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   85: ifeq -23 -> 62
    //   88: goto -26 -> 62
    //   91: ldc 49
    //   93: aload 5
    //   95: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   98: ifne -36 -> 62
    //   101: ldc 51
    //   103: aload 5
    //   105: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   108: ifne -46 -> 62
    //   111: ldc 53
    //   113: aload 5
    //   115: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   118: ifne -56 -> 62
    //   121: ldc 55
    //   123: aload 5
    //   125: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   128: ifeq +17 -> 145
    //   131: aload 6
    //   133: invokestatic 61	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   136: pop
    //   137: goto -75 -> 62
    //   140: astore 8
    //   142: goto -80 -> 62
    //   145: ldc 63
    //   147: aload 5
    //   149: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   152: ifne -90 -> 62
    //   155: ldc 65
    //   157: aload 5
    //   159: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   162: ifne -100 -> 62
    //   165: ldc 67
    //   167: aload 5
    //   169: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   172: ifne -110 -> 62
    //   175: ldc 69
    //   177: aload 5
    //   179: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   182: ifne -120 -> 62
    //   185: ldc 71
    //   187: aload 5
    //   189: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   192: ifne -130 -> 62
    //   195: ldc 73
    //   197: aload 5
    //   199: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   202: ifne -140 -> 62
    //   205: ldc 75
    //   207: aload 5
    //   209: invokevirtual 40	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   212: pop
    //   213: goto -151 -> 62
    //   216: return
    //
    // Exception table:
    //   from	to	target	type
    //   131	137	140	java/lang/NumberFormatException
  }

  public static int a(String paramString)
  {
    try
    {
      long l = Long.parseLong(paramString);
      if (l > 2147483647L)
        return 2147483647;
      if (l < 0L)
        return 0;
      return (int)l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return -1;
  }

  private static int a(String paramString1, int paramInt, String paramString2)
  {
    while ((paramInt < paramString1.length()) && (paramString2.indexOf(paramString1.charAt(paramInt)) == -1))
      paramInt++;
    return paramInt;
  }

  public static void a(String paramString, b paramb)
  {
    int i = 0;
    while (i < paramString.length())
    {
      int j = a(paramString, i, "=,");
      String str1 = paramString.substring(i, j).trim();
      if ((j == paramString.length()) || (paramString.charAt(j) == ','))
      {
        i = j + 1;
        paramb.a(str1, null);
        continue;
      }
      for (int k = j + 1; k < paramString.length(); k++)
      {
        int i2 = paramString.charAt(k);
        if ((i2 != 32) && (i2 != 9))
          break;
      }
      String str3;
      if ((k < paramString.length()) && (paramString.charAt(k) == '"'))
      {
        int n = k + 1;
        int i1 = a(paramString, n, "\"");
        str3 = paramString.substring(n, i1);
        i = i1 + 1;
      }
      String str2;
      for (Object localObject = str3; ; localObject = str2)
      {
        paramb.a(str1, (String)localObject);
        break;
        int m = a(paramString, k, ",");
        str2 = paramString.substring(k, m).trim();
        i = m;
      }
    }
  }

  public e a()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.b.a
 * JD-Core Version:    0.6.0
 */