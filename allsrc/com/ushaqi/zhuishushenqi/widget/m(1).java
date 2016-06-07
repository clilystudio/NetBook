package com.ushaqi.zhuishushenqi.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ushaqi.zhuishushenqi.model.PostComment;
import com.ushaqi.zhuishushenqi.ui.post.AbsPostActivity;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.m
 * JD-Core Version:    0.6.0
 */