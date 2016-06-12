
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.model.CommentDetail;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.ui.post.f;
import com.clilystudio.netbook.util.e;

final class o extends f {

    public o(CommentItemView CommentItemView1, Activity Activity2)
    {
        super( Activity2 );
        a = CommentItemView1;
    }

    private CommentItemView a;

    public final void a(CommentDetail CommentDetail1)
    {
        if( CommentDetail1 != null && CommentDetail1.getComment() != null )
            CommentItemView.a( a, CommentDetail1.getComment() );
        else
            e.a( (Activity) a.getContext(), "\u697C\u5C42\u4E0D\u5B58\u5728" );
    }
}
