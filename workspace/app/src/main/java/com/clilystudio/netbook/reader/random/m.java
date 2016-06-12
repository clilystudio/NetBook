
package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class m implements DialogInterface$OnClickListener {

    m(ReaderRandomActivity ReaderRandomActivity1)
    {
        a = ReaderRandomActivity1;
    }

    private ReaderRandomActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        a.finish();
    }
}
