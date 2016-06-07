package com.clilystudio.netbook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.m
 * JD-Core Version:    0.6.0
 */