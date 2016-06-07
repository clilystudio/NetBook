package com.arcsoft.hpay100.config;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.arcsoft.hpay100.c.b;
import com.arcsoft.hpay100.c.j;
import java.io.File;

public final class l
{
  public static String a = "";
  public static String b = "";
  public static String c = "";
  public static String d = "";
  public static String e = "";
  public static String f = "";
  public static int g = 0;
  public static int h = 0;
  public static long i = 86400L;
  public static String j = "";
  public static String k = "";
  public static String l = "";
  public static String m = "";
  public static String n = "";
  public static String o = "";
  public static String p = "";
  public static String q = "";
  public static String r = "";
  public static String s = "";

  public static String a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("&verifycode=" + paramString2);
    localStringBuilder.append("&orderid=" + paramString1);
    return localStringBuilder.toString();
  }

  // ERROR //
  public static void a()
  {
    // Byte code:
    //   0: getstatic 54	com/arcsoft/hpay100/config/l:k	Ljava/lang/String;
    //   3: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifeq +229 -> 235
    //   9: invokestatic 126	com/arcsoft/hpay100/config/l:d	()Ljava/lang/String;
    //   12: putstatic 54	com/arcsoft/hpay100/config/l:k	Ljava/lang/String;
    //   15: ldc 128
    //   17: new 73	java/lang/StringBuilder
    //   20: dup
    //   21: ldc 130
    //   23: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   26: getstatic 54	com/arcsoft/hpay100/config/l:k	Ljava/lang/String;
    //   29: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokestatic 135	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   38: getstatic 54	com/arcsoft/hpay100/config/l:k	Ljava/lang/String;
    //   41: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   44: ifeq +191 -> 235
    //   47: invokestatic 141	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   50: invokevirtual 142	java/util/UUID:toString	()Ljava/lang/String;
    //   53: ldc 144
    //   55: ldc 30
    //   57: invokevirtual 149	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   60: putstatic 54	com/arcsoft/hpay100/config/l:k	Ljava/lang/String;
    //   63: ldc 128
    //   65: new 73	java/lang/StringBuilder
    //   68: dup
    //   69: ldc 151
    //   71: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: getstatic 54	com/arcsoft/hpay100/config/l:k	Ljava/lang/String;
    //   77: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokestatic 135	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: getstatic 54	com/arcsoft/hpay100/config/l:k	Ljava/lang/String;
    //   89: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   92: ifne +143 -> 235
    //   95: getstatic 54	com/arcsoft/hpay100/config/l:k	Ljava/lang/String;
    //   98: astore_1
    //   99: new 153	java/io/File
    //   102: dup
    //   103: invokestatic 157	android/support/v7/app/k:e	()Ljava/lang/String;
    //   106: invokespecial 158	java/io/File:<init>	(Ljava/lang/String;)V
    //   109: astore_2
    //   110: aload_2
    //   111: invokevirtual 162	java/io/File:exists	()Z
    //   114: ifne +8 -> 122
    //   117: aload_2
    //   118: invokevirtual 165	java/io/File:mkdirs	()Z
    //   121: pop
    //   122: new 73	java/lang/StringBuilder
    //   125: dup
    //   126: invokestatic 157	android/support/v7/app/k:e	()Ljava/lang/String;
    //   129: invokestatic 169	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   132: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   135: ldc 171
    //   137: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: astore_3
    //   144: new 153	java/io/File
    //   147: dup
    //   148: aload_3
    //   149: invokespecial 158	java/io/File:<init>	(Ljava/lang/String;)V
    //   152: astore 4
    //   154: aload 4
    //   156: invokevirtual 162	java/io/File:exists	()Z
    //   159: ifeq +42 -> 201
    //   162: aload_3
    //   163: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   166: ifne +35 -> 201
    //   169: new 153	java/io/File
    //   172: dup
    //   173: aload_3
    //   174: invokespecial 158	java/io/File:<init>	(Ljava/lang/String;)V
    //   177: astore 8
    //   179: aload 8
    //   181: invokevirtual 174	java/io/File:isFile	()Z
    //   184: ifeq +17 -> 201
    //   187: aload 8
    //   189: invokevirtual 162	java/io/File:exists	()Z
    //   192: ifeq +9 -> 201
    //   195: aload 8
    //   197: invokevirtual 177	java/io/File:delete	()Z
    //   200: pop
    //   201: new 179	java/io/BufferedWriter
    //   204: dup
    //   205: new 181	java/io/FileWriter
    //   208: dup
    //   209: aload 4
    //   211: invokespecial 184	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   214: invokespecial 187	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   217: astore 5
    //   219: aload 5
    //   221: aload_1
    //   222: invokevirtual 190	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   225: aload 5
    //   227: invokevirtual 193	java/io/BufferedWriter:flush	()V
    //   230: aload 5
    //   232: invokevirtual 196	java/io/BufferedWriter:close	()V
    //   235: return
    //   236: astore 7
    //   238: aload 7
    //   240: invokevirtual 199	java/io/IOException:printStackTrace	()V
    //   243: return
    //   244: astore_0
    //   245: aload_0
    //   246: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   249: return
    //   250: astore 6
    //   252: aload 6
    //   254: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   257: return
    //
    // Exception table:
    //   from	to	target	type
    //   201	235	236	java/io/IOException
    //   0	122	244	java/lang/Exception
    //   122	201	244	java/lang/Exception
    //   238	243	244	java/lang/Exception
    //   252	257	244	java/lang/Exception
    //   201	235	250	java/lang/Exception
  }

  public static void a(Activity paramActivity, String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, String paramString4, int paramInt3, k paramk)
  {
    Thread localThread = new Thread(new p(paramActivity, paramString1, paramInt1, paramString2, paramInt2, paramString3, paramString4, paramInt3, paramk));
    localThread.setName("thread_paycode");
    localThread.start();
  }

  public static void a(Activity paramActivity, String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, int paramInt2, k paramk)
  {
    Thread localThread = new Thread(new n(paramActivity, paramString1, paramString2, paramInt1, paramString3, paramString4, paramInt2, paramk));
    localThread.setName("thread_scheme_type");
    localThread.start();
  }

  public static void a(Activity paramActivity, String paramString1, String paramString2, k paramk)
  {
    Thread localThread = new Thread(new r(paramActivity, paramString1, paramString2, paramk));
    localThread.setName("thread_submityzm");
    localThread.start();
  }

  public static void a(Context paramContext)
  {
    long l1 = 0L;
    Context localContext = paramContext.getApplicationContext();
    long l2;
    long l3;
    long l4;
    try
    {
      if (a.b == null)
        a.b = localContext.getSharedPreferences("hpay_game_config", 0);
      g = a.b.getInt("hpay_game_filter", 0);
      f = a.b.getString("hpay_game_filter_content", "");
      h = a.b.getInt("hpay_game_confirm", 0);
      p = a.b.getString("hpay_game_scheme_content", "");
      i = a.b.getLong("hpay_game_next_inittime", 86400L);
      com.arcsoft.hpay100.a.a.b("dalongTest", "HPAY_NEXT_INITTIME 1:" + i);
      String str = f(localContext.getApplicationContext());
      j = a.b.getString(str, "");
      com.arcsoft.hpay100.a.a.b("dalongTest", "hpay_game_init_phone:" + j);
      if (!com.arcsoft.hpay100.a.a.j(paramContext.getApplicationContext()))
        return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
      l2 = 1000L * i;
      com.arcsoft.hpay100.a.a.b("dalongTest", "nextinitTime:" + l2);
      l3 = System.currentTimeMillis();
      l4 = g(paramContext.getApplicationContext());
      if (l4 <= l3)
        break label330;
    }
    a(paramContext, l1);
    while (true)
    {
      long l5 = l3 - l1;
      com.arcsoft.hpay100.a.a.b("dalongTest", "intervalTime:" + l5);
      if (l5 < l2)
      {
        com.arcsoft.hpay100.a.a.b("dalongTest", "初始化请求间隔时间太短");
        return;
      }
      Thread localThread = new Thread(new m(paramContext));
      localThread.setName("thread_init");
      localThread.start();
      return;
      label330: l1 = l4;
    }
  }

  public static void a(Context paramContext, int paramInt)
  {
    int i1 = 1;
    try
    {
      int i2 = j.a();
      String str1 = i2 + "@@@0";
      String[] arrayOfString = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("hpay_smsfailednum_2", str1).split("@@@");
      if (arrayOfString[0].equals(i2))
        i1 = 1 + Integer.valueOf(arrayOfString[1]).intValue();
      String str2 = i2 + "@@@" + i1;
      PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putString("hpay_smsfailednum_2", str2).commit();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(Context paramContext, long paramLong)
  {
    try
    {
      PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putLong("hpay_init_request_time", paramLong).commit();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(Context paramContext, k paramk)
  {
    if ((!b.b(paramContext)) || (!com.arcsoft.hpay100.a.a.k(paramContext)))
    {
      paramk.a("");
      return;
    }
    com.arcsoft.hpay100.a.a.b("dalongTest", "getCMWhite01");
    Thread localThread = new Thread(new v(paramContext, paramk));
    localThread.setName("thread_getcmwhite01");
    localThread.start();
  }

  public static void a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    do
      return;
    while (com.arcsoft.hpay100.a.a.i(paramContext.getApplicationContext()) == -1);
    Thread localThread = new Thread(new t(paramContext, paramString));
    localThread.setName("thread_reserve_url");
    localThread.start();
  }

  public static String b(Context paramContext)
  {
    try
    {
      int i1 = j.a();
      String str = i1 + "@@@0";
      String[] arrayOfString = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("hpay_smsfailednum_2", str).split("@@@");
      if (arrayOfString[0].equals(i1))
        return arrayOfString[1];
      return "0";
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "0";
  }

  public static void b()
  {
    if (TextUtils.isEmpty(l))
      l = a.b();
  }

  public static void b(Context paramContext, int paramInt)
  {
    try
    {
      PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putInt("hpay_init_sdk_date", paramInt).commit();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void b(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    int i1;
    do
    {
      return;
      i1 = com.arcsoft.hpay100.a.a.i(paramContext.getApplicationContext());
    }
    while ((i1 == -1) || (i1 == 6));
    Thread localThread = new Thread(new u(paramContext, paramString));
    localThread.setName("thread_whitelist");
    localThread.start();
  }

  public static void c()
  {
    try
    {
      if (!android.support.v7.app.k.d())
      {
        w.b = false;
        return;
      }
      if (new File(android.support.v7.app.k.e() + ".hpaylogtest.debug").exists())
      {
        w.b = true;
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      w.b = false;
    }
  }

  public static void c(Context paramContext)
  {
    try
    {
      String str = j.a() + "@@@0";
      PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putString("hpay_smsfailednum_2", str).commit();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static int d(Context paramContext)
  {
    try
    {
      int i1 = PreferenceManager.getDefaultSharedPreferences(paramContext).getInt("hpay_init_sdk_date", 0);
      return i1;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  // ERROR //
  private static String d()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: ldc 30
    //   4: astore_1
    //   5: new 153	java/io/File
    //   8: dup
    //   9: new 73	java/lang/StringBuilder
    //   12: dup
    //   13: invokestatic 157	android/support/v7/app/k:e	()Ljava/lang/String;
    //   16: invokestatic 169	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   19: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: ldc 171
    //   24: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   30: invokespecial 158	java/io/File:<init>	(Ljava/lang/String;)V
    //   33: astore_2
    //   34: aload_2
    //   35: invokevirtual 162	java/io/File:exists	()Z
    //   38: ifeq +43 -> 81
    //   41: new 425	java/io/FileReader
    //   44: dup
    //   45: aload_2
    //   46: invokespecial 426	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   49: astore_3
    //   50: new 428	java/io/BufferedReader
    //   53: dup
    //   54: aload_3
    //   55: invokespecial 431	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   58: astore 4
    //   60: aload 4
    //   62: invokevirtual 434	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   65: astore 11
    //   67: aload 11
    //   69: ifnonnull +14 -> 83
    //   72: aload_3
    //   73: invokevirtual 435	java/io/FileReader:close	()V
    //   76: aload 4
    //   78: invokevirtual 436	java/io/BufferedReader:close	()V
    //   81: aload_1
    //   82: areturn
    //   83: new 73	java/lang/StringBuilder
    //   86: dup
    //   87: aload_1
    //   88: invokestatic 169	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   91: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: aload 11
    //   96: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore 12
    //   104: aload 12
    //   106: astore_1
    //   107: goto -47 -> 60
    //   110: astore 5
    //   112: aconst_null
    //   113: astore 4
    //   115: aload 5
    //   117: invokevirtual 437	java/io/FileNotFoundException:printStackTrace	()V
    //   120: aload_0
    //   121: ifnull +7 -> 128
    //   124: aload_0
    //   125: invokevirtual 435	java/io/FileReader:close	()V
    //   128: aload 4
    //   130: ifnull -49 -> 81
    //   133: aload 4
    //   135: invokevirtual 436	java/io/BufferedReader:close	()V
    //   138: aload_1
    //   139: areturn
    //   140: astore 8
    //   142: aload 8
    //   144: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   147: aload_1
    //   148: areturn
    //   149: astore 9
    //   151: aconst_null
    //   152: astore 4
    //   154: aconst_null
    //   155: astore_3
    //   156: aload 9
    //   158: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   161: aload_3
    //   162: ifnull +7 -> 169
    //   165: aload_3
    //   166: invokevirtual 435	java/io/FileReader:close	()V
    //   169: aload 4
    //   171: ifnull -90 -> 81
    //   174: aload 4
    //   176: invokevirtual 436	java/io/BufferedReader:close	()V
    //   179: aload_1
    //   180: areturn
    //   181: astore 10
    //   183: aload 10
    //   185: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   188: aload_1
    //   189: areturn
    //   190: astore 6
    //   192: aconst_null
    //   193: astore 4
    //   195: aconst_null
    //   196: astore_3
    //   197: aload_3
    //   198: ifnull +7 -> 205
    //   201: aload_3
    //   202: invokevirtual 435	java/io/FileReader:close	()V
    //   205: aload 4
    //   207: ifnull +8 -> 215
    //   210: aload 4
    //   212: invokevirtual 436	java/io/BufferedReader:close	()V
    //   215: aload 6
    //   217: athrow
    //   218: astore 7
    //   220: aload 7
    //   222: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   225: goto -10 -> 215
    //   228: astore 13
    //   230: aload 13
    //   232: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   235: aload_1
    //   236: areturn
    //   237: astore 6
    //   239: aconst_null
    //   240: astore 4
    //   242: goto -45 -> 197
    //   245: astore 6
    //   247: goto -50 -> 197
    //   250: astore 6
    //   252: aload_0
    //   253: astore_3
    //   254: goto -57 -> 197
    //   257: astore 9
    //   259: aconst_null
    //   260: astore 4
    //   262: goto -106 -> 156
    //   265: astore 9
    //   267: goto -111 -> 156
    //   270: astore 5
    //   272: aload_3
    //   273: astore_0
    //   274: aconst_null
    //   275: astore 4
    //   277: goto -162 -> 115
    //   280: astore 5
    //   282: aload_3
    //   283: astore_0
    //   284: goto -169 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   41	50	110	java/io/FileNotFoundException
    //   124	128	140	java/lang/Exception
    //   133	138	140	java/lang/Exception
    //   41	50	149	java/lang/Exception
    //   165	169	181	java/lang/Exception
    //   174	179	181	java/lang/Exception
    //   41	50	190	finally
    //   201	205	218	java/lang/Exception
    //   210	215	218	java/lang/Exception
    //   72	81	228	java/lang/Exception
    //   50	60	237	finally
    //   60	67	245	finally
    //   83	104	245	finally
    //   156	161	245	finally
    //   115	120	250	finally
    //   50	60	257	java/lang/Exception
    //   60	67	265	java/lang/Exception
    //   83	104	265	java/lang/Exception
    //   50	60	270	java/io/FileNotFoundException
    //   60	67	280	java/io/FileNotFoundException
    //   83	104	280	java/io/FileNotFoundException
  }

  // ERROR //
  public static String e(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 439	android/support/v7/app/k:h	(Landroid/content/Context;)Ljava/lang/String;
    //   4: astore_3
    //   5: ldc 128
    //   7: new 73	java/lang/StringBuilder
    //   10: dup
    //   11: ldc_w 441
    //   14: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: aload_3
    //   18: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: invokestatic 135	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   27: aload_3
    //   28: invokestatic 124	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   31: ifne +12 -> 43
    //   34: aload_3
    //   35: invokevirtual 444	java/lang/String:length	()I
    //   38: bipush 11
    //   40: if_icmpge +85 -> 125
    //   43: getstatic 52	com/arcsoft/hpay100/config/l:j	Ljava/lang/String;
    //   46: astore_2
    //   47: ldc 128
    //   49: new 73	java/lang/StringBuilder
    //   52: dup
    //   53: ldc_w 446
    //   56: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   59: aload_2
    //   60: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokestatic 135	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   69: ldc 128
    //   71: new 73	java/lang/StringBuilder
    //   74: dup
    //   75: ldc_w 448
    //   78: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_2
    //   82: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokestatic 135	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   91: aload_2
    //   92: invokestatic 451	com/arcsoft/hpay100/c/b:a	(Ljava/lang/String;)Z
    //   95: ifne +6 -> 101
    //   98: ldc 30
    //   100: astore_2
    //   101: ldc 128
    //   103: new 73	java/lang/StringBuilder
    //   106: dup
    //   107: ldc_w 453
    //   110: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_2
    //   114: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 135	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   123: aload_2
    //   124: areturn
    //   125: aload_3
    //   126: ldc_w 455
    //   129: invokevirtual 459	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   132: istore 6
    //   134: aload_3
    //   135: iload 6
    //   137: iload 6
    //   139: bipush 11
    //   141: iadd
    //   142: invokevirtual 463	java/lang/String:substring	(II)Ljava/lang/String;
    //   145: astore 7
    //   147: aload 7
    //   149: astore_2
    //   150: aload_2
    //   151: ldc_w 465
    //   154: invokevirtual 468	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   157: ifeq +12 -> 169
    //   160: aload_2
    //   161: iconst_3
    //   162: invokevirtual 470	java/lang/String:substring	(I)Ljava/lang/String;
    //   165: astore_2
    //   166: goto -97 -> 69
    //   169: aload_2
    //   170: ldc_w 472
    //   173: invokevirtual 468	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   176: ifeq -107 -> 69
    //   179: aload_2
    //   180: iconst_2
    //   181: invokevirtual 470	java/lang/String:substring	(I)Ljava/lang/String;
    //   184: astore 8
    //   186: aload 8
    //   188: astore_2
    //   189: goto -120 -> 69
    //   192: astore 4
    //   194: aload_3
    //   195: astore_2
    //   196: aload 4
    //   198: astore 5
    //   200: aload 5
    //   202: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   205: goto -136 -> 69
    //   208: astore_1
    //   209: aload_1
    //   210: invokevirtual 200	java/lang/Exception:printStackTrace	()V
    //   213: ldc 30
    //   215: astore_2
    //   216: goto -147 -> 69
    //   219: astore 5
    //   221: goto -21 -> 200
    //
    // Exception table:
    //   from	to	target	type
    //   125	147	192	java/lang/Exception
    //   0	43	208	java/lang/Exception
    //   43	69	208	java/lang/Exception
    //   200	205	208	java/lang/Exception
    //   150	166	219	java/lang/Exception
    //   169	186	219	java/lang/Exception
  }

  public static String f(Context paramContext)
  {
    String str1 = "hpay_game_init_phone";
    String str2 = android.support.v7.app.k.e(paramContext);
    if (!TextUtils.isEmpty(str2))
      str1 = str1 + str2;
    com.arcsoft.hpay100.a.a.b("dalongTest", "initphonekey:" + str1);
    return str1;
  }

  private static long g(Context paramContext)
  {
    long l1 = 0L;
    try
    {
      long l2 = PreferenceManager.getDefaultSharedPreferences(paramContext).getLong("hpay_init_request_time", 0L);
      l1 = l2;
      com.arcsoft.hpay100.a.a.b("dalongTest", "initRequestTime:" + l1);
      return l1;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.config.l
 * JD-Core Version:    0.6.0
 */