package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class bw extends com.clilystudio.netbook.a.e {

    private NotifFragment a;

    bw(NotifFragment NotifFragment1, byte byte2) {
        this(NotifFragment1);
    }

    private bw(NotifFragment NotifFragment1) {
        a = NotifFragment1;
    }

    private transient NotificationRoot a(String[] String_1darray1) {
        if (!isCancelled()) {
            String String2 = "";

            try {
                if (NotifFragment.k(a) != null && NotifFragment.k(a).size() > 0)
                    String2 = ((NotificationItem) NotifFragment.k(a).get(-1 + NotifFragment.k(a).size())).getCreated();
                if (a.a() == NotifFragment$Type.IMPORTANT) {
                    NotifFragment.g(a);
                    return com.clilystudio.netbook.api.b.b().r(String_1darray1[0], String2);
                } else {
                    NotificationRoot NotificationRoot5;

                    NotifFragment.g(a);
                    NotificationRoot5 = com.clilystudio.netbook.api.b.b().s(String_1darray1[0], String2);
                }
            } catch (Exception Exception3) {
                Exception3.printStackTrace();
            }
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (NotificationRoot) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null) {
            NotifFragment.b(a).setVisibility(8);
            NotifFragment.a(a).setVisibility(8);
            NotifFragment.h(a).setVisibility(8);
            NotifFragment.i(a).setVisibility(8);
            NotifFragment.d(a).n();
            if (!isCancelled()) {
                if (Object2 != null && ((NotificationRoot) Object2).isOk()) {
                    int int3 = ((NotificationRoot) Object2).getNotifications().length;
                    Object Object4 = Arrays.asList(((NotificationRoot) Object2).getNotifications());

                    NotifFragment.a(a, NotifFragment.l(a) + ((List) Object4).size());
                    NotifFragment.k(a).addAll((Collection) Object4);
                    NotifFragment.f(a).a(NotifFragment.k(a));
                    if (int3 > 0) {
                        if (int3 >= 100) {
                            if (int3 == 100)
                                NotifFragment.d(a).setOnLastItemVisibleListener(NotifFragment.j(a));
                            return;
                        }
                    } else if (NotifFragment.l(a) == 0) {
                        NotifFragment.a(a).setVisibility(0);
                        NotifFragment.a(a).setText((CharSequence) "\u4F60\u8FD8\u6CA1\u6709\u6D88\u606F");
                        NotifFragment.b(a).setVisibility(8);
                    }
                    NotifFragment.d(a).setOnLastItemVisibleListener(null);
                } else if (Object2 != null && "TOKEN_INVALID".equals(((NotificationRoot) Object2).getCode())) {
                    a.startActivity(AuthLoginActivity.a((Context) a.getActivity()));
                    com.clilystudio.netbook.util.e.a((Activity) a.getActivity(), 2131034547);
                } else {
                    NotifFragment.d(a).setOnLastItemVisibleListener(NotifFragment.j(a));
                    NotifFragment.m(a);
                }
                return;
            }
        }
    }
}
