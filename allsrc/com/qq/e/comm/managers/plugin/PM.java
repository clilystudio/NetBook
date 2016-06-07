package com.qq.e.comm.managers.plugin;

import TT;;
import android.content.Context;
import com.qq.e.comm.constants.Constants.PLUGIN;
import com.qq.e.comm.net.NetworkClient;
import com.qq.e.comm.net.NetworkClient.Priority;
import com.qq.e.comm.net.NetworkClientImpl;
import com.qq.e.comm.net.rr.PlainRequest;
import com.qq.e.comm.net.rr.Request.Method;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.Md5Util;
import com.qq.e.comm.util.StringUtil;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PM
{
  private static final Pattern a = Pattern.compile(".*plugin\\.dex-(\\d+)\\.jar.*");
  private static final Map<Class<?>, String> g = new PM.1();
  private Context b;
  private String c;
  private File d;
  private int e;
  private DexClassLoader f;

  public PM(Context paramContext)
  {
    this.b = paramContext;
    StringBuilder localStringBuilder;
    String str;
    if (b())
    {
      localStringBuilder = new StringBuilder("PluginFile:\t");
      if (this.d != null)
        break label94;
      str = "null";
    }
    while (true)
    {
      GDTLogger.d(str);
      if (this.c == null)
        break;
      try
      {
        this.f = new DexClassLoader(this.d.getAbsolutePath(), this.b.getDir("e_qq_com_dex", 0).getAbsolutePath(), null, getClass().getClassLoader());
        return;
        label94: str = this.d.getAbsolutePath();
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.e("exception while init plugin class loader", localThrowable);
        return;
      }
    }
    this.f = null;
  }

  private int a(File paramFile1, File paramFile2)
  {
    while (true)
    {
      try
      {
        if ((!paramFile1.exists()) || (!paramFile2.exists()))
          continue;
        String[] arrayOfString = StringUtil.readAll(paramFile1).split("#####");
        if (arrayOfString.length != 2)
          continue;
        String str = arrayOfString[1];
        int i = StringUtil.parseInteger(arrayOfString[0], 0);
        com.qq.e.comm.util.a locala = com.qq.e.comm.util.a.a();
        if (paramFile2 != null)
        {
          if (paramFile2.exists())
            continue;
          break label121;
          if (j == 0)
            continue;
          this.c = str;
          this.d = paramFile2;
          return i;
          boolean bool = locala.b(str, Md5Util.encode(paramFile2));
          j = bool;
          continue;
          return 0;
          return 0;
          return 0;
        }
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.report("Exception while init plugin manager", localThrowable);
        return 0;
      }
      label121: int j = 0;
    }
  }

  private boolean b()
  {
    try
    {
      GDTLogger.d("TimeStap_BEFORE_PLUGIN_INIT:" + System.currentTimeMillis());
      File localFile1 = e();
      File localFile2 = d();
      int i = a(localFile1, localFile2);
      GDTLogger.d("last updated plugin version =" + i + ";asset plugin version=504");
      if (i < 504)
      {
        if (com.qq.e.comm.a.a(this.b, d(), e()))
        {
          this.c = Constants.PLUGIN.ASSET_PLUGIN_SIG;
          this.d = localFile2;
          this.e = 504;
          return true;
        }
        GDTLogger.e("Fail to prepair Defult plugin ");
        return false;
      }
      this.e = i;
      return true;
    }
    catch (Throwable localThrowable)
    {
      GDTLogger.report("Exception while init plugin manager", localThrowable);
      return false;
    }
    finally
    {
      GDTLogger.d("TimeStap_AFTER_PLUGIN_INIT:" + System.currentTimeMillis());
    }
    throw localObject;
  }

  private File c()
  {
    return this.b.getDir("e_qq_com_plugin", 0);
  }

  private File d()
  {
    return new File(c(), "gdt_plugin.jar");
  }

  private File e()
  {
    return new File(c(), "gdt_plugin.jar.sig");
  }

  public <T> T getFactory(Class<T> paramClass)
  {
    GDTLogger.d("GetFactoryInstaceforInterface:" + paramClass);
    if (Constants.PLUGIN.ASSET_PLUGIN_SIG == null);
    for (Object localObject1 = getClass().getClassLoader(); localObject1 == null; localObject1 = this.f)
      throw new a("Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:" + paramClass);
    String str;
    try
    {
      str = (String)g.get(paramClass);
      if (StringUtil.isEmpty(str))
        throw new a("factory  implemention name is not specified for interface:" + paramClass.getName());
    }
    catch (Throwable localThrowable)
    {
      throw new a("Fail to getfactory implement instance for interface:" + paramClass.getName(), localThrowable);
    }
    Class localClass = ((ClassLoader)localObject1).loadClass(str);
    Object localObject2 = paramClass.cast(localClass.getDeclaredMethod("getInstance", new Class[0]).invoke(localClass, new Object[0]));
    return (TT)localObject2;
  }

  public String getLocalSig()
  {
    return this.c;
  }

  public POFactory getPOFactory()
  {
    return (POFactory)getFactory(POFactory.class);
  }

  public int getPluginVersion()
  {
    return this.e;
  }

  public void update(String paramString1, String paramString2)
  {
    GDTLogger.d("TIMESTAP_BEFORE_DOWN_PLUGIN:" + System.currentTimeMillis());
    String str = "0";
    Matcher localMatcher = a.matcher(paramString2);
    if (localMatcher.matches())
      str = localMatcher.group(1);
    int i = StringUtil.parseInteger(str, 0);
    if (i < 504)
    {
      GDTLogger.w("online plugin version is smaller than asset plugin version" + i + ",504.download give up");
      return;
    }
    PlainRequest localPlainRequest = new PlainRequest(paramString2, Request.Method.GET, null);
    NetworkClientImpl.getInstance().submit(localPlainRequest, NetworkClient.Priority.High, new PM.a(this, paramString1));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.plugin.PM
 * JD-Core Version:    0.6.0
 */