package cn.sharesdk.framework.authorize;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;

class c
  implements View.OnClickListener
{
  c(RegisterView paramRegisterView)
  {
  }

  public void onClick(View paramView)
  {
    try
    {
      int i = a.e(paramView.getContext(), "ssdk_website");
      String str = null;
      if (i > 0)
        str = paramView.getResources().getString(i);
      if (!TextUtils.isEmpty(str))
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        paramView.getContext().startActivity(localIntent);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.c
 * JD-Core Version:    0.6.0
 */