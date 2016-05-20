package com.clilystudio.app.netbook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.app.netbook.model.PostComment;
import com.clilystudio.app.netbook.ui.post.AbsPostActivity;

final class m
  implements DialogInterface.OnClickListener
{
  m(CommentItemView paramCommentItemView, PostComment paramPostComment)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    CommentItemView.a(this.b).a(this.a.toRepliedInfo(), CommentItemView.d(this.b));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.m
 * JD-Core Version:    0.6.2
 */