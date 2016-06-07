package cn.sharesdk.framework.authorize;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

class d extends WebChromeClient
{
  d(RegisterView paramRegisterView, int paramInt)
  {
  }

  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    super.onProgressChanged(paramWebView, paramInt);
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)RegisterView.a(this.b).getLayoutParams();
    localLayoutParams.width = (paramInt * this.a / 100);
    RegisterView.a(this.b).setLayoutParams(localLayoutParams);
    if ((paramInt > 0) && (paramInt < 100))
    {
      RegisterView.a(this.b).setVisibility(0);
      return;
    }
    RegisterView.a(this.b).setVisibility(8);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.d
 * JD-Core Version:    0.6.0
 */