
package com.clilystudio.netbook.util.adutil;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import com.clilystudio.netbook.model.Advert;
import uk.me.lewisdeane.ldialogs.h;

public class BaseShelfAd extends Advert {

    protected Object response;
    public int showCount;

    public String getDownloadTitle(Context Context1)
    {
        return null;
    }

    public boolean isApk()
    {
        return false;
    }

    public void onAdClick(View View1)
    {
    }

    public void processClick(View View1)
    {
        Context Context2 = View1.getContext();

        if( isApk() )
        {
            h h3 = new h( Context2 );

            h3.e = getDownloadTitle( Context2 );
            h3.a( true ).a( "\u786E\u8BA4", (DialogInterface$OnClickListener) new j( this, View1, Context2 ) ).b( "\u53D6\u6D88", (DialogInterface$OnClickListener) new i( this ) ).b();
        }
        else
            onAdClick( View1 );
        recordClick( View1 );
    }

    public void recordClick(View View1)
    {
    }

    public void recordDownload(Context Context1)
    {
    }

    public void recordShow(Context Context1)
    {
    }

    public void setResponse(Object Object1)
    {
        response = Object1;
    }
}
