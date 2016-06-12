
package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.X;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCBookListRoot$UGCBook;
import java.util.Iterator;
import java.util.List;

public class MyUGCListFragment extends AbsUGCListFragment {

    protected final UGCBookListRoot a(Account Account1, int int2)
    {
        com.clilystudio.netbook.api.b.a();
        return com.clilystudio.netbook.api.b.b().g( Account1.getToken(), int2 );
    }

    protected final String c()
    {
        return "\u8FD9\u91CC\u8FD8\u6CA1\u6709\u4E66\u5355\uFF0C\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427";
    }

    public void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        com.clilystudio.netbook.event.i.a().a( this );
    }

    public void onDestroy()
    {
        super.onDestroy();
        com.clilystudio.netbook.event.i.a().b( this );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
    }

    public void onUpdateUgcList(J J1)
    {
        if( i != null && c != null )
        {
            Iterator Iterator2 = i.iterator();

            while( Iterator2.hasNext() )
            {
                UGCBookListRoot$UGCBook UGCBook3 = (UGCBookListRoot$UGCBook) Iterator2.next();

                if( !UGCBook3.get_id().equals( J1.b() ) )
                    continue;
                UGCBook3.setCover( J1.a() );
                UGCBook3.setTitle( J1.c() );
                UGCBook3.setDesc( J1.d() );
                UGCBook3.setBookCount( J1.e() );
            }
            c.notifyDataSetChanged();
        }
    }
}
