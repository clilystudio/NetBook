package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;

final class bu implements AdapterView$OnItemClickListener {

    private NotifFragment a;

    bu(NotifFragment NotifFragment1) {
        a = NotifFragment1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        if (int3 >= NotifFragment.e(a).getHeaderViewsCount()) {
            int int6 = int3 - NotifFragment.e(a).getHeaderViewsCount();
            int int7 = NotifFragment.f(a).getItemViewType(int6);
            int int8;

            if (int7 == 0 || int7 == 2)
                int8 = 1;
            else
                int8 = 0;
            if (int8 == 0) {
                Intent Intent9 = NotifBinderFactory.create(NotifFragment.f(a).a(int6)).getIntent((Context) a.getActivity());

                if (Intent9 != null) {
                    a.startActivity(Intent9);
                    return;
                }
            }
        }
    }
}
