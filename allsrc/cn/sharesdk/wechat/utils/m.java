package cn.sharesdk.wechat.utils;

import android.os.Bundle;

public abstract class m
{
  public String c;

  public abstract int a();

  public void a(Bundle paramBundle)
  {
    paramBundle.putInt("_wxapi_command_type", a());
    paramBundle.putString("_wxapi_basereq_transaction", this.c);
  }

  public abstract boolean b();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.m
 * JD-Core Version:    0.6.0
 */