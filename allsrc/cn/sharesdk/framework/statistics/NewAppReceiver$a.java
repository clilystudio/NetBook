package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.os.Environment;
import android.util.Base64;
import com.mob.tools.b.g;
import com.mob.tools.e;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;

class NewAppReceiver$a
{
  private g a;

  public NewAppReceiver$a(Context paramContext)
  {
    try
    {
      com.mob.tools.b.a.a(paramContext);
      String str = com.arcsoft.hpay100.a.a.h(paramContext, null);
      if (com.mob.tools.b.a.p())
      {
        File localFile1 = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "ShareSDK");
        if (localFile1.exists())
        {
          this.a = new g();
          File localFile3 = new File(localFile1, ".ba");
          this.a.a(localFile3.getAbsolutePath());
          return;
        }
      }
      this.a = new g();
      File localFile2 = new File(str, ".ba");
      if (!localFile2.getParentFile().exists())
        localFile2.getParentFile().mkdirs();
      this.a.a(localFile2.getAbsolutePath());
      return;
    }
    catch (Exception localException)
    {
      cn.sharesdk.framework.utils.d.a().w(localException);
      if (this.a == null)
        this.a = new g();
    }
  }

  public ArrayList<HashMap<String, String>> a()
  {
    Object localObject = this.a.c("buffered_apps");
    if (localObject == null)
      return new ArrayList();
    return (ArrayList)localObject;
  }

  public void a(long paramLong)
  {
    this.a.a("buffered_apps_time", Long.valueOf(paramLong));
  }

  public void a(ArrayList<HashMap<String, String>> paramArrayList)
  {
    g localg = this.a;
    if (paramArrayList == null)
      return;
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
      localObjectOutputStream.writeObject(paramArrayList);
      localObjectOutputStream.flush();
      localObjectOutputStream.close();
      localg.a("buffered_apps", Base64.encodeToString(localByteArrayOutputStream.toByteArray(), 2));
      return;
    }
    catch (Throwable localThrowable)
    {
      e.a().w(localThrowable);
    }
  }

  public long b()
  {
    return this.a.b("buffered_apps_time");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.NewAppReceiver.a
 * JD-Core Version:    0.6.0
 */