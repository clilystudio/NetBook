
package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class O implements DialogInterface$OnClickListener {

    O(AddVoteActivity AddVoteActivity1)
    {
        a = AddVoteActivity1;
    }

    private AddVoteActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        a.finish();
    }
}
