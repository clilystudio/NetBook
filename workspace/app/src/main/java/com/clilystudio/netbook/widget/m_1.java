
package com.clilystudio.netbook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.model.ReplyeeInfo;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class m implements DialogInterface$OnClickListener {

    m(CommentItemView CommentItemView1, PostComment PostComment2)
    {
        b = CommentItemView1;
        a = PostComment2;
    }

    private PostComment a;
    private CommentItemView b;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        CommentItemView.a( b ).a( a.toRepliedInfo(), CommentItemView.d( b ) );
    }
}
