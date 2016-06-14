package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.viewbinder.notification.NotifBinderFactory;

final class bu implements AdapterView.OnItemClickListener {
    private /* synthetic */ NotifFragment a;

    bu(NotifFragment notifFragment) {
        this.a = notifFragment;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        if (n < NotifFragment.e(this.a).getHeaderViewsCount()) {
            return;
        }
        int n2 = n - NotifFragment.e(this.a).getHeaderViewsCount();
        int n3 = NotifFragment.f(this.a).getItemViewType(n2);
        if (n3 == 0) return;
        if (n3 == 2) {
            return;
        }
        boolean bl = false;
        if (bl) return;
        Intent intent = NotifBinderFactory.create(NotifFragment.f(this.a).a(n2)).getIntent(this.a.getActivity());
        if (intent == null) return;
        this.a.startActivity(intent);
    }
}
