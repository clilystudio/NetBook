
package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class F implements DialogInterface$OnClickListener {

    F(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1)
    {
        a = UGCGuideAddCollectionActivity1;
    }

    private UGCGuideAddCollectionActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        a.finish();
    }
}
