package android.support.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a
{
  private static final String a = "code_cache" + File.separator + "secondary-dexes";
  private static final Set<String> b = new HashSet();
  private static final boolean c = a(System.getProperty("java.vm.version"));

  public static void a(Context paramContext)
  {
    Log.i("MultiDex", "install");
    if (c)
      Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
    ApplicationInfo localApplicationInfo;
    String str;
    while (true)
    {
      return;
      if (Build.VERSION.SDK_INT < 4)
        throw new RuntimeException("Multi dex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4" + ".");
      try
      {
        localApplicationInfo = b(paramContext);
        if (localApplicationInfo == null)
          continue;
        synchronized (b)
        {
          str = localApplicationInfo.sourceDir;
          if (!b.contains(str))
            break;
          return;
        }
      }
      catch (Exception localException)
      {
        Log.e("MultiDex", "Multidex installation failure", localException);
        throw new RuntimeException("Multi dex installation failed (" + localException.getMessage() + ").");
      }
    }
    b.add(str);
    if (Build.VERSION.SDK_INT > 20)
      Log.w("MultiDex", "MultiDex is not guaranteed to work in SDK version " + Build.VERSION.SDK_INT + ": SDK version higher than 20" + " should be backed by runtime with built-in multidex capabilty but it's not the " + "case here: java.vm.version=\"" + System.getProperty("java.vm.version") + "\"");
    ClassLoader localClassLoader;
    try
    {
      localClassLoader = paramContext.getClassLoader();
      if (localClassLoader == null)
      {
        Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
        monitorexit;
        return;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", localRuntimeException);
      monitorexit;
      return;
    }
    try
    {
      c(paramContext);
      localFile = new File(localApplicationInfo.dataDir, a);
      List localList1 = d.a(paramContext, localApplicationInfo, localFile, false);
      if (a(localList1))
      {
        a(localClassLoader, localFile, localList1);
        monitorexit;
        Log.i("MultiDex", "install done");
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        File localFile;
        Log.w("MultiDex", "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", localThrowable);
        continue;
        Log.w("MultiDex", "Files were not valid zip files.  Forcing a reload.");
        List localList2 = d.a(paramContext, localApplicationInfo, localFile, true);
        if (!a(localList2))
          break;
        a(localClassLoader, localFile, localList2);
      }
    }
    throw new RuntimeException("Zip files were not valid.");
  }

  private static void a(ClassLoader paramClassLoader, File paramFile, List<File> paramList)
  {
    if (!paramList.isEmpty())
    {
      if (Build.VERSION.SDK_INT >= 19)
        c.a(paramClassLoader, paramList, paramFile);
    }
    else
      return;
    if (Build.VERSION.SDK_INT >= 14)
    {
      b.a(paramClassLoader, paramList, paramFile);
      return;
    }
    b.a(paramClassLoader, paramList);
  }

  private static boolean a(String paramString)
  {
    int i = 0;
    Matcher localMatcher;
    if (paramString != null)
    {
      localMatcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(paramString);
      boolean bool = localMatcher.matches();
      i = 0;
      if (!bool);
    }
    try
    {
      int j = Integer.parseInt(localMatcher.group(1));
      int k = Integer.parseInt(localMatcher.group(2));
      if (j <= 2)
      {
        i = 0;
        if (j == 2)
        {
          i = 0;
          if (k <= 0);
        }
      }
      else
      {
        i = 1;
      }
      StringBuilder localStringBuilder = new StringBuilder("VM with version ").append(paramString);
      if (i != 0);
      for (String str = " has multidex support"; ; str = " does not have multidex support")
      {
        Log.i("MultiDex", str);
        return i;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        i = 0;
    }
  }

  private static boolean a(List<File> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      if (!d.a((File)localIterator.next()))
        return false;
    return true;
  }

  private static ApplicationInfo b(Context paramContext)
  {
    PackageManager localPackageManager;
    String str;
    try
    {
      localPackageManager = paramContext.getPackageManager();
      str = paramContext.getPackageName();
      if ((localPackageManager == null) || (str == null))
        return null;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", localRuntimeException);
      return null;
    }
    return localPackageManager.getApplicationInfo(str, 128);
  }

  private static Field b(Object paramObject, String paramString)
  {
    Class localClass = paramObject.getClass();
    while (localClass != null)
      try
      {
        Field localField = localClass.getDeclaredField(paramString);
        if (!localField.isAccessible())
          localField.setAccessible(true);
        return localField;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        localClass = localClass.getSuperclass();
      }
    throw new NoSuchFieldException("Field " + paramString + " not found in " + paramObject.getClass());
  }

  private static Method b(Object paramObject, String paramString, Class<?>[] paramArrayOfClass)
  {
    Class localClass = paramObject.getClass();
    while (localClass != null)
      try
      {
        Method localMethod = localClass.getDeclaredMethod(paramString, paramArrayOfClass);
        if (!localMethod.isAccessible())
          localMethod.setAccessible(true);
        return localMethod;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localClass = localClass.getSuperclass();
      }
    throw new NoSuchMethodException("Method " + paramString + " with parameters " + Arrays.asList(paramArrayOfClass) + " not found in " + paramObject.getClass());
  }

  private static void c(Context paramContext)
  {
    File localFile1 = new File(paramContext.getFilesDir(), "secondary-dexes");
    File[] arrayOfFile;
    if (localFile1.isDirectory())
    {
      Log.i("MultiDex", "Clearing old secondary dex dir (" + localFile1.getPath() + ").");
      arrayOfFile = localFile1.listFiles();
      if (arrayOfFile == null)
        Log.w("MultiDex", "Failed to list secondary dex dir content (" + localFile1.getPath() + ").");
    }
    else
    {
      return;
    }
    int i = arrayOfFile.length;
    int j = 0;
    if (j < i)
    {
      File localFile2 = arrayOfFile[j];
      Log.i("MultiDex", "Trying to delete old file " + localFile2.getPath() + " of size " + localFile2.length());
      if (!localFile2.delete())
        Log.w("MultiDex", "Failed to delete old file " + localFile2.getPath());
      while (true)
      {
        j++;
        break;
        Log.i("MultiDex", "Deleted old file " + localFile2.getPath());
      }
    }
    if (!localFile1.delete())
    {
      Log.w("MultiDex", "Failed to delete secondary dex dir " + localFile1.getPath());
      return;
    }
    Log.i("MultiDex", "Deleted old secondary dex dir " + localFile1.getPath());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.multidex.a
 * JD-Core Version:    0.6.0
 */