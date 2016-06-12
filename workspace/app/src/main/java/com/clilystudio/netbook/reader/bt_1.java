
package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;
import uk.me.lewisdeane.ldialogs.h;

final class bt implements View$OnClickListener {

    bt(ReaderMenuFragment ReaderMenuFragment1)
    {
        a = ReaderMenuFragment1;
    }

    ReaderMenuFragment a;     // final access specifier removed

    public final void onClick(View View1)
    {
        if( !com.clilystudio.netbook.reader.ReaderMenuFragment.j( a ).isApk() )
            ReaderMenuFragment.j( a ).onAdClick( View1 );
        else
        {
            h h2 = new h( (Context) a.getActivity() ).a( 2131034371 );

            h2.e = new StringBuilder( "\u662F\u5426\u4E0B\u8F7D" ).append( ReaderMenuFragment.j( a ).getTitle() ).append( "(\u5EFA\u8BAE\u4F7F\u7528WIFI\u4E0B\u8F7D)\uFF1F" ).toString();
            h2.a( true ).a( "\u786E\u8BA4", (DialogInterface$OnClickListener) new bv( this, View1 ) ).b( "\u53D6\u6D88", (DialogInterface$OnClickListener) new bu( this ) ).b();
        }
    }
}
