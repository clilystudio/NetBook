package cn.sharesdk.sina.weibo;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;
import java.util.Iterator;
import java.util.List;

public class i
{
  private static final Uri a = Uri.parse("content://com.sina.weibo.sdkProvider/query/package");
  private static i b;
  private static i.a c = null;
  private Context d;

  private i(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
  }

  public static i a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (b == null)
        b = new i(paramContext);
      i locali = b;
      return locali;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static boolean a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return false;
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 64);
      return a(localPackageInfo.signatures, "18da2bf10352443a00a5e046d9fca6bd");
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return false;
  }

  private static boolean a(Signature[] paramArrayOfSignature, String paramString)
  {
    if ((paramArrayOfSignature == null) || (paramString == null));
    while (true)
    {
      return false;
      int i = paramArrayOfSignature.length;
      for (int j = 0; j < i; j++)
      {
        if (!paramString.equals(a.d(paramArrayOfSignature[j].toByteArray())))
          continue;
        cn.sharesdk.framework.utils.d.a().d("check pass", new Object[0]);
        return true;
      }
    }
  }

  private i.a b(Context paramContext)
  {
    int i = 1;
    i.a locala1 = c(paramContext);
    i.a locala2 = d(paramContext);
    int j;
    if (locala1 != null)
    {
      j = i;
      if (locala2 == null)
        break label56;
      label27: if ((j == 0) || (i == 0))
        break label64;
      if (locala1.b() < locala2.b())
        break label61;
    }
    label56: label61: label64: 
    do
    {
      return locala1;
      j = 0;
      break;
      i = 0;
      break label27;
      return locala2;
    }
    while (j != 0);
    if (i != 0)
      return locala2;
    return null;
  }

  // ERROR //
  private i.a c(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 120	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_2
    //   5: aload_2
    //   6: getstatic 24	cn/sharesdk/sina/weibo/i:a	Landroid/net/Uri;
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: invokevirtual 126	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   16: astore 7
    //   18: aload 7
    //   20: astore 4
    //   22: aload 4
    //   24: ifnonnull +21 -> 45
    //   27: aload 4
    //   29: ifnull +10 -> 39
    //   32: aload 4
    //   34: invokeinterface 131 1 0
    //   39: aconst_null
    //   40: astore 14
    //   42: aload 14
    //   44: areturn
    //   45: aload 4
    //   47: ldc 133
    //   49: invokeinterface 137 2 0
    //   54: istore 8
    //   56: aload 4
    //   58: ldc 139
    //   60: invokeinterface 137 2 0
    //   65: istore 9
    //   67: aload 4
    //   69: invokeinterface 143 1 0
    //   74: ifeq +104 -> 178
    //   77: aload 4
    //   79: iload 8
    //   81: invokeinterface 147 2 0
    //   86: astore 10
    //   88: aload 10
    //   90: invokestatic 152	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   93: istore 15
    //   95: iload 15
    //   97: istore 12
    //   99: aload 4
    //   101: iload 9
    //   103: invokeinterface 147 2 0
    //   108: astore 13
    //   110: aload 13
    //   112: invokestatic 52	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   115: ifne +63 -> 178
    //   118: aload_1
    //   119: aload 13
    //   121: invokestatic 154	cn/sharesdk/sina/weibo/i:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   124: ifeq +54 -> 178
    //   127: new 109	cn/sharesdk/sina/weibo/i$a
    //   130: dup
    //   131: invokespecial 155	cn/sharesdk/sina/weibo/i$a:<init>	()V
    //   134: astore 14
    //   136: aload 14
    //   138: aload 13
    //   140: invokestatic 158	cn/sharesdk/sina/weibo/i$a:a	(Lcn/sharesdk/sina/weibo/i$a;Ljava/lang/String;)V
    //   143: aload 14
    //   145: iload 12
    //   147: invokestatic 161	cn/sharesdk/sina/weibo/i$a:a	(Lcn/sharesdk/sina/weibo/i$a;I)V
    //   150: aload 4
    //   152: ifnull -110 -> 42
    //   155: aload 4
    //   157: invokeinterface 131 1 0
    //   162: aload 14
    //   164: areturn
    //   165: astore 11
    //   167: aload 11
    //   169: invokevirtual 164	java/lang/NumberFormatException:printStackTrace	()V
    //   172: iconst_m1
    //   173: istore 12
    //   175: goto -76 -> 99
    //   178: aload 4
    //   180: ifnull +10 -> 190
    //   183: aload 4
    //   185: invokeinterface 131 1 0
    //   190: aconst_null
    //   191: areturn
    //   192: astore 5
    //   194: aconst_null
    //   195: astore 4
    //   197: invokestatic 95	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   200: aload 5
    //   202: invokevirtual 168	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   205: iconst_0
    //   206: anewarray 4	java/lang/Object
    //   209: invokevirtual 171	com/mob/tools/log/d:e	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   212: pop
    //   213: aload 4
    //   215: ifnull -25 -> 190
    //   218: aload 4
    //   220: invokeinterface 131 1 0
    //   225: goto -35 -> 190
    //   228: astore_3
    //   229: aconst_null
    //   230: astore 4
    //   232: aload 4
    //   234: ifnull +10 -> 244
    //   237: aload 4
    //   239: invokeinterface 131 1 0
    //   244: aload_3
    //   245: athrow
    //   246: astore_3
    //   247: goto -15 -> 232
    //   250: astore 5
    //   252: goto -55 -> 197
    //
    // Exception table:
    //   from	to	target	type
    //   88	95	165	java/lang/NumberFormatException
    //   5	18	192	java/lang/Exception
    //   5	18	228	finally
    //   45	88	246	finally
    //   88	95	246	finally
    //   99	150	246	finally
    //   167	172	246	finally
    //   197	213	246	finally
    //   45	88	250	java/lang/Exception
    //   88	95	250	java/lang/Exception
    //   99	150	250	java/lang/Exception
    //   167	172	250	java/lang/Exception
  }

  private i.a d(Context paramContext)
  {
    Intent localIntent = new Intent("com.sina.weibo.action.sdkidentity");
    localIntent.addCategory("android.intent.category.DEFAULT");
    List localList = paramContext.getPackageManager().queryIntentServices(localIntent, 0);
    if ((localList == null) || (localList.isEmpty()))
    {
      localObject1 = null;
      return localObject1;
    }
    Iterator localIterator = localList.iterator();
    Object localObject1 = null;
    label61: Object localObject2;
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      if ((localResolveInfo.serviceInfo == null) || (localResolveInfo.serviceInfo.applicationInfo == null) || (TextUtils.isEmpty(localResolveInfo.serviceInfo.applicationInfo.packageName)))
        break label173;
      localObject2 = a(localResolveInfo.serviceInfo.applicationInfo.packageName);
      if (localObject2 == null)
        break label173;
      if (localObject1 == null)
      {
        localObject1 = localObject2;
        continue;
      }
      if (localObject1.b() >= ((i.a)localObject2).b())
        break label173;
    }
    while (true)
    {
      localObject1 = localObject2;
      break label61;
      break;
      label173: localObject2 = localObject1;
    }
  }

  // ERROR //
  public i.a a(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 52	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: getfield 38	cn/sharesdk/sina/weibo/i:d	Landroid/content/Context;
    //   13: aload_1
    //   14: iconst_2
    //   15: invokevirtual 232	android/content/Context:createPackageContext	(Ljava/lang/String;I)Landroid/content/Context;
    //   18: astore 15
    //   20: bipush 63
    //   22: newarray byte
    //   24: astore 16
    //   26: aload 15
    //   28: invokevirtual 236	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   31: ldc 238
    //   33: invokevirtual 244	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   36: astore 17
    //   38: aload 17
    //   40: astore_3
    //   41: new 246	java/lang/StringBuilder
    //   44: dup
    //   45: invokespecial 247	java/lang/StringBuilder:<init>	()V
    //   48: astore 18
    //   50: aload_3
    //   51: aload 16
    //   53: iconst_0
    //   54: sipush 4096
    //   57: invokevirtual 253	java/io/InputStream:read	([BII)I
    //   60: istore 19
    //   62: iload 19
    //   64: iconst_m1
    //   65: if_icmpeq +70 -> 135
    //   68: aload 18
    //   70: new 86	java/lang/String
    //   73: dup
    //   74: aload 16
    //   76: iconst_0
    //   77: iload 19
    //   79: invokespecial 256	java/lang/String:<init>	([BII)V
    //   82: invokevirtual 260	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: pop
    //   86: goto -36 -> 50
    //   89: astore_2
    //   90: invokestatic 95	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   93: aload_2
    //   94: invokevirtual 261	android/content/pm/PackageManager$NameNotFoundException:getMessage	()Ljava/lang/String;
    //   97: iconst_0
    //   98: anewarray 4	java/lang/Object
    //   101: invokevirtual 171	com/mob/tools/log/d:e	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   104: pop
    //   105: aload_3
    //   106: ifnull -99 -> 7
    //   109: aload_3
    //   110: invokevirtual 262	java/io/InputStream:close	()V
    //   113: aconst_null
    //   114: areturn
    //   115: astore 8
    //   117: invokestatic 95	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   120: aload 8
    //   122: invokevirtual 263	java/io/IOException:getMessage	()Ljava/lang/String;
    //   125: iconst_0
    //   126: anewarray 4	java/lang/Object
    //   129: invokevirtual 171	com/mob/tools/log/d:e	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   132: pop
    //   133: aconst_null
    //   134: areturn
    //   135: aload 18
    //   137: invokevirtual 266	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 52	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   143: ifne +18 -> 161
    //   146: aload_0
    //   147: getfield 38	cn/sharesdk/sina/weibo/i:d	Landroid/content/Context;
    //   150: aload_1
    //   151: invokestatic 154	cn/sharesdk/sina/weibo/i:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   154: istore 23
    //   156: iload 23
    //   158: ifne +33 -> 191
    //   161: aload_3
    //   162: ifnull -155 -> 7
    //   165: aload_3
    //   166: invokevirtual 262	java/io/InputStream:close	()V
    //   169: aconst_null
    //   170: areturn
    //   171: astore 21
    //   173: invokestatic 95	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   176: aload 21
    //   178: invokevirtual 263	java/io/IOException:getMessage	()Ljava/lang/String;
    //   181: iconst_0
    //   182: anewarray 4	java/lang/Object
    //   185: invokevirtual 171	com/mob/tools/log/d:e	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   188: pop
    //   189: aconst_null
    //   190: areturn
    //   191: new 268	org/json/JSONObject
    //   194: dup
    //   195: aload 18
    //   197: invokevirtual 266	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokespecial 269	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   203: ldc 133
    //   205: iconst_m1
    //   206: invokevirtual 273	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   209: istore 24
    //   211: new 109	cn/sharesdk/sina/weibo/i$a
    //   214: dup
    //   215: invokespecial 155	cn/sharesdk/sina/weibo/i$a:<init>	()V
    //   218: astore 25
    //   220: aload 25
    //   222: aload_1
    //   223: invokestatic 158	cn/sharesdk/sina/weibo/i$a:a	(Lcn/sharesdk/sina/weibo/i$a;Ljava/lang/String;)V
    //   226: aload 25
    //   228: iload 24
    //   230: invokestatic 161	cn/sharesdk/sina/weibo/i$a:a	(Lcn/sharesdk/sina/weibo/i$a;I)V
    //   233: aload_3
    //   234: ifnull +7 -> 241
    //   237: aload_3
    //   238: invokevirtual 262	java/io/InputStream:close	()V
    //   241: aload 25
    //   243: areturn
    //   244: astore 26
    //   246: invokestatic 95	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   249: aload 26
    //   251: invokevirtual 263	java/io/IOException:getMessage	()Ljava/lang/String;
    //   254: iconst_0
    //   255: anewarray 4	java/lang/Object
    //   258: invokevirtual 171	com/mob/tools/log/d:e	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   261: pop
    //   262: goto -21 -> 241
    //   265: astore 11
    //   267: aconst_null
    //   268: astore_3
    //   269: invokestatic 95	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   272: aload 11
    //   274: invokevirtual 168	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   277: iconst_0
    //   278: anewarray 4	java/lang/Object
    //   281: invokevirtual 171	com/mob/tools/log/d:e	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   284: pop
    //   285: aload_3
    //   286: ifnull -279 -> 7
    //   289: aload_3
    //   290: invokevirtual 262	java/io/InputStream:close	()V
    //   293: aconst_null
    //   294: areturn
    //   295: astore 13
    //   297: invokestatic 95	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   300: aload 13
    //   302: invokevirtual 263	java/io/IOException:getMessage	()Ljava/lang/String;
    //   305: iconst_0
    //   306: anewarray 4	java/lang/Object
    //   309: invokevirtual 171	com/mob/tools/log/d:e	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   312: pop
    //   313: aconst_null
    //   314: areturn
    //   315: astore 10
    //   317: aconst_null
    //   318: astore_3
    //   319: aload 10
    //   321: astore 4
    //   323: aload_3
    //   324: ifnull +7 -> 331
    //   327: aload_3
    //   328: invokevirtual 262	java/io/InputStream:close	()V
    //   331: aload 4
    //   333: athrow
    //   334: astore 5
    //   336: invokestatic 95	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   339: aload 5
    //   341: invokevirtual 263	java/io/IOException:getMessage	()Ljava/lang/String;
    //   344: iconst_0
    //   345: anewarray 4	java/lang/Object
    //   348: invokevirtual 171	com/mob/tools/log/d:e	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   351: pop
    //   352: goto -21 -> 331
    //   355: astore 4
    //   357: goto -34 -> 323
    //   360: astore 11
    //   362: goto -93 -> 269
    //   365: astore_2
    //   366: aconst_null
    //   367: astore_3
    //   368: goto -278 -> 90
    //
    // Exception table:
    //   from	to	target	type
    //   41	50	89	android/content/pm/PackageManager$NameNotFoundException
    //   50	62	89	android/content/pm/PackageManager$NameNotFoundException
    //   68	86	89	android/content/pm/PackageManager$NameNotFoundException
    //   135	156	89	android/content/pm/PackageManager$NameNotFoundException
    //   191	233	89	android/content/pm/PackageManager$NameNotFoundException
    //   109	113	115	java/io/IOException
    //   165	169	171	java/io/IOException
    //   237	241	244	java/io/IOException
    //   9	38	265	java/lang/Exception
    //   289	293	295	java/io/IOException
    //   9	38	315	finally
    //   327	331	334	java/io/IOException
    //   41	50	355	finally
    //   50	62	355	finally
    //   68	86	355	finally
    //   90	105	355	finally
    //   135	156	355	finally
    //   191	233	355	finally
    //   269	285	355	finally
    //   41	50	360	java/lang/Exception
    //   50	62	360	java/lang/Exception
    //   68	86	360	java/lang/Exception
    //   135	156	360	java/lang/Exception
    //   191	233	360	java/lang/Exception
    //   9	38	365	android/content/pm/PackageManager$NameNotFoundException
  }

  public String a()
  {
    monitorenter;
    try
    {
      if (c == null)
        c = b(this.d);
      String str = c.a();
      return str;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public int b()
  {
    monitorenter;
    try
    {
      if (c == null)
        c = b(this.d);
      if (c != null)
      {
        boolean bool = c.c();
        if (bool)
          break label42;
      }
      label42: int j;
      for (int i = -1; ; i = j)
      {
        return i;
        j = c.b();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.i
 * JD-Core Version:    0.6.0
 */