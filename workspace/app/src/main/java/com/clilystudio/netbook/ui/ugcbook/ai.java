
package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.ah;
import android.support.v7.widget.ao;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.model.UgcFilterRoot$FilterGroup;
import com.clilystudio.netbook.util.D;
import java.io.IOException;

final class ai extends e {

    ai(UGCMainActivity UGCMainActivity1, byte byte2)
    {
        this( UGCMainActivity1 );
    }

    private UGCMainActivity a;

    private ai(UGCMainActivity UGCMainActivity1)
    {
        a = UGCMainActivity1;
    }

    private transient UgcFilterRoot a()
    {
        UgcFilterRoot UgcFilterRoot2;

        try
        {
            UgcFilterRoot2 = com.clilystudio.netbook.api.b.b().o();
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            return null;
        }
        return UgcFilterRoot2;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (UgcFilterRoot) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((UgcFilterRoot) Object2).isOk() && ((UgcFilterRoot) Object2).getData() != null )
        {
            UGCMainActivity.a( a, new ak( a, (Context) a, ((UgcFilterRoot) Object2).getData() ) );
            UGCMainActivity.c( a ).setLayoutManager( (ao) new D( (Context) a ) );
            UGCMainActivity.c( a ).setAdapter( (ah) UGCMainActivity.d( a ) );
        }
    }
}
