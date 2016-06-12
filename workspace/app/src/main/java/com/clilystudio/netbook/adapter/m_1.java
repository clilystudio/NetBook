
package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.util.e;

final class m implements View$OnClickListener {

    m(l l1, DiscussSummary DiscussSummary2)
    {
        a = DiscussSummary2;
    }

    private DiscussSummary a;

    public final void onClick(View View1)
    {
        View1.getContext().startActivity( e.a( View1.getContext(), a.getAuthor() ) );
    }
}
