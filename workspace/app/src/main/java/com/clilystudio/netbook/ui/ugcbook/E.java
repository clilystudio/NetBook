
package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.os.AsyncTask;

final class E implements DialogInterface$OnClickListener {

    E(UGCGuideAddCollectionActivity UGCGuideAddCollectionActivity1)
    {
        a = UGCGuideAddCollectionActivity1;
    }

    private UGCGuideAddCollectionActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        new G( a ).b( new Void[0] );
    }
}
