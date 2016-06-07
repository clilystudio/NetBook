package u.aly;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.a.a;
import com.umeng.a.c;
import com.umeng.a.d;
import com.umeng.a.e;
import com.umeng.a.g;
import com.umeng.a.h;
import com.umeng.a.o;

public final class cg
  implements com.umeng.a.a.f, cw
{
  private cy a = null;
  private cA b = null;
  private g c = null;
  private o d = null;
  private cD e = null;
  private bO f = null;
  private int g = 10;
  private Context h;

  public cg(Context paramContext)
  {
    this.h = paramContext;
    this.a = new cy(paramContext);
    this.f = cd.a(paramContext);
    this.e = new cD(paramContext);
    this.b = new cA(paramContext);
    this.b.a(this.e);
    this.d = o.a(paramContext);
    int[] arrayOfInt = a.c(this.h);
    a(arrayOfInt[0], arrayOfInt[1]);
  }

  private static bf a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    try
    {
      bf localbf = new bf();
      new bD().a(localbf, paramArrayOfByte);
      return localbf;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private void a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    case 2:
    case 3:
    default:
      this.c = new c();
    case 1:
    case 6:
    case 4:
    case 0:
    case 5:
    case 7:
    }
    while (true)
    {
      bt.c("MobclickAgent", "report policy:" + paramInt1 + " interval:" + paramInt2);
      return;
      this.c = new c();
      continue;
      this.c = new d(this.e, paramInt2);
      continue;
      this.c = new com.umeng.a.f(this.e);
      continue;
      this.c = new g();
      continue;
      this.c = new h(this.h);
      continue;
      this.c = new e(this.a, paramInt2);
    }
  }

  private static byte[] a(bf parambf)
  {
    try
    {
      byte[] arrayOfByte = new bF().a(parambf);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private byte[] b()
  {
    try
    {
      if (TextUtils.isEmpty(a.a(this.h)))
      {
        bt.b("MobclickAgent", "Appkey is missing ,Please check AndroidManifest.xml");
        return null;
      }
      byte[] arrayOfByte1 = o.a(this.h).b();
      bf localbf;
      if (arrayOfByte1 == null)
        localbf = null;
      while (true)
        if ((localbf != null) || (this.a.a() != 0))
        {
          if (localbf == null)
            localbf = new bf();
          this.a.a(localbf);
          try
          {
            byte[] arrayOfByte2 = a(localbf);
            return arrayOfByte2;
            localbf = a(arrayOfByte1);
          }
          catch (Exception localException2)
          {
            bt.b("MobclickAgent", "Fail to serialize log ...");
            return null;
          }
        }
    }
    catch (Exception localException1)
    {
      bt.b("MobclickAgent", "Fail to construct message ...", localException1);
      o.a(this.h).c();
    }
    return null;
  }

  public final void a()
  {
    if (this.a.a() > 0);
    try
    {
      byte[] arrayOfByte = b();
      if (arrayOfByte != null)
        this.d.a(arrayOfByte);
      return;
    }
    catch (Throwable localThrowable)
    {
      if ((localThrowable instanceof OutOfMemoryError))
        this.d.c();
      localThrowable.printStackTrace();
    }
  }

  public final void a(int paramInt, long paramLong)
  {
    a.a(paramInt, (int)paramLong);
    a(paramInt, (int)paramLong);
  }

  public final void a(cx paramcx)
  {
    boolean bool1 = true;
    if (paramcx != null)
      this.a.a(paramcx);
    boolean bool2 = paramcx instanceof bd;
    boolean bool3;
    if (!bs.g(this.h))
    {
      bool3 = false;
      label32: if (!bool3)
        break label309;
    }
    while (true)
    {
      o localo;
      boolean bool4;
      byte[] arrayOfByte2;
      try
      {
        if (!this.e.a())
          continue;
        this.a.a(new ah(this.e.h()));
        localo = o.a(this.h);
        bool4 = localo.f();
        if (!bool4)
          continue;
        arrayOfByte1 = localo.d();
        int i = this.b.a(arrayOfByte1);
        switch (i)
        {
        default:
          return;
          if (!this.e.a())
            continue;
          bool3 = bool1;
          break label32;
          bool3 = this.c.a(bool2);
          break label32;
          this.f.a();
          arrayOfByte2 = b();
          if (arrayOfByte2 == null)
          {
            bt.d("MobclickAgent", "message is null");
            return;
          }
        case 2:
        case 3:
        case 1:
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        return;
      }
      byte[] arrayOfByte1 = bA.a(this.h, a.a(this.h), arrayOfByte2).a();
      localo.c();
      continue;
      if (this.e.g())
        this.e.f();
      this.f.c();
      this.e.e();
      if (!bool4)
        continue;
      localo.e();
      return;
      this.e.e();
      if (!bool4)
        continue;
      localo.e();
      return;
      if (!bool4)
        localo.b(arrayOfByte1);
      bt.b("MobclickAgent", "connection error");
      return;
      label309: if (this.a.a() > this.g);
      while (bool1)
      {
        a();
        return;
        bool1 = false;
      }
    }
  }

  public final void b(cx paramcx)
  {
    this.a.a(paramcx);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cg
 * JD-Core Version:    0.6.0
 */