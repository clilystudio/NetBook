package cn.sharesdk.tencent.qzone;

import android.webkit.WebView;
import com.mob.tools.g;

class l extends g
{
  l(i parami)
  {
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if ((paramString != null) && (paramString.startsWith(i.b(this.a))))
      i.a(this.a, paramString);
    while (true)
    {
      return super.shouldOverrideUrlLoading(paramWebView, paramString);
      if ((paramString == null) || (!paramString.startsWith("mqzone://")))
        continue;
      i.b(this.a, paramString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qzone.l
 * JD-Core Version:    0.6.0
 */