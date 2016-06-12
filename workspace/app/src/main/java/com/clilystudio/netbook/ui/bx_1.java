package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class bx extends com.clilystudio.netbook.a.e {

    private NotifFragment a;

    bx(NotifFragment NotifFragment1, byte byte2) {
        this(NotifFragment1);
    }

    private bx(NotifFragment NotifFragment1) {
        a = NotifFragment1;
    }

    private transient NotificationRoot a(String[] String_1darray1) {
        NotificationRoot NotificationRoot4;

        try {
            if (a.a() == NotifFragment$Type.IMPORTANT) {
                NotifFragment.g(a);
                return com.clilystudio.netbook.api.b.b().r(String_1darray1[0], "");
            } else {
                NotifFragment.g(a);
                NotificationRoot4 = com.clilystudio.netbook.api.b.b().s(String_1darray1[0], "");
            }
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return NotificationRoot4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (NotificationRoot) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            NotifFragment.a(a).setVisibility(8);
            NotifFragment.h(a).setVisibility(8);
            NotifFragment.i(a).setVisibility(8);
            NotifFragment.b(a).setVisibility(8);
            NotifFragment.d(a).n();
            NotifFragment.d(a).setOnLastItemVisibleListener(NotifFragment.j(a));
            if (Object2 != null && ((NotificationRoot) Object2).isOk()) {
                int int4;
                Object Object5;

                NotifFragment.a(a, 0);
                NotifFragment.k(a).clear();
                int4 = ((NotificationRoot) Object2).getNotifications().length;
                Object5 = Arrays.asList(((NotificationRoot) Object2).getNotifications());
                NotifFragment.a(a, NotifFragment.l(a) + ((List) Object5).size());
                NotifFragment.k(a).addAll((Collection) Object5);
                NotifFragment.f(a).a(NotifFragment.k(a));
                if (int4 < 100) {
                    NotifFragment.d(a).setOnLastItemVisibleListener(null);
                    if (int4 == 0) {
                        NotifFragment.a(a).setVisibility(0);
                        NotifFragment.a(a).setText((CharSequence) "\u6CA1\u6709\u6D88\u606F");
                        NotifFragment.b(a).setVisibility(8);
                    }
                }
            } else {
                if (Object2 != null && "TOKEN_INVALID".equals(((NotificationRoot) Object2).getCode())) {
                    a.startActivity(AuthLoginActivity.a((Context) a.getActivity()));
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), 2131034547);
                } else
                    NotifFragment.m(a);
                return;
            }
        }
    }
}
