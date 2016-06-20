package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class bx extends com.clilystudio.netbook.a_pack.e<String, Void, NotificationRoot> {
    private /* synthetic */ NotifFragment a;

    private bx(NotifFragment notifFragment) {
        this.a = notifFragment;
    }

    /* synthetic */ bx(NotifFragment notifFragment, byte by) {
        this(notifFragment);
    }

    private /* varargs */ NotificationRoot a(String... arrstring) {
        try {
            if (this.a.a() == NotifFragment$Type.IMPORTANT) {
                NotifFragment.g(this.a);
                return b.b().r(arrstring[0], "");
            }
            NotifFragment.g(this.a);
            NotificationRoot notificationRoot = b.b().s(arrstring[0], "");
            return notificationRoot;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
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
        NotifFragment.a(this.a).setVisibility(View.GONE);
        NotifFragment.h(this.a).setVisibility(View.GONE);
        NotifFragment.i(this.a).setVisibility(View.GONE);
        NotifFragment.b(this.a).setVisibility(View.GONE);
        NotifFragment.d(this.a).n();
        NotifFragment.d(this.a).setOnLastItemVisibleListener(NotifFragment.j(this.a));
        if (notificationRoot != null && notificationRoot.isOk()) {
            NotifFragment.a(this.a, 0);
            NotifFragment.k(this.a).clear();
            int n = notificationRoot.getNotifications().length;
            List<NotificationItem> list = Arrays.asList(notificationRoot.getNotifications());
            NotifFragment.a(this.a, NotifFragment.l(this.a) + list.size());
            NotifFragment.k(this.a).addAll(list);
            NotifFragment.f(this.a).a(NotifFragment.k(this.a));
            if (n >= 100) return;
            NotifFragment.d(this.a).setOnLastItemVisibleListener(null);
            if (n != 0) return;
            NotifFragment.a(this.a).setVisibility(View.VISIBLE);
            NotifFragment.a(this.a).setText("\u6ca1\u6709\u6d88\u606f");
            NotifFragment.b(this.a).setVisibility(View.GONE);
            return;
        }
        if (notificationRoot != null && "TOKEN_INVALID".equals(notificationRoot.getCode())) {
            this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
            e.a((Activity) this.a.getActivity(), R.string.tweet_token_invalid);
            return;
        }
        NotifFragment.m(this.a);
    }
}
