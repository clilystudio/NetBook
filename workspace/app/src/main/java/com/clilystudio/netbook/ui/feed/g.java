
package com.clilystudio.netbook.ui.feed;

import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.n;

final class g implements View$OnClickListener {

    g(f f1, TextView TextView2, BookReadRecord BookReadRecord3)
    {
        c = f1;
        a = TextView2;
        b = BookReadRecord3;
    }

    private TextView a;
    private BookReadRecord b;
    private f c;

    public final void onClick(View View1)
    {
        f.a( c, a );
        b.setFeeding( false );
        b.setFeedFat( false );
        BookReadRecord.addAccountInfo( b );
        b.save();
        i.a().c( new n( b.getBookId() ) );
    }
}
