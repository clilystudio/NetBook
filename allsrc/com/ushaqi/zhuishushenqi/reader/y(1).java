package com.ushaqi.zhuishushenqi.reader;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity.Source;

final class y
  implements View.OnClickListener
{
  y(o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = AuthLoginActivity.a(o.a(this.a));
    localIntent.putExtra("KEY_SOURCE", AuthLoginActivity.Source.HOME);
    o.a(this.a).startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.y
 * JD-Core Version:    0.6.0
 */