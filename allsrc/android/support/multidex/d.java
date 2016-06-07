package android.support.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

final class d
{
  private static Method a;

  static
  {
    try
    {
      a = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      a = null;
    }
  }

  private static SharedPreferences a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 11);
    for (int i = 0; ; i = 4)
      return paramContext.getSharedPreferences("multidex.version", i);
  }

  static List<File> a(Context paramContext, ApplicationInfo paramApplicationInfo, File paramFile, boolean paramBoolean)
  {
    Log.i("MultiDex", "MultiDexExtractor.load(" + paramApplicationInfo.sourceDir + ", " + paramBoolean + ")");
    File localFile = new File(paramApplicationInfo.sourceDir);
    long l = b.a(localFile);
    if (l == -1L)
      l -= 1L;
    int i;
    if (!paramBoolean)
    {
      SharedPreferences localSharedPreferences = a(paramContext);
      if ((localSharedPreferences.getLong("timestamp", -1L) != b(localFile)) || (localSharedPreferences.getLong("crc", -1L) != l))
      {
        i = 1;
        if (i != 0)
          break label229;
      }
    }
    while (true)
    {
      try
      {
        List localList2 = a(paramContext, localFile, paramFile);
        localList1 = localList2;
        Log.i("MultiDex", "load found " + localList1.size() + " secondary dex files");
        return localList1;
        i = 0;
      }
      catch (IOException localIOException)
      {
        Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", localIOException);
        localList1 = a(localFile, paramFile);
        a(paramContext, b(localFile), l, 1 + localList1.size());
        continue;
      }
      label229: Log.i("MultiDex", "Detected that extraction must be performed.");
      List localList1 = a(localFile, paramFile);
      a(paramContext, b(localFile), l, 1 + localList1.size());
    }
  }

  private static List<File> a(Context paramContext, File paramFile1, File paramFile2)
  {
    Log.i("MultiDex", "loading existing secondary dex files");
    String str = paramFile1.getName() + ".classes";
    int i = a(paramContext).getInt("dex.number", 1);
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 2; j <= i; j++)
    {
      File localFile = new File(paramFile2, str + j + ".zip");
      if (localFile.isFile())
      {
        localArrayList.add(localFile);
        if (a(localFile))
          continue;
        Log.i("MultiDex", "Invalid zip file: " + localFile);
        throw new IOException("Invalid ZIP file.");
      }
      throw new IOException("Missing extracted secondary dex file '" + localFile.getPath() + "'");
    }
    return localArrayList;
  }

  private static List<File> a(File paramFile1, File paramFile2)
  {
    String str1 = paramFile1.getName() + ".classes";
    a(paramFile2, str1);
    ArrayList localArrayList = new ArrayList();
    ZipFile localZipFile = new ZipFile(paramFile1);
    try
    {
      localObject2 = localZipFile.getEntry("classes" + 2 + ".dex");
      i = 2;
      if (localObject2 != null)
      {
        File localFile = new File(paramFile2, str1 + i + ".zip");
        localArrayList.add(localFile);
        Log.i("MultiDex", "Extraction is needed for file " + localFile);
        j = 0;
        for (k = 0; (k < 3) && (j == 0); k = n)
        {
          n = k + 1;
          a(localZipFile, (ZipEntry)localObject2, localFile, str1);
          bool = a(localFile);
          StringBuilder localStringBuilder = new StringBuilder("Extraction ");
          if (!bool)
            break label462;
          str2 = "success";
          Log.i("MultiDex", str2 + " - length " + localFile.getAbsolutePath() + ": " + localFile.length());
          if (bool)
            break label451;
          localFile.delete();
          if (!localFile.exists())
            break label451;
          Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + localFile.getPath() + "'");
          j = bool;
        }
        if (j == 0)
          throw new IOException("Could not create zip file " + localFile.getAbsolutePath() + " for secondary dex (" + i + ")");
      }
    }
    finally
    {
      while (true)
      {
        int n;
        boolean bool;
        try
        {
          localZipFile.close();
          throw localObject1;
          int m = i + 1;
          ZipEntry localZipEntry = localZipFile.getEntry("classes" + m + ".dex");
          Object localObject2 = localZipEntry;
          int i = m;
          continue;
          try
          {
            localZipFile.close();
            return localArrayList;
          }
          catch (IOException localIOException2)
          {
            Log.w("MultiDex", "Failed to close resource", localIOException2);
            return localArrayList;
          }
        }
        catch (IOException localIOException1)
        {
          Log.w("MultiDex", "Failed to close resource", localIOException1);
          continue;
        }
        label451: int j = bool;
        int k = n;
        continue;
        label462: String str2 = "failed";
      }
    }
  }

  private static void a(Context paramContext, long paramLong1, long paramLong2, int paramInt)
  {
    SharedPreferences.Editor localEditor = a(paramContext).edit();
    localEditor.putLong("timestamp", paramLong1);
    localEditor.putLong("crc", paramLong2);
    localEditor.putInt("dex.number", paramInt);
    if (a != null);
    try
    {
      a.invoke(localEditor, new Object[0]);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localEditor.commit();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      label67: break label67;
    }
  }

  private static void a(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.w("MultiDex", "Failed to close resource", localIOException);
    }
  }

  private static void a(File paramFile, String paramString)
  {
    c(paramFile.getParentFile());
    c(paramFile);
    File[] arrayOfFile = paramFile.listFiles(new e(paramString));
    if (arrayOfFile == null)
    {
      Log.w("MultiDex", "Failed to list secondary dex dir content (" + paramFile.getPath() + ").");
      return;
    }
    int i = arrayOfFile.length;
    int j = 0;
    label67: File localFile;
    if (j < i)
    {
      localFile = arrayOfFile[j];
      Log.i("MultiDex", "Trying to delete old file " + localFile.getPath() + " of size " + localFile.length());
      if (localFile.delete())
        break label161;
      Log.w("MultiDex", "Failed to delete old file " + localFile.getPath());
    }
    while (true)
    {
      j++;
      break label67;
      break;
      label161: Log.i("MultiDex", "Deleted old file " + localFile.getPath());
    }
  }

  // ERROR //
  private static void a(ZipFile paramZipFile, ZipEntry paramZipEntry, File paramFile, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 302	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   5: astore 4
    //   7: aload_3
    //   8: ldc 154
    //   10: aload_2
    //   11: invokevirtual 276	java/io/File:getParentFile	()Ljava/io/File;
    //   14: invokestatic 306	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   17: astore 5
    //   19: ldc 42
    //   21: new 44	java/lang/StringBuilder
    //   24: dup
    //   25: ldc_w 308
    //   28: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload 5
    //   33: invokevirtual 181	java/io/File:getPath	()Ljava/lang/String;
    //   36: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokestatic 77	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   45: pop
    //   46: new 310	java/util/zip/ZipOutputStream
    //   49: dup
    //   50: new 312	java/io/BufferedOutputStream
    //   53: dup
    //   54: new 314	java/io/FileOutputStream
    //   57: dup
    //   58: aload 5
    //   60: invokespecial 315	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   63: invokespecial 318	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   66: invokespecial 319	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   69: astore 7
    //   71: new 321	java/util/zip/ZipEntry
    //   74: dup
    //   75: ldc_w 323
    //   78: invokespecial 324	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   81: astore 8
    //   83: aload 8
    //   85: aload_1
    //   86: invokevirtual 327	java/util/zip/ZipEntry:getTime	()J
    //   89: invokevirtual 331	java/util/zip/ZipEntry:setTime	(J)V
    //   92: aload 7
    //   94: aload 8
    //   96: invokevirtual 335	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   99: sipush 16384
    //   102: newarray byte
    //   104: astore 12
    //   106: aload 4
    //   108: aload 12
    //   110: invokevirtual 341	java/io/InputStream:read	([B)I
    //   113: istore 13
    //   115: iload 13
    //   117: iconst_m1
    //   118: if_icmpeq +25 -> 143
    //   121: aload 7
    //   123: aload 12
    //   125: iconst_0
    //   126: iload 13
    //   128: invokevirtual 345	java/util/zip/ZipOutputStream:write	([BII)V
    //   131: aload 4
    //   133: aload 12
    //   135: invokevirtual 341	java/io/InputStream:read	([B)I
    //   138: istore 13
    //   140: goto -25 -> 115
    //   143: aload 7
    //   145: invokevirtual 348	java/util/zip/ZipOutputStream:closeEntry	()V
    //   148: aload 7
    //   150: invokevirtual 349	java/util/zip/ZipOutputStream:close	()V
    //   153: ldc 42
    //   155: new 44	java/lang/StringBuilder
    //   158: dup
    //   159: ldc_w 351
    //   162: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   165: aload_2
    //   166: invokevirtual 181	java/io/File:getPath	()Ljava/lang/String;
    //   169: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: invokestatic 77	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   178: pop
    //   179: aload 5
    //   181: aload_2
    //   182: invokevirtual 354	java/io/File:renameTo	(Ljava/io/File;)Z
    //   185: ifne +77 -> 262
    //   188: new 40	java/io/IOException
    //   191: dup
    //   192: new 44	java/lang/StringBuilder
    //   195: dup
    //   196: ldc_w 356
    //   199: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   202: aload 5
    //   204: invokevirtual 213	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   207: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: ldc_w 358
    //   213: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: aload_2
    //   217: invokevirtual 213	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   220: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: ldc_w 360
    //   226: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: invokespecial 176	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   235: athrow
    //   236: astore 10
    //   238: aload 4
    //   240: invokestatic 362	android/support/multidex/d:a	(Ljava/io/Closeable;)V
    //   243: aload 5
    //   245: invokevirtual 225	java/io/File:delete	()Z
    //   248: pop
    //   249: aload 10
    //   251: athrow
    //   252: astore 9
    //   254: aload 7
    //   256: invokevirtual 349	java/util/zip/ZipOutputStream:close	()V
    //   259: aload 9
    //   261: athrow
    //   262: aload 4
    //   264: invokestatic 362	android/support/multidex/d:a	(Ljava/io/Closeable;)V
    //   267: aload 5
    //   269: invokevirtual 225	java/io/File:delete	()Z
    //   272: pop
    //   273: return
    //
    // Exception table:
    //   from	to	target	type
    //   46	71	236	finally
    //   148	236	236	finally
    //   254	262	236	finally
    //   71	115	252	finally
    //   121	140	252	finally
    //   143	148	252	finally
  }

  static boolean a(File paramFile)
  {
    try
    {
      ZipFile localZipFile = new ZipFile(paramFile);
      try
      {
        localZipFile.close();
        return true;
      }
      catch (IOException localIOException1)
      {
        Log.w("MultiDex", "Failed to close zip file: " + paramFile.getAbsolutePath());
      }
      return false;
    }
    catch (ZipException localZipException)
    {
      while (true)
        Log.w("MultiDex", "File " + paramFile.getAbsolutePath() + " is not a valid zip file.", localZipException);
    }
    catch (IOException localIOException2)
    {
      while (true)
        Log.w("MultiDex", "Got an IOException trying to open zip file: " + paramFile.getAbsolutePath(), localIOException2);
    }
  }

  private static long b(File paramFile)
  {
    long l = paramFile.lastModified();
    if (l == -1L)
      l -= 1L;
    return l;
  }

  private static void c(File paramFile)
  {
    paramFile.mkdir();
    if (!paramFile.isDirectory())
    {
      File localFile = paramFile.getParentFile();
      if (localFile == null)
        Log.e("MultiDex", "Failed to create dir " + paramFile.getPath() + ". Parent file is null.");
      while (true)
      {
        throw new IOException("Failed to create cache directory " + paramFile.getPath());
        Log.e("MultiDex", "Failed to create dir " + paramFile.getPath() + ". parent file is a dir " + localFile.isDirectory() + ", a file " + localFile.isFile() + ", exists " + localFile.exists() + ", readable " + localFile.canRead() + ", writable " + localFile.canWrite());
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.multidex.d
 * JD-Core Version:    0.6.0
 */