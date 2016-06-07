package com.maxthon.dex;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import com.maxthon.main.MgeProperties;
import com.maxthon.utils.FileUtil;
import com.maxthon.utils.MReflect;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;

public class DexUtils
{
  public static final String PLUGIN_MAIN = "plugin_main";
  private static String PLUGIN_PATH;
  private static final String PLUGIN_PATHNAME = "plugins";
  private static DexUtils mInstance;
  private DexClassLoader mClassLoader;
  private Context mContext;
  private String mJverion;

  private String getDexInternalStoragePath(Context paramContext)
  {
    if (TextUtils.isEmpty(PLUGIN_PATH))
    {
      File localFile = paramContext.getDir("plugins", 0);
      if (!localFile.exists())
        localFile.mkdirs();
      PLUGIN_PATH = localFile.getPath();
    }
    return PLUGIN_PATH;
  }

  public static DexUtils getInstance()
  {
    if (mInstance == null)
      mInstance = new DexUtils();
    return mInstance;
  }

  private void writeDefaultToCache(Context paramContext, String paramString)
  {
    try
    {
      InputStream localInputStream = paramContext.getResources().getAssets().open("jar/" + getJversion() + ".jar");
      FileOutputStream localFileOutputStream = new FileOutputStream(getJarFile(paramString, getJversion()).getAbsoluteFile());
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i <= 0)
        {
          localFileOutputStream.flush();
          localFileOutputStream.close();
          localInputStream.close();
          return;
        }
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public DexClassLoader getDexClassLoader(File paramFile)
  {
    if (this.mClassLoader == null)
      if ((paramFile == null) || (!paramFile.exists()))
        writeDefaultToCache(this.mContext, "plugin_main");
    try
    {
      unZipJar(paramFile);
      replaceActivityThreadClassloader(this.mContext, paramFile);
      return this.mClassLoader;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public File getJarFile(String paramString1, String paramString2)
  {
    return new File(getInstance().getPluginInDir(this.mContext, paramString1) + File.separator + paramString2 + ".jar");
  }

  public String getJversion()
  {
    if (TextUtils.isEmpty(this.mJverion))
      this.mJverion = MgeProperties.getMgeSharedPreferences(this.mContext).getString(MgeProperties.KEY_SDK_JVERSION, "1.0.0");
    return this.mJverion;
  }

  public File getPluginBaseDir(Context paramContext, String paramString)
  {
    File localFile = new File(getDexInternalStoragePath(paramContext) + File.separator + paramString + "_dir/");
    if (!localFile.exists())
      localFile.mkdirs();
    return localFile;
  }

  public File getPluginDexDir(Context paramContext, String paramString)
  {
    File localFile = new File(getDexInternalStoragePath(paramContext) + File.separator + paramString + "_dex/");
    if (!localFile.exists())
      localFile.mkdirs();
    return localFile;
  }

  public File getPluginInDir(Context paramContext, String paramString)
  {
    File localFile = new File(getDexInternalStoragePath(paramContext) + File.separator + paramString + "_in/");
    if (!localFile.exists())
      localFile.mkdirs();
    return localFile;
  }

  public File getPluginLibDir(Context paramContext, String paramString)
  {
    return new File(getPluginBaseDir(paramContext, paramString).getPath() + "/lib/");
  }

  public File getPluginOutDir(Context paramContext, String paramString)
  {
    File localFile = new File(getDexInternalStoragePath(paramContext) + File.separator + paramString + "_out/");
    if (!localFile.exists())
      localFile.mkdirs();
    return localFile;
  }

  public File getPorxyActivityDexPath(Context paramContext, String paramString1, String paramString2)
  {
    File localFile = new File(getPluginBaseDir(paramContext, paramString1) + "/activities/");
    if (!localFile.exists())
      localFile.mkdirs();
    String str = ".dex";
    if (Build.VERSION.SDK_INT < 11)
      str = ".jar";
    return new File(localFile, paramString2 + str);
  }

  public void init(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public void replaceActivityThreadClassloader(Context paramContext, File paramFile)
  {
    MReflect localMReflect3;
    Object[] arrayOfObject2;
    if (Build.VERSION.SDK_INT < 14)
    {
      localMReflect3 = MReflect.on("android.app.ActivityThread").call("currentActivityThread");
      arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.mContext.getApplicationInfo();
    }
    MReflect localMReflect1;
    Object[] arrayOfObject1;
    for (MReflect localMReflect2 = localMReflect3.call("getPackageInfoNoCheck", arrayOfObject2); ; localMReflect2 = localMReflect1.call("peekPackageInfo", arrayOfObject1))
    {
      ClassLoader localClassLoader = (ClassLoader)localMReflect2.field("mClassLoader").get();
      this.mClassLoader = new DexClassLoader(paramFile.getPath(), getInstance().getPluginDexDir(this.mContext, "plugin_main").getPath(), null, localClassLoader);
      localMReflect2.set("mClassLoader", this.mClassLoader);
      return;
      localMReflect1 = MReflect.on("android.app.ActivityThread").call("currentActivityThread");
      arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = this.mContext.getPackageName();
      arrayOfObject1[1] = Boolean.valueOf(true);
    }
  }

  public void setClassLoader(Context paramContext, File paramFile)
  {
    replaceActivityThreadClassloader(paramContext, paramFile);
  }

  public void setJversion(String paramString)
  {
    this.mJverion = paramString;
  }

  public void unZipJar(File paramFile)
  {
    if (!paramFile.exists())
      return;
    JarInputStream localJarInputStream = new JarInputStream(new FileInputStream(paramFile));
    int i = 0;
    while (true)
    {
      if (i != 0)
      {
        localJarInputStream.closeEntry();
        localJarInputStream.close();
        return;
      }
      JarEntry localJarEntry = localJarInputStream.getNextJarEntry();
      if (localJarEntry != null)
      {
        String str = localJarEntry.getName();
        if (TextUtils.isEmpty(str))
          continue;
        Log.i("test_unzip", "path : " + localJarEntry.getName());
        File localFile = new File(getInstance().getPluginOutDir(this.mContext, "plugin_main").getPath() + File.separator + localJarEntry.getName());
        Log.i("test_unzip", "path : " + localFile.getPath());
        if (!str.endsWith(File.separator))
        {
          if (!localFile.getParentFile().exists())
            localFile.getParentFile().mkdirs();
          while (true)
          {
            FileUtil.writeToFile(localJarInputStream, localFile);
            break;
            if (!localFile.exists())
              continue;
            localFile.delete();
          }
        }
        localFile.mkdirs();
        continue;
      }
      i = 1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.dex.DexUtils
 * JD-Core Version:    0.6.0
 */