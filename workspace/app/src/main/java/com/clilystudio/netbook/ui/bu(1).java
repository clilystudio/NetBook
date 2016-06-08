package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;

final class bu
        implements AdapterView.OnItemClickListener {
    bu(NotifFragment paramNotifFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        if (paramInt < NotifFragment.e(this.a).getHeaderViewsCount()) ;
        label108:
        while (true) {
            return;
            int i = paramInt - NotifFragment.e(this.a).getHeaderViewsCount();
            int j = NotifFragment.f(this.a).getItemViewType(i);
            if ((j == 0) || (j == 2)) ;
            for (int k = 1; ; k = 0) {
                if (k != 0)
                    break label108;
                Intent localIntent = NotifBinderFactory.create(NotifFragment.f(this.a).a(i)).getIntent(this.a.getActivity());
                if (localIntent == null)
                    break;
                this.a.startActivity(localIntent);
                return;
            }
        }
    }
}

