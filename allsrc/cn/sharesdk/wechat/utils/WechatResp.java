package cn.sharesdk.wechat.utils;

import android.os.Bundle;

public abstract class WechatResp
{
  public int f;
  public String g;
  public String h;

  public WechatResp(Bundle paramBundle)
  {
    a(paramBundle);
  }

  public abstract int a();

  public void a(Bundle paramBundle)
  {
    this.f = paramBundle.getInt("_wxapi_baseresp_errcode");
    this.g = paramBundle.getString("_wxapi_baseresp_errstr");
    this.h = paramBundle.getString("_wxapi_baseresp_transaction");
  }

  public void b(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", a());
    paramBundle.putInt("_wxapi_baseresp_errcode", this.f);
    paramBundle.putString("_wxapi_baseresp_errstr", this.g);
    paramBundle.putString("_wxapi_baseresp_transaction", this.h);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.WechatResp
 * JD-Core Version:    0.6.0
 */