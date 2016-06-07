package com.ushaqi.zhuishushenqi.ui.user;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class aq
  implements View.OnClickListener
{
  aq(SmsSendActivity paramSmsSendActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (SmsSendActivity.a(this.a, this.a.mNumberText.getText().toString()))
    {
      Intent localIntent = SmsVerifyActivity.a(this.a, SmsSendActivity.c(this.a), this.a.mNumberText.getText().toString());
      this.a.startActivity(localIntent);
      return;
    }
    SmsSendActivity.d(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.aq
 * JD-Core Version:    0.6.0
 */