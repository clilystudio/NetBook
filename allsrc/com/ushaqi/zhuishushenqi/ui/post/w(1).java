package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class w
  implements View.OnClickListener
{
  w(AddGirlTopicActivity paramAddGirlTopicActivity, Dialog paramDialog, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    String str1 = AddGirlTopicActivity.c(this.c).getText().toString().trim();
    String str2 = AddGirlTopicActivity.d(this.c).getText().toString().trim();
    z localz = new z(this.c, this.c, 2131034430);
    String[] arrayOfString = new String[3];
    arrayOfString[0] = this.b;
    arrayOfString[1] = str1;
    arrayOfString[2] = str2;
    localz.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.w
 * JD-Core Version:    0.6.0
 */