
package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.model.BookSummary;
import java.util.List;

final class M implements DialogInterface$OnClickListener {

    M(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1, List List2, BookSummary BookSummary3)
    {
        c = UGCGuideEditBooksActivity1;
        a = List2;
        b = BookSummary3;
    }

    private List a;
    private BookSummary b;
    private UGCGuideEditBooksActivity c;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        a.remove( b );
        UGCGuideEditBooksActivity.c( c );
    }
}
