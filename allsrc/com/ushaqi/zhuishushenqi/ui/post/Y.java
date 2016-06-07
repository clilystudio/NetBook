package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Dialog;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Account;
import java.util.List;

final class Y
  implements View.OnClickListener
{
  Y(AddVoteItemActivity paramAddVoteItemActivity, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    String str = TextUtils.join(",", AddVoteItemActivity.i(this.b).toArray());
    Z localZ = new Z(this.b, this.b, 2131034430);
    String[] arrayOfString = new String[5];
    arrayOfString[0] = AddVoteItemActivity.j(this.b).getToken();
    arrayOfString[1] = AddVoteItemActivity.k(this.b);
    arrayOfString[2] = AddVoteItemActivity.l(this.b).trim();
    arrayOfString[3] = AddVoteItemActivity.m(this.b).trim();
    arrayOfString[4] = str;
    localZ.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.Y
 * JD-Core Version:    0.6.0
 */