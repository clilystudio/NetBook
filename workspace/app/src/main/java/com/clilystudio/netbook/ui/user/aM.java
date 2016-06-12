
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.util.e;

final class aM implements View$OnClickListener {

    aM(UserTaskActivity UserTaskActivity1)
    {
        a = UserTaskActivity1;
    }

    private UserTaskActivity a;

    public final void onClick(View View1)
    {
        Intent Intent2 = new Intent( "android.intent.action.VIEW" );

        Intent2.setData( Uri.parse( new StringBuilder( "market://details?id=" ).append( a.getPackageName() ).toString() ) );
        try
        {
            a.startActivityForResult( Intent2, 2 );
        }
        catch( ActivityNotFoundException ActivityNotFoundException4 )
        {
            e.a( (Activity) a, "\u6253\u5F00\u5E94\u7528\u5E02\u573A\u5931\u8D25" );
            return;
        }
    }
}
