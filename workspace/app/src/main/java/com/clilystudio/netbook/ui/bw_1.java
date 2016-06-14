package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class bw
        extends com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot> {
    private /* synthetic */ NotifFragment a;

    private bw(NotifFragment notifFragment) {
        this.a = notifFragment;
    }

    /* synthetic */ bw(NotifFragment notifFragment, byte by) {
        this(notifFragment);
    }

    private /* varargs */ NotificationRoot a(String... arrstring) {
        if (!this.isCancelled()) {
            String string = "";
            try {
                if (NotifFragment.k(this.a) != null && NotifFragment.k(this.a).size() > 0) {
                    string = ((NotificationItem) NotifFragment.k(this.a).get(-1 + NotifFragment.k(this.a).size())).getCreated();
                }
                if (this.a.a() == NotifFragment$Type.IMPORTANT) {
                    NotifFragment.g(this.a);
                    return b.b().r(arrstring[0], string);
                }
                NotifFragment.g(this.a);
                NotificationRoot notificationRoot = b.b().s(arrstring[0], string);
                return notificationRoot;
            } catch (Exception var3_4) {
                var3_4.printStackTrace();
            }
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        NotificationRoot notificationRoot = (NotificationRoot) object;
        super.onPostExecute(notificationRoot);
        if (this.a.getActivity() == null) return;
        NotifFragment.b(this.a).setVisibility(8);
        NotifFragment.a(this.a).setVisibility(8);
        NotifFragment.h(this.a).setVisibility(8);
        NotifFragment.i(this.a).setVisibility(8);
        NotifFragment.d(this.a).n();
        if (this.isCancelled()) return;
        if (notificationRoot != null && notificationRoot.isOk()) {
            int n = notificationRoot.getNotifications().length;
            List<NotificationItem> list = Arrays.asList(notificationRoot.getNotifications());
            NotifFragment.a(this.a, NotifFragment.l(this.a) + list.size());
            NotifFragment.k(this.a).addAll(list);
            NotifFragment.f(this.a).a(NotifFragment.k(this.a));
            if (n > 0) {
                if (n >= 100) {
                    if (n != 100) return;
                    NotifFragment.d(this.a).setOnLastItemVisibleListener(NotifFragment.j(this.a));
                    return;
                }
            } else if (NotifFragment.l(this.a) == 0) {
                NotifFragment.a(this.a).setVisibility(0);
                NotifFragment.a(this.a).setText("\u4f60\u8fd8\u6ca1\u6709\u6d88\u606f");
                NotifFragment.b(this.a).setVisibility(8);
            }
            NotifFragment.d(this.a).setOnLastItemVisibleListener(null);
            return;
        }
        if (notificationRoot != null && "TOKEN_INVALID".equals(notificationRoot.getCode())) {
            this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
            e.a((Activity) this.a.getActivity(), 2131034547);
            return;
        }
        NotifFragment.d(this.a).setOnLastItemVisibleListener(NotifFragment.j(this.a));
        NotifFragment.m(this.a);
    }
}
