
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PayVoucherRecord;
import com.clilystudio.netbook.model.PayVoucherRecord$Voucher;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class af extends com.clilystudio.netbook.a.e {

    public af(PayVoucherFragment PayVoucherFragment1, boolean boolean2)
    {
        b = PayVoucherFragment1;
        a = true;
        a = false;
    }

    private boolean a;
    private PayVoucherFragment b;

    public af(PayVoucherFragment PayVoucherFragment1)
    {
        b = PayVoucherFragment1;
        a = true;
        a = true;
    }

    private transient List a()
    {
        try
        {
            int int2 = b.getArguments().getInt( "tag_index_key" );
            String String3 = b.getArguments().getString( "token_key" );
            PayVoucherRecord PayVoucherRecord5;

            com.clilystudio.netbook.api.b.a();
            PayVoucherRecord5 = com.clilystudio.netbook.api.b.b().a( String3, PayVoucherFragment.d( b )[int2], PayVoucherFragment.a( b ).size(), 10 );
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (List) Object1;
        boolean boolean3;

        super.onPostExecute( Object2 );
        PayVoucherFragment.b( b ).setVisibility( 8 );
        PayVoucherFragment.e( b ).setVisibility( 8 );
        PayVoucherFragment.f( b ).setVisibility( 8 );
        PayVoucherFragment.g( b ).n();
        boolean3 = PayVoucherFragment.a( b ).isEmpty();
        if( Object2 != null )
        {
            int int4;

            if( !a )
                PayVoucherFragment.a( b ).clear();
            int4 = ((List) Object2).size();
            if( int4 > 0 )
            {
                PayVoucherFragment.a( b ).addAll( (Collection) Object2 );
                PayVoucherFragment.h( b ).a( PayVoucherFragment.a( b ) );
                if( int4 >= 10 )
                {
                    PayVoucherFragment.g( b ).setOnLastItemVisibleListener( PayVoucherFragment.i( b ) );
                    return;
                }
            }
            else if( boolean3 )
            {
                PayVoucherFragment.b( b ).setVisibility( 0 );
                return;
            }
            PayVoucherFragment.g( b ).setOnLastItemVisibleListener( null );
        }
        else
        {
            PayVoucherFragment.g( b ).setOnLastItemVisibleListener( PayVoucherFragment.i( b ) );
            com.clilystudio.netbook.util.e.a( (Activity) b.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
        }
    }
}
