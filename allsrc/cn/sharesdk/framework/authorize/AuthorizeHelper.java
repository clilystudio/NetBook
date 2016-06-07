package cn.sharesdk.framework.authorize;

import cn.sharesdk.framework.Platform;

public abstract interface AuthorizeHelper
{
  public abstract AuthorizeListener getAuthorizeListener();

  public abstract String getAuthorizeUrl();

  public abstract b getAuthorizeWebviewClient(g paramg);

  public abstract Platform getPlatform();

  public abstract String getRedirectUri();

  public abstract SSOListener getSSOListener();

  public abstract f getSSOProcessor(e parame);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.AuthorizeHelper
 * JD-Core Version:    0.6.0
 */