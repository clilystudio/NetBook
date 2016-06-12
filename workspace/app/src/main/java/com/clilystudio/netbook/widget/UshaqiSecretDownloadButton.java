
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.model.AppItem;
import com.clilystudio.netbook.util.y;
import java.io.File;

public class UshaqiSecretDownloadButton extends AbsDownloadButton {

    public UshaqiSecretDownloadButton(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private void e()
    {
        if( a().getPackageName() != null )
            new DownloadItem( a().getPackageName() ).save();
    }

    protected final void b()
    {
        e();
        new y( (Context) (Activity) getContext(), a() ).a();
    }

    protected final void c()
    {
        Intent Intent1 = new Intent( "android.intent.action.VIEW_DOWNLOADS" );

        Intent1.setFlags( 268435456 );
        try
        {
            getContext().startActivity( Intent1 );
        }
        catch( ActivityNotFoundException ActivityNotFoundException3 )
        {
            return;
        }
    }

    protected final void d()
    {
        e();
        com.clilystudio.netbook.hpay100.a.a.a( getContext(), new File( Uri.parse( a().getLocalFileUri() ).getPath() ) );
    }
}
