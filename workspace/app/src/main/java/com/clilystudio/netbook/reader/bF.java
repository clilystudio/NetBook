
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.ChineseAllPromRoot$Prom;
import com.clilystudio.netbook.widget.j;

final class bF implements View$OnClickListener {

    public bF(ReaderMixActivity ReaderMixActivity1, ChineseAllPromRoot ChineseAllPromRoot2)
    {
        b = ReaderMixActivity1;
        a = ChineseAllPromRoot2;
    }

    private ChineseAllPromRoot a;
    private ReaderMixActivity b;

    public final void onClick(View View1)
    {
        if( a != null && a.getProm() != null )
        {
            String String2 = a.getProm().getLink();

            new j( (Context) b, String2 ).a();
        }
    }
}
