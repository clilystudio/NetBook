package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.b.e;
import java.util.HashMap;

public class k
{
  private Platform a;
  private Platform.ShareParams b;
  private PlatformActionListener c;
  private AuthorizeListener d;
  private g e;

  public k(Platform paramPlatform)
  {
    this.a = paramPlatform;
  }

  public Platform.ShareParams a()
  {
    return this.b;
  }

  public void a(Platform.ShareParams paramShareParams, PlatformActionListener paramPlatformActionListener)
  {
    this.b = paramShareParams;
    this.c = paramPlatformActionListener;
  }

  public void a(AuthorizeListener paramAuthorizeListener)
  {
    this.d = paramAuthorizeListener;
  }

  public void a(WechatResp paramWechatResp)
  {
    switch (paramWechatResp.f)
    {
    case -1:
    default:
      HashMap localHashMap4 = new HashMap();
      localHashMap4.put("req", paramWechatResp.getClass().getSimpleName());
      localHashMap4.put("errCode", Integer.valueOf(paramWechatResp.f));
      localHashMap4.put("errStr", paramWechatResp.g);
      localHashMap4.put("transaction", paramWechatResp.h);
      new Throwable(new e().a(localHashMap4)).printStackTrace();
    case 0:
    case -2:
    case -3:
    case -4:
    }
    Throwable localThrowable1;
    do
    {
      Throwable localThrowable2;
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  switch (paramWechatResp.a())
                  {
                  default:
                    return;
                  case 1:
                  case 2:
                  }
                }
                while (this.d == null);
                Bundle localBundle = new Bundle();
                paramWechatResp.b(localBundle);
                this.e.a(localBundle, this.d);
                return;
              }
              while (this.c == null);
              HashMap localHashMap3 = new HashMap();
              localHashMap3.put("ShareParams", this.b);
              this.c.onComplete(this.a, 9, localHashMap3);
              return;
              switch (paramWechatResp.a())
              {
              default:
                return;
              case 1:
              case 2:
              }
            }
            while (this.d == null);
            this.d.onCancel();
            return;
          }
          while (this.c == null);
          this.c.onCancel(this.a, 9);
          return;
          HashMap localHashMap2 = new HashMap();
          localHashMap2.put("errCode", Integer.valueOf(paramWechatResp.f));
          localHashMap2.put("errStr", paramWechatResp.g);
          localHashMap2.put("transaction", paramWechatResp.h);
          localThrowable2 = new Throwable(new e().a(localHashMap2));
          switch (paramWechatResp.a())
          {
          default:
            return;
          case 1:
          case 2:
          }
        }
        while (this.d == null);
        this.d.onError(localThrowable2);
        return;
      }
      while (this.c == null);
      this.c.onError(this.a, 9, localThrowable2);
      return;
      HashMap localHashMap1 = new HashMap();
      localHashMap1.put("errCode", Integer.valueOf(paramWechatResp.f));
      localHashMap1.put("errStr", paramWechatResp.g);
      localHashMap1.put("transaction", paramWechatResp.h);
      localThrowable1 = new Throwable(new e().a(localHashMap1));
      switch (paramWechatResp.a())
      {
      default:
        return;
      case 1:
      }
    }
    while (this.d == null);
    this.d.onError(localThrowable1);
  }

  public void a(g paramg)
  {
    this.e = paramg;
  }

  public Platform b()
  {
    return this.a;
  }

  public PlatformActionListener c()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.k
 * JD-Core Version:    0.6.0
 */