package m.framework.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Locale;

public class Utils
{
  private static float density;

  public static int dipToPx(Context paramContext, int paramInt)
  {
    if (density <= 0.0F)
      density = paramContext.getResources().getDisplayMetrics().density;
    return (int)(0.5F + paramInt * density);
  }

  public static Bitmap getBitmap(File paramFile, int paramInt)
  {
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    Bitmap localBitmap = getBitmap(localFileInputStream, paramInt);
    localFileInputStream.close();
    return localBitmap;
  }

  public static Bitmap getBitmap(InputStream paramInputStream)
  {
    return getBitmap(paramInputStream, 1);
  }

  private static Bitmap getBitmap(InputStream paramInputStream, int paramInt)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
    localOptions.inPurgeable = true;
    localOptions.inInputShareable = true;
    localOptions.inSampleSize = paramInt;
    return BitmapFactory.decodeStream(paramInputStream, null, localOptions);
  }

  public static Bitmap getBitmap(String paramString)
  {
    return getBitmap(paramString, 1);
  }

  public static Bitmap getBitmap(String paramString, int paramInt)
  {
    return getBitmap(new File(paramString), paramInt);
  }

  public static String getCachePath(Context paramContext, String paramString)
  {
    String str = paramContext.getFilesDir().getAbsolutePath() + "/mFramework/cache/";
    DeviceHelper localDeviceHelper = new DeviceHelper(paramContext);
    if (localDeviceHelper.getSdcardState())
      str = localDeviceHelper.getSdcardPath() + "/mFramework/" + localDeviceHelper.getPackageName() + "/cache/";
    if (!TextUtils.isEmpty(paramString))
      str = str + paramString + "/";
    File localFile = new File(str);
    if (!localFile.exists())
      localFile.mkdir();
    return str;
  }

  // ERROR //
  public static String getFileMime(String paramString)
  {
    // Byte code:
    //   0: invokestatic 155	java/net/URLConnection:getFileNameMap	()Ljava/net/FileNameMap;
    //   3: aload_0
    //   4: invokeinterface 160 2 0
    //   9: astore_1
    //   10: aload_1
    //   11: ifnull +10 -> 21
    //   14: aload_1
    //   15: invokevirtual 164	java/lang/String:length	()I
    //   18: ifgt +32 -> 50
    //   21: aload_0
    //   22: invokestatic 170	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   25: invokevirtual 174	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   28: astore_2
    //   29: aload_2
    //   30: ldc 176
    //   32: invokevirtual 180	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   35: ifne +12 -> 47
    //   38: aload_2
    //   39: ldc 182
    //   41: invokevirtual 180	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   44: ifeq +8 -> 52
    //   47: ldc 184
    //   49: astore_1
    //   50: aload_1
    //   51: areturn
    //   52: aload_2
    //   53: ldc 186
    //   55: invokevirtual 180	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   58: ifeq +6 -> 64
    //   61: ldc 188
    //   63: areturn
    //   64: aload_2
    //   65: ldc 190
    //   67: invokevirtual 180	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   70: ifeq +6 -> 76
    //   73: ldc 192
    //   75: areturn
    //   76: new 34	java/io/FileInputStream
    //   79: dup
    //   80: aload_0
    //   81: invokespecial 193	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   84: astore_3
    //   85: aload_3
    //   86: invokestatic 197	java/net/URLConnection:guessContentTypeFromStream	(Ljava/io/InputStream;)Ljava/lang/String;
    //   89: astore 7
    //   91: aload 7
    //   93: astore 5
    //   95: aload_3
    //   96: invokevirtual 43	java/io/FileInputStream:close	()V
    //   99: aload 5
    //   101: astore_1
    //   102: aload_1
    //   103: ifnull +10 -> 113
    //   106: aload_1
    //   107: invokevirtual 164	java/lang/String:length	()I
    //   110: ifgt -60 -> 50
    //   113: ldc 199
    //   115: areturn
    //   116: astore 4
    //   118: aload_1
    //   119: astore 5
    //   121: aload 4
    //   123: astore 6
    //   125: aload 6
    //   127: invokevirtual 202	java/lang/Throwable:printStackTrace	()V
    //   130: aload 5
    //   132: astore_1
    //   133: goto -31 -> 102
    //   136: astore 6
    //   138: goto -13 -> 125
    //
    // Exception table:
    //   from	to	target	type
    //   76	91	116	java/lang/Throwable
    //   95	99	136	java/lang/Throwable
  }

  public static int getScreenHeight(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().heightPixels;
  }

  public static int getScreenWidth(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().widthPixels;
  }

  public static boolean isNullOrEmpty(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() <= 0) || ("null".equals(paramString.trim().toLowerCase(Locale.getDefault())));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.utils.Utils
 * JD-Core Version:    0.6.0
 */