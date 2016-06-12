
package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.umeng.a.b;
import com.clilystudio.netbook.ui.ShareRemoveAdActivity;

final class ai implements View$OnClickListener {

    ai(RemoveAdActivity RemoveAdActivity1)
    {
        a = RemoveAdActivity1;
    }

    private RemoveAdActivity a;

    public final void onClick(View View1)
    {
        Intent Intent2 = ShareRemoveAdActivity.a( (Context) a, "removeAd" );

        a.startActivity( Intent2 );
        b.a( (Context) a, "share_remove_entrance_click", "removeAd" );
    }
}
