package com.alipay.b.a;

import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;

public final class e
{
  private boolean a = false;
  private String b;
  private String c;

  public e(AppListResult paramAppListResult)
  {
    if (paramAppListResult == null)
      return;
    this.a = paramAppListResult.success;
    this.b = paramAppListResult.appListData;
    this.c = paramAppListResult.appListVer;
  }

  public final boolean a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.a.e
 * JD-Core Version:    0.6.0
 */