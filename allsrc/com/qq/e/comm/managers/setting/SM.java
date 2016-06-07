package com.qq.e.comm.managers.setting;

import android.content.Context;
import android.util.Base64;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.io.File;
import java.io.IOException;

public class SM
{
  private a a;
  private String b;
  private a c;
  private a d;
  private String e;
  private c f;
  private c g;
  private String h;
  private String i = "";
  private Context j;

  public SM(Context paramContext)
  {
    this.j = paramContext;
    this.a = new a();
    this.d = new a();
    this.g = new b();
    try
    {
      this.h = StringUtil.readAll(new File(this.j.getDir("e_qq_com_setting", 0), "gdt_suid"));
      a();
      b();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        this.h = null;
        GDTLogger.e("IO Exception while loading suid");
      }
    }
  }

  private void a()
  {
    d locald = a.b(this.j);
    if (locald != null)
    {
      this.e = locald.a();
      this.f = locald.b();
      return;
    }
    GDTLogger.d("Load Local SDK Cloud setting fail");
  }

  private void b()
  {
    com.qq.e.comm.a locala = a.a(this.j);
    if (locala != null)
    {
      this.c = locala.b();
      this.b = locala.a();
      return;
    }
    GDTLogger.d("Load Local DEV Cloud setting fail");
  }

  public Object get(String paramString)
  {
    if (StringUtil.isEmpty(paramString));
    while (true)
    {
      return null;
      try
      {
        if (this.a.a(paramString) != null)
        {
          Object localObject5 = this.a.a(paramString);
          if (localObject5 != null)
            return localObject5;
        }
        if (this.c != null)
        {
          Object localObject4 = this.c.a(paramString);
          if (localObject4 != null)
            return localObject4;
        }
        if (this.d != null)
        {
          Object localObject3 = this.d.a(paramString);
          if (localObject3 != null)
            return localObject3;
        }
        if (this.f != null)
        {
          Object localObject2 = this.f.a(paramString);
          if (localObject2 != null)
            return localObject2;
        }
        if (this.g == null)
          continue;
        Object localObject1 = this.g.a(paramString);
        return localObject1;
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.report("Exception in settingManager.get Setting for key:" + paramString, localThrowable);
      }
    }
    return null;
  }

  public String getDevCloudSettingSig()
  {
    return this.b;
  }

  public Object getForPlacement(String paramString1, String paramString2)
  {
    Object localObject1;
    if ((StringUtil.isEmpty(paramString1)) || (StringUtil.isEmpty(paramString2)))
      localObject1 = null;
    while (true)
    {
      return localObject1;
      try
      {
        if (this.a != null)
        {
          localObject1 = this.a.a(paramString1, paramString2);
          if (localObject1 != null)
            continue;
        }
        if (this.c != null)
        {
          localObject1 = this.c.a(paramString1, paramString2);
          if (localObject1 != null)
            continue;
        }
        if (this.d != null)
        {
          localObject1 = this.d.a(paramString1, paramString2);
          if (localObject1 != null)
            continue;
        }
        Object localObject2 = get(paramString1);
        return localObject2;
      }
      catch (Throwable localThrowable)
      {
        GDTLogger.report("Exception in settingManager.getForPlacement", localThrowable);
      }
    }
    return null;
  }

  public int getInteger(String paramString, int paramInt)
  {
    Object localObject = get(paramString);
    if ((localObject != null) && ((localObject instanceof Integer)))
      paramInt = ((Integer)localObject).intValue();
    return paramInt;
  }

  public int getIntegerForPlacement(String paramString1, String paramString2, int paramInt)
  {
    Object localObject = getForPlacement(paramString1, paramString2);
    if ((localObject != null) && ((localObject instanceof Integer)))
      paramInt = ((Integer)localObject).intValue();
    return paramInt;
  }

  public String getSdkCloudSettingSig()
  {
    return this.e;
  }

  public String getSid()
  {
    return this.i;
  }

  public String getString(String paramString)
  {
    Object localObject = get(paramString);
    if (localObject == null)
      return null;
    return localObject.toString();
  }

  public String getStringForPlacement(String paramString1, String paramString2)
  {
    Object localObject = getForPlacement(paramString1, paramString2);
    if (localObject == null)
      return null;
    return localObject.toString();
  }

  public String getSuid()
  {
    return this.h;
  }

  public void setDEVCodeSetting(String paramString, Object paramObject)
  {
    this.d.a(paramString, paramObject);
  }

  public void setDEVCodeSetting(String paramString1, Object paramObject, String paramString2)
  {
    this.d.a(paramString1, paramObject, paramString2);
  }

  public void updateContextSetting(String paramString)
  {
    try
    {
      a locala = new a();
      if (!StringUtil.isEmpty(paramString))
        locala = new a(new String(Base64.decode(paramString, 0), "UTF-8"));
      this.a = locala;
      return;
    }
    catch (Throwable localThrowable)
    {
      GDTLogger.report("Exception while update Context Setting", localThrowable);
    }
  }

  public void updateDEVCloudSetting(String paramString1, String paramString2)
  {
    if (a.b(this.j, paramString1, paramString2))
      b();
  }

  public void updateSDKCloudSetting(String paramString1, String paramString2)
  {
    if (a.a(this.j, paramString1, paramString2))
      a();
  }

  public void updateSID(String paramString)
  {
    this.i = paramString;
  }

  public void updateSUID(String paramString)
  {
    if ((!StringUtil.isEmpty(paramString)) && (!paramString.equals(this.h)))
      this.h = paramString;
    try
    {
      StringUtil.writeTo(paramString, new File(this.j.getDir("e_qq_com_setting", 0), "gdt_suid"));
      return;
    }
    catch (IOException localIOException)
    {
      GDTLogger.report("Exception while persit suid", localIOException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.setting.SM
 * JD-Core Version:    0.6.0
 */