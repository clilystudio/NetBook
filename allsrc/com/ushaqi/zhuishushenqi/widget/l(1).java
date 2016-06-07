package com.ushaqi.zhuishushenqi.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ushaqi.zhuishushenqi.model.PostComment;
import com.ushaqi.zhuishushenqi.model.PostComment.PostCommentReply;
import com.ushaqi.zhuishushenqi.ui.post.AbsPostActivity;

final class l
  implements DialogInterface.OnClickListener
{
  l(CommentItemView paramCommentItemView, String[] paramArrayOfString, PostComment paramPostComment)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((this.a.length == 2) && (paramInt == 0))
    {
      String str1 = CommentItemView.a(this.c).n();
      String str2 = this.b.getReplyTo().get_id();
      new o(this.c, CommentItemView.a(this.c)).b(new String[] { str1, str2 });
    }
    while (true)
    {
      CommentItemView.a(this.c).k();
      return;
      if ((this.a.length != 1) && (paramInt != 1))
        continue;
      CommentItemView.a(this.c).a(this.b.get_id());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.l
 * JD-Core Version:    0.6.0
 */