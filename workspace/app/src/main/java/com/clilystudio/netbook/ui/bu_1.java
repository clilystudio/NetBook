
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.NotificationAdapter;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.viewbinder.notification.NotifBinder;
import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;

final class bu implements AdapterView$OnItemClickListener {

    bu(NotifFragment NotifFragment1)
    {
        a = NotifFragment1;
    }

    private NotifFragment a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        if( int3 >= NotifFragment.e( a ).getHeaderViewsCount() )
        {
            int int6 = int3 - NotifFragment.e( a ).getHeaderViewsCount();
            int int7 = NotifFragment.f( a ).getItemViewType( int6 );
            int int8;

            if( int7 == 0 || int7 == 2 )
                int8 = 1;
            else
                int8 = 0;
            if( int8 == 0 )
            {
                Intent Intent9 = NotifBinderFactory.create( NotifFragment.f( a ).a( int6 ) ).getIntent( (Context) a.getActivity() );

                if( Intent9 != null )
                {
                    a.startActivity( Intent9 );
                    return;
                }
            }
        }
    }
}
