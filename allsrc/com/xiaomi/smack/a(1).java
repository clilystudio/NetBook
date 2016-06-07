package com.xiaomi.smack;

import android.support.design.widget.h;
import android.text.TextUtils;
import com.xiaomi.network.c;
import java.net.URI;
import java.util.ArrayList;

public final class a extends n
{
  private boolean a;
  private String b;
  private c c = null;
  private String d = "mibind.chat.gslb.mi-idc.com";

  public a(boolean paramBoolean, c paramc, int paramInt, String paramString1, String paramString2, h paramh)
  {
    super(null, 80, paramString2, null);
    this.c = paramc;
    this.a = false;
    this.b = paramString1;
  }

  public final c a()
  {
    return this.c;
  }

  public final void a(c paramc)
  {
    if (paramc != null)
    {
      this.c = paramc;
      this.d = "mibind.chat.gslb.mi-idc.com";
      if (!this.c.b().isEmpty())
      {
        String str = (String)this.c.b().get(0);
        if (!TextUtils.isEmpty(str))
          this.d = str;
      }
    }
  }

  public final String b()
  {
    return this.d;
  }

  public final URI c()
  {
    if (this.b.charAt(0) != '/')
      this.b = ("/" + this.b);
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.a);
    for (String str = "https://"; ; str = "http://")
      return new URI(str + this.d + ":" + g() + this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.a
 * JD-Core Version:    0.6.0
 */