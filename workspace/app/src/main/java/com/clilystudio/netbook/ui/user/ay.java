
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import com.clilystudio.netbook.util.e;

final class ay implements DialogInterface$OnClickListener {

    ay(UserFollowWeixinActivity UserFollowWeixinActivity1)
    {
        a = UserFollowWeixinActivity1;
    }

    private UserFollowWeixinActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        if( !com.clilystudio.netbook.pay.weixin.a.a( (Context) a ) )
            e.a( (Activity) a, 2131034303 );
        else
        {
            Intent Intent3 = a.getPackageManager().getLaunchIntentForPackage( "com.tencent.mm" );

            a.startActivity( Intent3 );
        }
    }
}
