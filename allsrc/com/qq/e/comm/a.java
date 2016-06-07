package com.qq.e.comm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import com.qq.e.comm.constants.Constants.PLUGIN;
import com.qq.e.comm.constants.CustomPkgConstants;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.managers.setting.SM;
import com.qq.e.comm.managers.status.APPStatus;
import com.qq.e.comm.managers.status.DeviceStatus;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.util.FileUtil;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class a
{
  private String a;
  private com.qq.e.comm.managers.setting.a b;

  public a(String paramString, com.qq.e.comm.managers.setting.a parama)
  {
    this.a = paramString;
    this.b = parama;
  }

  public static JSONObject a(PM paramPM)
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.putOpt("sdkv", SDKStatus.getSDKVersion());
    localJSONObject.putOpt("pv", Integer.valueOf(paramPM.getPluginVersion()));
    return localJSONObject;
  }

  public static JSONObject a(SM paramSM)
  {
    JSONObject localJSONObject = new JSONObject();
    if (paramSM != null)
    {
      localJSONObject.putOpt("suid", paramSM.getSuid());
      localJSONObject.putOpt("sid", paramSM.getSid());
    }
    return localJSONObject;
  }

  public static JSONObject a(APPStatus paramAPPStatus)
  {
    JSONObject localJSONObject = new JSONObject();
    if (paramAPPStatus != null)
    {
      localJSONObject.putOpt("an", paramAPPStatus.getAPPName());
      localJSONObject.putOpt("appkey", paramAPPStatus.getAPPID());
      localJSONObject.putOpt("appv", paramAPPStatus.getAPPVersion());
    }
    return localJSONObject;
  }

  public static JSONObject a(DeviceStatus paramDeviceStatus)
  {
    JSONObject localJSONObject = new JSONObject();
    if (paramDeviceStatus != null)
    {
      localJSONObject.putOpt("so", paramDeviceStatus.getScreenOrientation());
      localJSONObject.putOpt("dn", paramDeviceStatus.getDataNet());
      localJSONObject.putOpt("lat", paramDeviceStatus.getLat());
      localJSONObject.putOpt("lng", paramDeviceStatus.getLng());
      Iterator localIterator = paramDeviceStatus.getLacAndCeilId().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localJSONObject.putOpt((String)localEntry.getKey(), localEntry.getValue());
      }
    }
    return localJSONObject;
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      if (b(paramContext))
      {
        Class[] arrayOfClass1 = new Class[1];
        arrayOfClass1[0] = Class.forName(CustomPkgConstants.getADActivityName());
        if (a(paramContext, arrayOfClass1))
        {
          Class[] arrayOfClass2 = new Class[1];
          arrayOfClass2[0] = Class.forName(CustomPkgConstants.getDownLoadServiceName());
          boolean bool = b(paramContext, arrayOfClass2);
          if (bool)
            return true;
        }
      }
      return false;
    }
    catch (Throwable localThrowable)
    {
      GDTLogger.e("Exception While check SDK Env", localThrowable);
    }
    return false;
  }

  public static boolean a(Context paramContext, File paramFile1, File paramFile2)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    while (true)
    {
      InputStream localInputStream;
      FileOutputStream localFileOutputStream;
      int n;
      int i1;
      try
      {
        if (Arrays.binarySearch(localAssetManager.list(CustomPkgConstants.getAssetPluginDir()), CustomPkgConstants.getAssetPluginName()) < 0)
          break label264;
        String str1 = CustomPkgConstants.getAssetPluginDir() + File.separator + CustomPkgConstants.getAssetPluginName();
        String str2 = Constants.PLUGIN.ASSET_PLUGIN_SIG;
        if (str2 != null)
          continue;
        str2 = "";
        StringUtil.writeTo("504#####" + str2, paramFile2);
        if (StringUtil.isEmpty(CustomPkgConstants.getAssetPluginXorKey()))
          return FileUtil.copyTo(localAssetManager.open(str1), paramFile1);
        localInputStream = localAssetManager.open(str1);
        localFileOutputStream = new FileOutputStream(paramFile1);
        byte[] arrayOfByte1 = CustomPkgConstants.getAssetPluginXorKey().getBytes();
        byte[] arrayOfByte2 = new byte[1024];
        int i = arrayOfByte1.length;
        j = 0;
        k = 0;
        int m = localInputStream.read(arrayOfByte2);
        if (m > 0)
        {
          n = 0;
          if (n >= m)
            continue;
          i1 = j + 1;
          if (j < 64)
            break label257;
          int i2 = arrayOfByte2[n];
          i3 = k + 1;
          arrayOfByte2[n] = (byte)(i2 ^ arrayOfByte1[(k % i)]);
          break label266;
          localFileOutputStream.write(arrayOfByte2, 0, m);
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.report("Exception while init default plugin manager", localThrowable);
        return false;
      }
      localInputStream.close();
      localFileOutputStream.close();
      return true;
      label257: int i3 = k;
      break label266;
      label264: return false;
      label266: n++;
      int k = i3;
      int j = i1;
    }
  }

  private static boolean a(Context paramContext, Class<?>[] paramArrayOfClass)
  {
    int i = 0;
    while (i <= 0)
      try
      {
        Intent localIntent = new Intent();
        localIntent.setClass(paramContext, paramArrayOfClass[0]);
        if (paramContext.getPackageManager().resolveActivity(localIntent, 65536) == null)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramArrayOfClass[0].getName();
          GDTLogger.e(String.format("Activity[%s] is required in AndroidManifest.xml", arrayOfObject));
          return false;
        }
        i++;
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.e("Exception while checking required activities", localThrowable);
        return false;
      }
    return true;
  }

  // ERROR //
  public static byte[] a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +8 -> 9
    //   4: aload_0
    //   5: arraylength
    //   6: ifne +5 -> 11
    //   9: aload_0
    //   10: areturn
    //   11: new 310	java/io/ByteArrayOutputStream
    //   14: dup
    //   15: invokespecial 311	java/io/ByteArrayOutputStream:<init>	()V
    //   18: astore_1
    //   19: new 313	java/util/zip/GZIPOutputStream
    //   22: dup
    //   23: aload_1
    //   24: invokespecial 316	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   27: astore_2
    //   28: aload_2
    //   29: aload_0
    //   30: invokevirtual 319	java/util/zip/GZIPOutputStream:write	([B)V
    //   33: aload_2
    //   34: invokevirtual 322	java/util/zip/GZIPOutputStream:finish	()V
    //   37: aload_1
    //   38: invokevirtual 325	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   41: astore 7
    //   43: aload_2
    //   44: invokevirtual 326	java/util/zip/GZIPOutputStream:close	()V
    //   47: aload_1
    //   48: invokevirtual 327	java/io/ByteArrayOutputStream:close	()V
    //   51: aload 7
    //   53: areturn
    //   54: astore 8
    //   56: aload 8
    //   58: invokevirtual 330	java/lang/Exception:printStackTrace	()V
    //   61: aload 7
    //   63: areturn
    //   64: astore_3
    //   65: aconst_null
    //   66: astore_2
    //   67: aload_3
    //   68: invokevirtual 330	java/lang/Exception:printStackTrace	()V
    //   71: aload_2
    //   72: ifnull +7 -> 79
    //   75: aload_2
    //   76: invokevirtual 326	java/util/zip/GZIPOutputStream:close	()V
    //   79: aload_1
    //   80: invokevirtual 327	java/io/ByteArrayOutputStream:close	()V
    //   83: aconst_null
    //   84: areturn
    //   85: astore 6
    //   87: aload 6
    //   89: invokevirtual 330	java/lang/Exception:printStackTrace	()V
    //   92: aconst_null
    //   93: areturn
    //   94: astore 9
    //   96: aconst_null
    //   97: astore_2
    //   98: aload 9
    //   100: astore 4
    //   102: aload_2
    //   103: ifnull +7 -> 110
    //   106: aload_2
    //   107: invokevirtual 326	java/util/zip/GZIPOutputStream:close	()V
    //   110: aload_1
    //   111: invokevirtual 327	java/io/ByteArrayOutputStream:close	()V
    //   114: aload 4
    //   116: athrow
    //   117: astore 5
    //   119: aload 5
    //   121: invokevirtual 330	java/lang/Exception:printStackTrace	()V
    //   124: goto -10 -> 114
    //   127: astore 4
    //   129: goto -27 -> 102
    //   132: astore_3
    //   133: goto -66 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   43	51	54	java/lang/Exception
    //   19	28	64	java/lang/Exception
    //   75	79	85	java/lang/Exception
    //   79	83	85	java/lang/Exception
    //   19	28	94	finally
    //   106	110	117	java/lang/Exception
    //   110	114	117	java/lang/Exception
    //   28	43	127	finally
    //   67	71	127	finally
    //   28	43	132	java/lang/Exception
  }

  private static boolean b(Context paramContext)
  {
    String[] arrayOfString = { "android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.ACCESS_WIFI_STATE", "android.permission.READ_PHONE_STATE", "android.permission.WRITE_EXTERNAL_STORAGE" };
    int i = 0;
    while (i < 5)
      try
      {
        String str = arrayOfString[i];
        if (paramContext.checkCallingOrSelfPermission(str) == -1)
        {
          GDTLogger.e(String.format("Permission %s is required in AndroidManifest.xml", new Object[] { str }));
          return false;
        }
        i++;
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.e("Check required Permissions error", localThrowable);
        return false;
      }
    return true;
  }

  private static boolean b(Context paramContext, Class<?>[] paramArrayOfClass)
  {
    int i = 0;
    while (i <= 0)
      try
      {
        Class<?> localClass = paramArrayOfClass[0];
        Intent localIntent = new Intent();
        localIntent.setClass(paramContext, localClass);
        if (paramContext.getPackageManager().resolveService(localIntent, 65536) == null)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localClass.getName();
          GDTLogger.e(String.format("Service[%s] is required in AndroidManifest.xml", arrayOfObject));
          return false;
        }
        i++;
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.e("Exception while checking required services", localThrowable);
        return false;
      }
    return true;
  }

  // ERROR //
  public static byte[] b(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +8 -> 9
    //   4: aload_0
    //   5: arraylength
    //   6: ifne +5 -> 11
    //   9: aload_0
    //   10: areturn
    //   11: new 357	java/io/ByteArrayInputStream
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 359	java/io/ByteArrayInputStream:<init>	([B)V
    //   19: astore_1
    //   20: new 310	java/io/ByteArrayOutputStream
    //   23: dup
    //   24: invokespecial 311	java/io/ByteArrayOutputStream:<init>	()V
    //   27: astore_2
    //   28: sipush 1024
    //   31: newarray byte
    //   33: astore_3
    //   34: new 361	java/util/zip/GZIPInputStream
    //   37: dup
    //   38: aload_1
    //   39: invokespecial 364	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore 4
    //   44: aload 4
    //   46: aload_3
    //   47: invokevirtual 365	java/util/zip/GZIPInputStream:read	([B)I
    //   50: istore 9
    //   52: iload 9
    //   54: iconst_m1
    //   55: if_icmpeq +50 -> 105
    //   58: aload_2
    //   59: aload_3
    //   60: iconst_0
    //   61: iload 9
    //   63: invokevirtual 366	java/io/ByteArrayOutputStream:write	([BII)V
    //   66: goto -22 -> 44
    //   69: astore 7
    //   71: aload 7
    //   73: invokevirtual 330	java/lang/Exception:printStackTrace	()V
    //   76: aload 4
    //   78: ifnull +8 -> 86
    //   81: aload 4
    //   83: invokevirtual 367	java/util/zip/GZIPInputStream:close	()V
    //   86: aload_1
    //   87: invokevirtual 368	java/io/ByteArrayInputStream:close	()V
    //   90: aload_2
    //   91: invokevirtual 327	java/io/ByteArrayOutputStream:close	()V
    //   94: aconst_null
    //   95: areturn
    //   96: astore 8
    //   98: aload 8
    //   100: invokevirtual 330	java/lang/Exception:printStackTrace	()V
    //   103: aconst_null
    //   104: areturn
    //   105: aload_2
    //   106: invokevirtual 371	java/io/ByteArrayOutputStream:flush	()V
    //   109: aload_2
    //   110: invokevirtual 325	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   113: astore 10
    //   115: aload 4
    //   117: invokevirtual 367	java/util/zip/GZIPInputStream:close	()V
    //   120: aload_1
    //   121: invokevirtual 368	java/io/ByteArrayInputStream:close	()V
    //   124: aload_2
    //   125: invokevirtual 327	java/io/ByteArrayOutputStream:close	()V
    //   128: aload 10
    //   130: areturn
    //   131: astore 11
    //   133: aload 11
    //   135: invokevirtual 330	java/lang/Exception:printStackTrace	()V
    //   138: aload 10
    //   140: areturn
    //   141: astore 12
    //   143: aconst_null
    //   144: astore 4
    //   146: aload 12
    //   148: astore 5
    //   150: aload 4
    //   152: ifnull +8 -> 160
    //   155: aload 4
    //   157: invokevirtual 367	java/util/zip/GZIPInputStream:close	()V
    //   160: aload_1
    //   161: invokevirtual 368	java/io/ByteArrayInputStream:close	()V
    //   164: aload_2
    //   165: invokevirtual 327	java/io/ByteArrayOutputStream:close	()V
    //   168: aload 5
    //   170: athrow
    //   171: astore 6
    //   173: aload 6
    //   175: invokevirtual 330	java/lang/Exception:printStackTrace	()V
    //   178: goto -10 -> 168
    //   181: astore 5
    //   183: goto -33 -> 150
    //   186: astore 7
    //   188: aconst_null
    //   189: astore 4
    //   191: goto -120 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   44	52	69	java/lang/Exception
    //   58	66	69	java/lang/Exception
    //   105	115	69	java/lang/Exception
    //   81	86	96	java/lang/Exception
    //   86	94	96	java/lang/Exception
    //   115	128	131	java/lang/Exception
    //   34	44	141	finally
    //   155	160	171	java/lang/Exception
    //   160	168	171	java/lang/Exception
    //   44	52	181	finally
    //   58	66	181	finally
    //   71	76	181	finally
    //   105	115	181	finally
    //   34	44	186	java/lang/Exception
  }

  public String a()
  {
    return this.a;
  }

  public com.qq.e.comm.managers.setting.a b()
  {
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.a
 * JD-Core Version:    0.6.0
 */