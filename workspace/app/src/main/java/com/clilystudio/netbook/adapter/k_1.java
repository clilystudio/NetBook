
package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.util.e;

final class k implements View$OnClickListener {

    k(j j1, TopicPost TopicPost2)
    {
        a = TopicPost2;
    }

    private TopicPost a;

    public final void onClick(View View1)
    {
        View1.getContext().startActivity( e.a( View1.getContext(), a.getAuthor() ) );
    }
}
