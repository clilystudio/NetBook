package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ListAdapter;
import com.xiaomi.a.a.a.b;
import com.xiaomi.a.a.d.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class k
{
  private final f a;
  private int b;

  public k(Context paramContext)
  {
    this(paramContext, j.a(paramContext, 0));
  }

  private k(Context paramContext, int paramInt)
  {
    this.a = new f(new ContextThemeWrapper(paramContext, j.a(paramContext, paramInt)));
    this.b = paramInt;
  }

  public static int a(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
      return 0;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public static String a(String paramString1, String paramString2)
  {
    try
    {
      byte[] arrayOfByte2 = a(paramString1.getBytes());
      byte[] arrayOfByte3 = paramString2.getBytes();
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte2, "AES");
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(1, localSecretKeySpec, new IvParameterSpec(new byte[localCipher.getBlockSize()]));
      byte[] arrayOfByte4 = localCipher.doFinal(arrayOfByte3);
      arrayOfByte1 = arrayOfByte4;
      String str = null;
      if (arrayOfByte1 != null)
        str = b(arrayOfByte1);
      return str;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static String a(String paramString1, String paramString2, Map<String, String> paramMap, String paramString3)
  {
    int i = 1;
    if (TextUtils.isEmpty(paramString3))
      throw new InvalidParameterException("security is not nullable");
    ArrayList localArrayList = new ArrayList();
    if (paramString1 != null)
      localArrayList.add(paramString1.toUpperCase());
    if (!paramMap.isEmpty())
    {
      Iterator localIterator2 = new TreeMap(paramMap).entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator2.next();
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localEntry.getKey();
        arrayOfObject[i] = localEntry.getValue();
        localArrayList.add(String.format("%s=%s", arrayOfObject));
      }
    }
    localArrayList.add(paramString3);
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = localArrayList.iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      if (i == 0)
        localStringBuilder.append('&');
      localStringBuilder.append(str);
      i = 0;
    }
    return c(localStringBuilder.toString());
  }

  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }

  private static byte[] a(byte[] paramArrayOfByte)
  {
    KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
    SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
    localSecureRandom.setSeed(paramArrayOfByte);
    localKeyGenerator.init(128, localSecureRandom);
    return localKeyGenerator.generateKey().getEncoded();
  }

  public static int b(String paramString)
  {
    int i = 0;
    if (paramString.length() > 0)
    {
      char[] arrayOfChar = paramString.toCharArray();
      j = 0;
      while (i < arrayOfChar.length)
      {
        j = j * 31 + arrayOfChar[i];
        i++;
      }
    }
    int j = 0;
    return j;
  }

  public static String b(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
      return "";
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static String b(String paramString1, String paramString2)
  {
    try
    {
      byte[] arrayOfByte1 = a(paramString1.getBytes());
      int i = paramString2.length() / 2;
      byte[] arrayOfByte2 = new byte[i];
      for (int j = 0; j < i; j++)
        arrayOfByte2[j] = Integer.valueOf(paramString2.substring(j * 2, 2 + j * 2), 16).byteValue();
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte1, "AES");
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(2, localSecretKeySpec, new IvParameterSpec(new byte[localCipher.getBlockSize()]));
      String str = new String(localCipher.doFinal(arrayOfByte2));
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static String b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return "";
    StringBuffer localStringBuffer = new StringBuffer(2 * paramArrayOfByte.length);
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      int j = paramArrayOfByte[i];
      localStringBuffer.append("0123456789ABCDEF".charAt(0xF & j >> 4)).append("0123456789ABCDEF".charAt(j & 0xF));
    }
    return localStringBuffer.toString();
  }

  public static String c(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().widthPixels + "*" + paramContext.getResources().getDisplayMetrics().heightPixels;
  }

  public static String c(String paramString)
  {
    try
    {
      String str = String.valueOf(a.a(MessageDigest.getInstance("SHA1").digest(paramString.getBytes("UTF-8"))));
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      b.a("CloudCoder.hash4SHA1 ", localNoSuchAlgorithmException);
      throw new IllegalStateException("failed to SHA1");
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        b.a("CloudCoder.hash4SHA1 ", localUnsupportedEncodingException);
    }
    catch (Exception localException)
    {
      while (true)
        b.a("CloudCoder.hash4SHA1 ", localException);
    }
  }

  public static String d(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager == null)
        return "";
      String str = localTelephonyManager.getDeviceId();
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public static boolean d()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public static String e()
  {
    return Environment.getExternalStorageDirectory() + "/hpay100/";
  }

  public static String e(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager == null)
        return "";
      String str1 = localTelephonyManager.getSubscriberId();
      if (str1 == null)
        return "";
      String str2 = str1.trim();
      return str2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public static int f()
  {
    try
    {
      int i = Build.VERSION.SDK_INT;
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      localNumberFormatException.printStackTrace();
    }
    return 0;
  }

  public static String f(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager == null)
        return "";
      String str1 = localTelephonyManager.getSimSerialNumber();
      if (str1 == null)
        return "";
      String str2 = str1.trim();
      return str2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public static String g()
  {
    try
    {
      String str = URLEncoder.encode(Build.MODEL, "utf-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return "";
  }

  // ERROR //
  public static String g(Context paramContext)
  {
    // Byte code:
    //   0: iconst_1
    //   1: anewarray 65	java/lang/String
    //   4: dup
    //   5: iconst_0
    //   6: ldc_w 400
    //   9: aastore
    //   10: astore_1
    //   11: aload_0
    //   12: invokevirtual 404	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   15: ldc_w 406
    //   18: invokestatic 412	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   21: aload_1
    //   22: aconst_null
    //   23: aconst_null
    //   24: ldc_w 414
    //   27: invokevirtual 420	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore 8
    //   32: aload 8
    //   34: astore_3
    //   35: aload_3
    //   36: ifnull +221 -> 257
    //   39: aload_3
    //   40: invokeinterface 425 1 0
    //   45: ifeq +212 -> 257
    //   48: aload_3
    //   49: ldc_w 400
    //   52: invokeinterface 428 2 0
    //   57: istore 10
    //   59: iconst_0
    //   60: istore 11
    //   62: aload_3
    //   63: iload 10
    //   65: invokeinterface 431 2 0
    //   70: astore 6
    //   72: aload 6
    //   74: ifnull +13 -> 87
    //   77: ldc 238
    //   79: aload 6
    //   81: invokevirtual 434	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   84: ifeq +67 -> 151
    //   87: ldc 238
    //   89: astore 6
    //   91: iinc 11 1
    //   94: aload_3
    //   95: invokeinterface 437 1 0
    //   100: istore 12
    //   102: iload 12
    //   104: ifeq +10 -> 114
    //   107: iload 11
    //   109: bipush 50
    //   111: if_icmplt -49 -> 62
    //   114: aload_3
    //   115: ifnull +9 -> 124
    //   118: aload_3
    //   119: invokeinterface 440 1 0
    //   124: ldc_w 442
    //   127: new 177	java/lang/StringBuilder
    //   130: dup
    //   131: ldc_w 444
    //   134: invokespecial 287	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: aload 6
    //   139: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokestatic 449	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: aload 6
    //   150: areturn
    //   151: aload 6
    //   153: ldc_w 451
    //   156: invokevirtual 454	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   159: ifeq -45 -> 114
    //   162: aload 6
    //   164: iconst_3
    //   165: invokevirtual 456	java/lang/String:substring	(I)Ljava/lang/String;
    //   168: astore 13
    //   170: aload 13
    //   172: astore 6
    //   174: goto -60 -> 114
    //   177: astore 5
    //   179: aconst_null
    //   180: astore_3
    //   181: aload 5
    //   183: invokevirtual 62	java/lang/Exception:printStackTrace	()V
    //   186: ldc 238
    //   188: astore 6
    //   190: aload_3
    //   191: ifnull -67 -> 124
    //   194: aload_3
    //   195: invokeinterface 440 1 0
    //   200: goto -76 -> 124
    //   203: astore 7
    //   205: aload 7
    //   207: invokevirtual 62	java/lang/Exception:printStackTrace	()V
    //   210: goto -86 -> 124
    //   213: astore_2
    //   214: aconst_null
    //   215: astore_3
    //   216: aload_3
    //   217: ifnull +9 -> 226
    //   220: aload_3
    //   221: invokeinterface 440 1 0
    //   226: aload_2
    //   227: athrow
    //   228: astore 4
    //   230: aload 4
    //   232: invokevirtual 62	java/lang/Exception:printStackTrace	()V
    //   235: goto -9 -> 226
    //   238: astore 9
    //   240: aload 9
    //   242: invokevirtual 62	java/lang/Exception:printStackTrace	()V
    //   245: goto -121 -> 124
    //   248: astore_2
    //   249: goto -33 -> 216
    //   252: astore 5
    //   254: goto -73 -> 181
    //   257: ldc 238
    //   259: astore 6
    //   261: goto -147 -> 114
    //
    // Exception table:
    //   from	to	target	type
    //   0	32	177	java/lang/Exception
    //   194	200	203	java/lang/Exception
    //   0	32	213	finally
    //   220	226	228	java/lang/Exception
    //   118	124	238	java/lang/Exception
    //   39	59	248	finally
    //   62	72	248	finally
    //   77	87	248	finally
    //   94	102	248	finally
    //   151	170	248	finally
    //   181	186	248	finally
    //   39	59	252	java/lang/Exception
    //   62	72	252	java/lang/Exception
    //   77	87	252	java/lang/Exception
    //   94	102	252	java/lang/Exception
    //   151	170	252	java/lang/Exception
  }

  public static String h()
  {
    try
    {
      String str = URLEncoder.encode(Build.VERSION.RELEASE, "utf-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return "";
  }

  public static String h(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      String str;
      if (localTelephonyManager == null)
        str = "";
      do
      {
        return str;
        str = localTelephonyManager.getLine1Number();
        if (str != null)
          continue;
        str = "";
      }
      while ((TextUtils.isEmpty(str)) || (!str.startsWith("0000")));
      return "";
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public static String i()
  {
    try
    {
      String str = URLEncoder.encode(Build.BRAND, "utf-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return "";
  }

  public static String j()
  {
    while (true)
    {
      try
      {
        localObject = Build.MANUFACTURER;
        if ((localObject != null) && (!((String)localObject).equalsIgnoreCase("unknown")))
        {
          if (TextUtils.isEmpty((CharSequence)localObject))
            continue;
          String str = URLEncoder.encode((String)localObject, "utf-8");
          localObject = str;
          return localObject;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return "";
      }
      Object localObject = "";
    }
  }

  public final Context a()
  {
    return this.a.a;
  }

  public final k a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.g = this.a.a.getText(2131034424);
    this.a.h = paramOnClickListener;
    return this;
  }

  public final k a(DialogInterface.OnKeyListener paramOnKeyListener)
  {
    this.a.l = paramOnKeyListener;
    return this;
  }

  public final k a(Drawable paramDrawable)
  {
    this.a.c = paramDrawable;
    return this;
  }

  public final k a(View paramView)
  {
    this.a.e = paramView;
    return this;
  }

  public final k a(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.n = paramListAdapter;
    this.a.o = paramOnClickListener;
    return this;
  }

  public final k a(CharSequence paramCharSequence)
  {
    this.a.d = paramCharSequence;
    return this;
  }

  public final k a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.g = paramCharSequence;
    this.a.h = null;
    return this;
  }

  public final k a(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.m = paramArrayOfCharSequence;
    this.a.o = paramOnClickListener;
    this.a.q = paramInt;
    this.a.p = true;
    return this;
  }

  public final j b()
  {
    j localj = new j(this.a.a, this.b);
    this.a.a(j.a(localj));
    localj.setCancelable(this.a.k);
    if (this.a.k)
      localj.setCanceledOnTouchOutside(true);
    localj.setOnCancelListener(null);
    localj.setOnDismissListener(null);
    if (this.a.l != null)
      localj.setOnKeyListener(this.a.l);
    return localj;
  }

  public final k b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.i = this.a.a.getText(2131034129);
    this.a.j = null;
    return this;
  }

  public final k b(CharSequence paramCharSequence)
  {
    this.a.f = paramCharSequence;
    return this;
  }

  public final k b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.i = paramCharSequence;
    this.a.j = null;
    return this;
  }

  public final j c()
  {
    j localj = b();
    localj.show();
    return localj;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.k
 * JD-Core Version:    0.6.0
 */