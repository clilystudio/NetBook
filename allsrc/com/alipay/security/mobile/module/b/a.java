package com.alipay.security.mobile.module.b;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.support.design.widget.am;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class a
{
  private static a a = new a();

  public static a a()
  {
    return a;
  }

  public static String a(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    while (true)
    {
      try
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if (localTelephonyManager != null)
        {
          String str1 = localTelephonyManager.getDeviceId();
          str2 = str1;
          localObject = str2;
          return localObject;
        }
      }
      catch (Exception localException)
      {
        return null;
      }
      String str2 = null;
    }
  }

  // ERROR //
  private String a(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 39	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: invokestatic 43	com/alipay/security/mobile/module/b/a:o	(Landroid/content/Context;)F
    //   7: fstore_3
    //   8: aconst_null
    //   9: astore 4
    //   11: iload_2
    //   12: invokestatic 49	android/hardware/Camera:open	(I)Landroid/hardware/Camera;
    //   15: astore 10
    //   17: aload 10
    //   19: astore 6
    //   21: aload 6
    //   23: invokevirtual 53	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   26: invokevirtual 59	android/hardware/Camera$Parameters:getSupportedPreviewSizes	()Ljava/util/List;
    //   29: astore 13
    //   31: aload 13
    //   33: new 61	com/alipay/security/mobile/module/b/b
    //   36: dup
    //   37: aload_0
    //   38: iconst_0
    //   39: invokespecial 64	com/alipay/security/mobile/module/b/b:<init>	(Lcom/alipay/security/mobile/module/b/a;B)V
    //   42: invokestatic 70	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   45: iconst_0
    //   46: istore 14
    //   48: aload 13
    //   50: invokeinterface 76 1 0
    //   55: astore 15
    //   57: aload 15
    //   59: invokeinterface 82 1 0
    //   64: ifeq +58 -> 122
    //   67: aload 15
    //   69: invokeinterface 86 1 0
    //   74: checkcast 88	android/hardware/Camera$Size
    //   77: astore 22
    //   79: aload 22
    //   81: getfield 92	android/hardware/Camera$Size:width	I
    //   84: sipush 600
    //   87: if_icmplt +244 -> 331
    //   90: aload 22
    //   92: getfield 92	android/hardware/Camera$Size:width	I
    //   95: i2f
    //   96: aload 22
    //   98: getfield 95	android/hardware/Camera$Size:height	I
    //   101: i2f
    //   102: fdiv
    //   103: fload_3
    //   104: fsub
    //   105: invokestatic 101	java/lang/Math:abs	(F)F
    //   108: f2d
    //   109: ldc2_w 102
    //   112: dcmpg
    //   113: ifgt +224 -> 337
    //   116: iconst_1
    //   117: istore 23
    //   119: goto +207 -> 326
    //   122: iload 14
    //   124: aload 13
    //   126: invokeinterface 107 1 0
    //   131: if_icmpne +188 -> 319
    //   134: iconst_m1
    //   135: aload 13
    //   137: invokeinterface 107 1 0
    //   142: iadd
    //   143: istore 16
    //   145: aload 13
    //   147: iload 16
    //   149: invokeinterface 111 2 0
    //   154: checkcast 88	android/hardware/Camera$Size
    //   157: astore 17
    //   159: aload 17
    //   161: ifnull +151 -> 312
    //   164: getstatic 117	java/util/Locale:ENGLISH	Ljava/util/Locale;
    //   167: astore 18
    //   169: iconst_3
    //   170: anewarray 4	java/lang/Object
    //   173: astore 19
    //   175: aload 19
    //   177: iconst_0
    //   178: iload_2
    //   179: invokestatic 123	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   182: aastore
    //   183: aload 19
    //   185: iconst_1
    //   186: aload 17
    //   188: getfield 92	android/hardware/Camera$Size:width	I
    //   191: invokestatic 123	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   194: aastore
    //   195: aload 19
    //   197: iconst_2
    //   198: aload 17
    //   200: getfield 95	android/hardware/Camera$Size:height	I
    //   203: invokestatic 123	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   206: aastore
    //   207: aload 18
    //   209: ldc 125
    //   211: aload 19
    //   213: invokestatic 131	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   216: astore 20
    //   218: aload 20
    //   220: astore 21
    //   222: aload 6
    //   224: ifnull +8 -> 232
    //   227: aload 6
    //   229: invokevirtual 134	android/hardware/Camera:release	()V
    //   232: aload 21
    //   234: areturn
    //   235: astore 9
    //   237: aload 4
    //   239: ifnull +70 -> 309
    //   242: aload 4
    //   244: invokevirtual 134	android/hardware/Camera:release	()V
    //   247: ldc 136
    //   249: areturn
    //   250: astore 8
    //   252: aconst_null
    //   253: astore 6
    //   255: aload 6
    //   257: ifnull +52 -> 309
    //   260: aload 6
    //   262: invokevirtual 134	android/hardware/Camera:release	()V
    //   265: ldc 136
    //   267: areturn
    //   268: astore 5
    //   270: aconst_null
    //   271: astore 6
    //   273: aload 5
    //   275: astore 7
    //   277: aload 6
    //   279: ifnull +8 -> 287
    //   282: aload 6
    //   284: invokevirtual 134	android/hardware/Camera:release	()V
    //   287: aload 7
    //   289: athrow
    //   290: astore 7
    //   292: goto -15 -> 277
    //   295: astore 12
    //   297: goto -42 -> 255
    //   300: astore 11
    //   302: aload 6
    //   304: astore 4
    //   306: goto -69 -> 237
    //   309: ldc 136
    //   311: areturn
    //   312: ldc 136
    //   314: astore 21
    //   316: goto -94 -> 222
    //   319: iload 14
    //   321: istore 16
    //   323: goto -178 -> 145
    //   326: iload 23
    //   328: ifne -206 -> 122
    //   331: iinc 14 1
    //   334: goto -277 -> 57
    //   337: iconst_0
    //   338: istore 23
    //   340: goto -14 -> 326
    //
    // Exception table:
    //   from	to	target	type
    //   11	17	235	java/lang/RuntimeException
    //   11	17	250	java/lang/Exception
    //   11	17	268	finally
    //   21	45	290	finally
    //   48	57	290	finally
    //   57	116	290	finally
    //   122	145	290	finally
    //   145	159	290	finally
    //   164	218	290	finally
    //   21	45	295	java/lang/Exception
    //   48	57	295	java/lang/Exception
    //   57	116	295	java/lang/Exception
    //   122	145	295	java/lang/Exception
    //   145	159	295	java/lang/Exception
    //   164	218	295	java/lang/Exception
    //   21	45	300	java/lang/RuntimeException
    //   48	57	300	java/lang/RuntimeException
    //   57	116	300	java/lang/RuntimeException
    //   122	145	300	java/lang/RuntimeException
    //   145	159	300	java/lang/RuntimeException
    //   164	218	300	java/lang/RuntimeException
  }

  // ERROR //
  public static String b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: ldc 141
    //   4: astore_1
    //   5: new 143	java/io/InputStreamReader
    //   8: dup
    //   9: invokestatic 149	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   12: ldc 151
    //   14: invokevirtual 155	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   17: invokevirtual 161	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   20: invokespecial 164	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   23: astore_2
    //   24: new 166	java/io/LineNumberReader
    //   27: dup
    //   28: aload_2
    //   29: invokespecial 169	java/io/LineNumberReader:<init>	(Ljava/io/Reader;)V
    //   32: astore_3
    //   33: iconst_1
    //   34: istore 4
    //   36: iload 4
    //   38: bipush 100
    //   40: if_icmpge +51 -> 91
    //   43: aload_3
    //   44: invokevirtual 172	java/io/LineNumberReader:readLine	()Ljava/lang/String;
    //   47: astore 13
    //   49: aload 13
    //   51: ifnull +40 -> 91
    //   54: aload 13
    //   56: ldc 174
    //   58: invokevirtual 178	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   61: iflt +40 -> 101
    //   64: aload 13
    //   66: iconst_1
    //   67: aload 13
    //   69: ldc 180
    //   71: invokevirtual 178	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   74: iadd
    //   75: aload 13
    //   77: invokevirtual 183	java/lang/String:length	()I
    //   80: invokevirtual 187	java/lang/String:substring	(II)Ljava/lang/String;
    //   83: invokevirtual 190	java/lang/String:trim	()Ljava/lang/String;
    //   86: astore 14
    //   88: aload 14
    //   90: astore_1
    //   91: aload_3
    //   92: invokevirtual 193	java/io/LineNumberReader:close	()V
    //   95: aload_2
    //   96: invokevirtual 194	java/io/InputStreamReader:close	()V
    //   99: aload_1
    //   100: areturn
    //   101: iinc 4 1
    //   104: goto -68 -> 36
    //   107: astore 16
    //   109: aconst_null
    //   110: astore_3
    //   111: aload_3
    //   112: ifnull +7 -> 119
    //   115: aload_3
    //   116: invokevirtual 193	java/io/LineNumberReader:close	()V
    //   119: aload_0
    //   120: ifnull -21 -> 99
    //   123: aload_0
    //   124: invokevirtual 194	java/io/InputStreamReader:close	()V
    //   127: aload_1
    //   128: areturn
    //   129: astore 8
    //   131: aload_1
    //   132: areturn
    //   133: astore 10
    //   135: aconst_null
    //   136: astore_3
    //   137: aconst_null
    //   138: astore_2
    //   139: aload_3
    //   140: ifnull +7 -> 147
    //   143: aload_3
    //   144: invokevirtual 193	java/io/LineNumberReader:close	()V
    //   147: aload_2
    //   148: ifnull +7 -> 155
    //   151: aload_2
    //   152: invokevirtual 194	java/io/InputStreamReader:close	()V
    //   155: aload 10
    //   157: athrow
    //   158: astore 5
    //   160: goto -65 -> 95
    //   163: astore 6
    //   165: aload_1
    //   166: areturn
    //   167: astore 9
    //   169: goto -50 -> 119
    //   172: astore 12
    //   174: goto -27 -> 147
    //   177: astore 11
    //   179: goto -24 -> 155
    //   182: astore 10
    //   184: aconst_null
    //   185: astore_3
    //   186: goto -47 -> 139
    //   189: astore 10
    //   191: goto -52 -> 139
    //   194: astore 15
    //   196: aload_2
    //   197: astore_0
    //   198: aconst_null
    //   199: astore_3
    //   200: goto -89 -> 111
    //   203: astore 7
    //   205: aload_2
    //   206: astore_0
    //   207: goto -96 -> 111
    //
    // Exception table:
    //   from	to	target	type
    //   5	24	107	java/lang/Exception
    //   123	127	129	java/io/IOException
    //   5	24	133	finally
    //   91	95	158	java/io/IOException
    //   95	99	163	java/io/IOException
    //   115	119	167	java/io/IOException
    //   143	147	172	java/io/IOException
    //   151	155	177	java/io/IOException
    //   24	33	182	finally
    //   43	49	189	finally
    //   54	88	189	finally
    //   24	33	194	java/lang/Exception
    //   43	49	203	java/lang/Exception
    //   54	88	203	java/lang/Exception
  }

  public static String b(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    while (true)
    {
      try
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if (localTelephonyManager != null)
        {
          String str1 = localTelephonyManager.getSubscriberId();
          str2 = str1;
          localObject = str2;
          return localObject;
        }
      }
      catch (Exception localException)
      {
        return null;
      }
      String str2 = null;
    }
  }

  public static String c(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    while (true)
    {
      try
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if (localTelephonyManager != null)
        {
          String str1 = localTelephonyManager.getLine1Number();
          str2 = str1;
          localObject = str2;
          return localObject;
        }
      }
      catch (Exception localException)
      {
        return null;
      }
      String str2 = null;
    }
  }

  public static String d()
  {
    String str = j();
    if (!am.a(str))
      return str;
    return k();
  }

  public static String d(Context paramContext)
  {
    if (paramContext != null)
      try
      {
        SensorManager localSensorManager = (SensorManager)paramContext.getSystemService("sensor");
        String str1;
        if (localSensorManager != null)
        {
          List localList = localSensorManager.getSensorList(-1);
          if ((localList != null) && (localList.size() > 0))
          {
            StringBuilder localStringBuilder = new StringBuilder();
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext())
            {
              Sensor localSensor = (Sensor)localIterator.next();
              localStringBuilder.append(localSensor.getName());
              localStringBuilder.append(localSensor.getVersion());
              localStringBuilder.append(localSensor.getVendor());
            }
            str1 = am.b(localStringBuilder.toString());
          }
        }
        for (String str2 = str1; ; str2 = null)
          return str2;
      }
      catch (Exception localException)
      {
      }
    return null;
  }

  // ERROR //
  public static String e()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: lconst_0
    //   3: lstore_1
    //   4: new 251	java/io/FileReader
    //   7: dup
    //   8: ldc 253
    //   10: invokespecial 256	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   13: astore_3
    //   14: new 258	java/io/BufferedReader
    //   17: dup
    //   18: aload_3
    //   19: sipush 8192
    //   22: invokespecial 261	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   25: astore 4
    //   27: aload 4
    //   29: invokevirtual 262	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   32: astore 11
    //   34: aload 11
    //   36: ifnull +22 -> 58
    //   39: aload 11
    //   41: ldc_w 264
    //   44: invokevirtual 268	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   47: iconst_1
    //   48: aaload
    //   49: invokestatic 271	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   52: istore 12
    //   54: iload 12
    //   56: i2l
    //   57: lstore_1
    //   58: aload_3
    //   59: invokevirtual 272	java/io/FileReader:close	()V
    //   62: aload 4
    //   64: invokevirtual 273	java/io/BufferedReader:close	()V
    //   67: lload_1
    //   68: invokestatic 276	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   71: areturn
    //   72: astore 16
    //   74: aconst_null
    //   75: astore_3
    //   76: aload_3
    //   77: ifnull +7 -> 84
    //   80: aload_3
    //   81: invokevirtual 272	java/io/FileReader:close	()V
    //   84: aload_0
    //   85: ifnull -18 -> 67
    //   88: aload_0
    //   89: invokevirtual 273	java/io/BufferedReader:close	()V
    //   92: goto -25 -> 67
    //   95: astore 6
    //   97: goto -30 -> 67
    //   100: astore 8
    //   102: aconst_null
    //   103: astore_3
    //   104: aconst_null
    //   105: astore 4
    //   107: aload_3
    //   108: ifnull +7 -> 115
    //   111: aload_3
    //   112: invokevirtual 272	java/io/FileReader:close	()V
    //   115: aload 4
    //   117: ifnull +8 -> 125
    //   120: aload 4
    //   122: invokevirtual 273	java/io/BufferedReader:close	()V
    //   125: aload 8
    //   127: athrow
    //   128: astore 13
    //   130: goto -68 -> 62
    //   133: astore 14
    //   135: goto -68 -> 67
    //   138: astore 7
    //   140: goto -56 -> 84
    //   143: astore 10
    //   145: goto -30 -> 115
    //   148: astore 9
    //   150: goto -25 -> 125
    //   153: astore 8
    //   155: aconst_null
    //   156: astore 4
    //   158: goto -51 -> 107
    //   161: astore 8
    //   163: goto -56 -> 107
    //   166: astore 15
    //   168: aconst_null
    //   169: astore_0
    //   170: goto -94 -> 76
    //   173: astore 5
    //   175: aload 4
    //   177: astore_0
    //   178: goto -102 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   4	14	72	java/io/IOException
    //   88	92	95	java/io/IOException
    //   4	14	100	finally
    //   58	62	128	java/io/IOException
    //   62	67	133	java/io/IOException
    //   80	84	138	java/io/IOException
    //   111	115	143	java/io/IOException
    //   120	125	148	java/io/IOException
    //   14	27	153	finally
    //   27	34	161	finally
    //   39	54	161	finally
    //   14	27	166	java/io/IOException
    //   27	34	173	java/io/IOException
    //   39	54	173	java/io/IOException
  }

  public static String e(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      String str = Integer.toString(localDisplayMetrics.widthPixels) + "*" + Integer.toString(localDisplayMetrics.heightPixels);
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String f()
  {
    long l1 = 0L;
    try
    {
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      long l2 = localStatFs.getBlockSize();
      int i = localStatFs.getBlockCount();
      l1 = l2 * i;
      label36: return String.valueOf(l1);
    }
    catch (Exception localException)
    {
      break label36;
    }
  }

  public static String f(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      String str = localDisplayMetrics.widthPixels;
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String g()
  {
    long l1 = 0L;
    try
    {
      if ("mounted".equals(Environment.getExternalStorageState()))
      {
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l2 = localStatFs.getBlockSize();
        int i = localStatFs.getBlockCount();
        l1 = l2 * i;
      }
      label48: return String.valueOf(l1);
    }
    catch (Exception localException)
    {
      break label48;
    }
  }

  public static String g(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      String str = localDisplayMetrics.heightPixels;
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String h()
  {
    try
    {
      BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if ((localBluetoothAdapter != null) && (!localBluetoothAdapter.isEnabled()))
        return "";
      String str = localBluetoothAdapter.getAddress();
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String h(Context paramContext)
  {
    try
    {
      String str = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String i()
  {
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      Object localObject = localClass.newInstance();
      String str = (String)localClass.getMethod("get", new Class[] { String.class, String.class }).invoke(localObject, new Object[] { "gsm.version.baseband", "no message" });
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String i(Context paramContext)
  {
    try
    {
      String str = ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  // ERROR //
  private static String j()
  {
    // Byte code:
    //   0: new 251	java/io/FileReader
    //   3: dup
    //   4: ldc_w 391
    //   7: invokespecial 256	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   10: astore_0
    //   11: new 258	java/io/BufferedReader
    //   14: dup
    //   15: aload_0
    //   16: sipush 8192
    //   19: invokespecial 261	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   22: astore_1
    //   23: aload_1
    //   24: invokevirtual 262	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   27: astore 8
    //   29: aload 8
    //   31: invokestatic 210	android/support/design/widget/am:a	(Ljava/lang/String;)Z
    //   34: ifne +21 -> 55
    //   37: aload 8
    //   39: invokevirtual 190	java/lang/String:trim	()Ljava/lang/String;
    //   42: astore 11
    //   44: aload_1
    //   45: invokevirtual 273	java/io/BufferedReader:close	()V
    //   48: aload_0
    //   49: invokevirtual 272	java/io/FileReader:close	()V
    //   52: aload 11
    //   54: areturn
    //   55: aload_1
    //   56: invokevirtual 273	java/io/BufferedReader:close	()V
    //   59: aload_0
    //   60: invokevirtual 272	java/io/FileReader:close	()V
    //   63: aconst_null
    //   64: areturn
    //   65: astore 10
    //   67: aconst_null
    //   68: areturn
    //   69: astore 17
    //   71: aconst_null
    //   72: astore_1
    //   73: aconst_null
    //   74: astore_0
    //   75: aload_1
    //   76: invokevirtual 273	java/io/BufferedReader:close	()V
    //   79: aload_0
    //   80: invokevirtual 272	java/io/FileReader:close	()V
    //   83: aconst_null
    //   84: areturn
    //   85: astore 4
    //   87: aconst_null
    //   88: areturn
    //   89: astore 16
    //   91: aconst_null
    //   92: astore_0
    //   93: aload 16
    //   95: astore 5
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: invokevirtual 273	java/io/BufferedReader:close	()V
    //   103: aload_0
    //   104: invokevirtual 272	java/io/FileReader:close	()V
    //   107: aload 5
    //   109: athrow
    //   110: astore 12
    //   112: goto -64 -> 48
    //   115: astore 13
    //   117: aload 11
    //   119: areturn
    //   120: astore 9
    //   122: goto -63 -> 59
    //   125: astore_3
    //   126: goto -47 -> 79
    //   129: astore 6
    //   131: goto -28 -> 103
    //   134: astore 7
    //   136: goto -29 -> 107
    //   139: astore 15
    //   141: aload 15
    //   143: astore 5
    //   145: aconst_null
    //   146: astore_1
    //   147: goto -48 -> 99
    //   150: astore 5
    //   152: goto -53 -> 99
    //   155: astore 14
    //   157: aconst_null
    //   158: astore_1
    //   159: goto -84 -> 75
    //   162: astore_2
    //   163: goto -88 -> 75
    //
    // Exception table:
    //   from	to	target	type
    //   59	63	65	java/io/IOException
    //   0	11	69	java/io/IOException
    //   79	83	85	java/io/IOException
    //   0	11	89	finally
    //   44	48	110	java/io/IOException
    //   48	52	115	java/io/IOException
    //   55	59	120	java/io/IOException
    //   75	79	125	java/io/IOException
    //   99	103	129	java/io/IOException
    //   103	107	134	java/io/IOException
    //   11	23	139	finally
    //   23	44	150	finally
    //   11	23	155	java/io/IOException
    //   23	44	162	java/io/IOException
  }

  public static String j(Context paramContext)
  {
    try
    {
      String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  // ERROR //
  private static String k()
  {
    // Byte code:
    //   0: new 251	java/io/FileReader
    //   3: dup
    //   4: ldc_w 405
    //   7: invokespecial 256	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   10: astore_0
    //   11: new 258	java/io/BufferedReader
    //   14: dup
    //   15: aload_0
    //   16: sipush 8192
    //   19: invokespecial 261	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   22: astore_1
    //   23: aload_1
    //   24: invokevirtual 262	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   27: astore 9
    //   29: aconst_null
    //   30: astore_3
    //   31: aload 9
    //   33: ifnull +57 -> 90
    //   36: aload 9
    //   38: invokestatic 210	android/support/design/widget/am:a	(Ljava/lang/String;)Z
    //   41: ifne -18 -> 23
    //   44: aload 9
    //   46: ldc 180
    //   48: invokevirtual 268	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   51: astore 10
    //   53: aload 10
    //   55: ifnull -32 -> 23
    //   58: aload 10
    //   60: arraylength
    //   61: iconst_1
    //   62: if_icmple -39 -> 23
    //   65: aload 10
    //   67: iconst_0
    //   68: aaload
    //   69: ldc_w 407
    //   72: invokevirtual 411	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   75: ifeq -52 -> 23
    //   78: aload 10
    //   80: iconst_1
    //   81: aaload
    //   82: invokevirtual 190	java/lang/String:trim	()Ljava/lang/String;
    //   85: astore 11
    //   87: aload 11
    //   89: astore_3
    //   90: aload_0
    //   91: invokevirtual 272	java/io/FileReader:close	()V
    //   94: aload_1
    //   95: invokevirtual 273	java/io/BufferedReader:close	()V
    //   98: aload_3
    //   99: areturn
    //   100: astore 17
    //   102: aconst_null
    //   103: astore_1
    //   104: aconst_null
    //   105: astore_0
    //   106: aload_0
    //   107: ifnull +7 -> 114
    //   110: aload_0
    //   111: invokevirtual 272	java/io/FileReader:close	()V
    //   114: aconst_null
    //   115: astore_3
    //   116: aload_1
    //   117: ifnull -19 -> 98
    //   120: aload_1
    //   121: invokevirtual 273	java/io/BufferedReader:close	()V
    //   124: aconst_null
    //   125: areturn
    //   126: astore 4
    //   128: aconst_null
    //   129: areturn
    //   130: astore 16
    //   132: aconst_null
    //   133: astore_0
    //   134: aload 16
    //   136: astore 6
    //   138: aconst_null
    //   139: astore_1
    //   140: aload_0
    //   141: ifnull +7 -> 148
    //   144: aload_0
    //   145: invokevirtual 272	java/io/FileReader:close	()V
    //   148: aload_1
    //   149: ifnull +7 -> 156
    //   152: aload_1
    //   153: invokevirtual 273	java/io/BufferedReader:close	()V
    //   156: aload 6
    //   158: athrow
    //   159: astore 12
    //   161: goto -67 -> 94
    //   164: astore 13
    //   166: aload_3
    //   167: areturn
    //   168: astore 5
    //   170: goto -56 -> 114
    //   173: astore 8
    //   175: goto -27 -> 148
    //   178: astore 7
    //   180: goto -24 -> 156
    //   183: astore 15
    //   185: aload 15
    //   187: astore 6
    //   189: aconst_null
    //   190: astore_1
    //   191: goto -51 -> 140
    //   194: astore 6
    //   196: goto -56 -> 140
    //   199: astore 14
    //   201: aconst_null
    //   202: astore_1
    //   203: goto -97 -> 106
    //   206: astore_2
    //   207: goto -101 -> 106
    //
    // Exception table:
    //   from	to	target	type
    //   0	11	100	java/io/IOException
    //   120	124	126	java/io/IOException
    //   0	11	130	finally
    //   90	94	159	java/io/IOException
    //   94	98	164	java/io/IOException
    //   110	114	168	java/io/IOException
    //   144	148	173	java/io/IOException
    //   152	156	178	java/io/IOException
    //   11	23	183	finally
    //   23	29	194	finally
    //   36	53	194	finally
    //   58	87	194	finally
    //   11	23	199	java/io/IOException
    //   23	29	206	java/io/IOException
    //   36	53	206	java/io/IOException
    //   58	87	206	java/io/IOException
  }

  public static String k(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null)
      {
        String str = String.valueOf(localTelephonyManager.getNetworkType());
        return str;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String l(Context paramContext)
  {
    try
    {
      WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      if (localWifiManager.isWifiEnabled())
      {
        String str = localWifiManager.getConnectionInfo().getBSSID();
        return str;
      }
    }
    catch (Throwable localThrowable)
    {
    }
    return "";
  }

  public static Map<String, Integer> m(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    try
    {
      List localList = paramContext.getPackageManager().getInstalledPackages(0);
      if ((localList != null) && (localList.size() > 0))
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
          localHashMap.put(localPackageInfo.packageName, Integer.valueOf(localPackageInfo.applicationInfo.uid));
        }
      }
    }
    catch (Throwable localThrowable)
    {
    }
    return localHashMap;
  }

  private static float o(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    Point localPoint = new Point(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
    return localPoint.y / localPoint.x;
  }

  public final String c()
  {
    try
    {
      String str = String.valueOf(new File("/sys/devices/system/cpu/").listFiles(new c(this)).length);
      return str;
    }
    catch (Exception localException)
    {
    }
    return "1";
  }

  public final String n(Context paramContext)
  {
    o(paramContext.getApplicationContext());
    int i = -1;
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      if (Integer.parseInt(Build.VERSION.SDK) > 8)
      {
        int k = Camera.getNumberOfCameras();
        i = k;
      }
      label38: int j = 0;
      if (j < i)
      {
        Locale localLocale2;
        Object[] arrayOfObject2;
        if (j == 0)
        {
          localLocale2 = Locale.ENGLISH;
          arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(j);
          arrayOfObject2[1] = a(paramContext, j);
        }
        Locale localLocale1;
        Object[] arrayOfObject1;
        for (String str = String.format(localLocale2, "%1$d:%2$s", arrayOfObject2); ; str = String.format(localLocale1, "#%1$d:%2$s", arrayOfObject1))
        {
          localStringBuilder.append(str);
          j++;
          break;
          localLocale1 = Locale.ENGLISH;
          arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(j);
          arrayOfObject1[1] = a(paramContext, j);
        }
      }
      return localStringBuilder.toString();
    }
    catch (Throwable localThrowable)
    {
      break label38;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.security.mobile.module.b.a
 * JD-Core Version:    0.6.0
 */