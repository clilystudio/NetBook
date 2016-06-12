
package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.util.e;

final class i implements View$OnClickListener {

    i(h h1, BookReview BookReview2)
    {
        a = BookReview2;
    }

    private BookReview a;

    public final void onClick(View View1)
    {
        View1.getContext().startActivity( e.a( View1.getContext(), a.author ) );
    }
}
