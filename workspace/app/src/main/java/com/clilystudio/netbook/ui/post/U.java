package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

final class U
  implements DialogInterface.OnClickListener
{
  U(AddVoteItemActivity paramAddVoteItemActivity, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AddVoteItemActivity.a(this.b, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.U
 * JD-Core Version:    0.6.0
 */