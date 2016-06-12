
package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.PostComment;
import com.clilystudio.netbook.util.e;

final class A implements View$OnClickListener {

    A(z z1, PostComment PostComment2)
    {
        a = PostComment2;
    }

    private PostComment a;

    public final void onClick(View View1)
    {
        View1.getContext().startActivity( e.a( View1.getContext(), a.getAuthor() ) );
    }
}
