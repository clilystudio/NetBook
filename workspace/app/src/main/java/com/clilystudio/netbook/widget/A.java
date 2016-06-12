
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.Game;
import java.io.File;

final class A implements View$OnClickListener {

    A(GameDownloadButton GameDownloadButton1, byte byte2)
    {
        this( GameDownloadButton1 );
    }

    private GameDownloadButton a;

    private A(GameDownloadButton GameDownloadButton1)
    {
        a = GameDownloadButton1;
    }

    public final void onClick(View View1)
    {
        if( com.clilystudio.netbook.hpay100.a.a.a( a.getContext(), new File( Uri.parse( GameDownloadButton.a( a ).getLocalFileUri() ).getPath() ) ) )
            GameDownloadButton.b( a );
        else
        {
            GameDownloadButton.a( a ).setDownloadStatus( 0 );
            a.a( 0 );
        }
    }
}
