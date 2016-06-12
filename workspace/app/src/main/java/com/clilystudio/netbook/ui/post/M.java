
package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class M implements DialogInterface$OnClickListener {

    M(AddVoteActivity AddVoteActivity1)
    {
    }

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
    }
}
