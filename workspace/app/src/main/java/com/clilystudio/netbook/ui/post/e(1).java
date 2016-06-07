package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.clilystudio.netbook.model.ReplyeeInfo;

final class e
  implements View.OnClickListener
{
  e(AbsPostActivity paramAbsPostActivity, ReplyeeInfo paramReplyeeInfo, EditText paramEditText)
  {
  }

  public final void onClick(View paramView)
  {
    this.c.a(this.a, this.b.getText().toString());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.e
 * JD-Core Version:    0.6.0
 */