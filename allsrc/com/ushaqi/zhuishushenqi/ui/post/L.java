package com.ushaqi.zhuishushenqi.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

final class L
  implements DialogInterface.OnClickListener
{
  L(AddVoteActivity paramAddVoteActivity, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    String str1 = AddVoteActivity.a(this.b).getText().toString().trim();
    String str2 = AddVoteActivity.b(this.b).getText().toString().trim();
    P localP = new P(this.b, this.b, 2131034430);
    String[] arrayOfString = new String[4];
    arrayOfString[0] = this.a;
    arrayOfString[1] = AddVoteActivity.c(this.b);
    arrayOfString[2] = str1;
    arrayOfString[3] = str2;
    localP.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.L
 * JD-Core Version:    0.6.0
 */