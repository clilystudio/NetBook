package cn.sharesdk.wechat.utils;

import android.os.Bundle;

public class c extends WechatResp
{
  public WXMediaMessage a;

  public c(Bundle paramBundle)
  {
    super(paramBundle);
  }

  public int a()
  {
    return 3;
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = WXMediaMessage.a.a(paramBundle);
  }

  public void b(Bundle paramBundle)
  {
    super.b(paramBundle);
    paramBundle.putAll(WXMediaMessage.a.a(this.a));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.c
 * JD-Core Version:    0.6.0
 */