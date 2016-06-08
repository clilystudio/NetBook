package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationRoot;

final class bw extends e<String, Void, NotificationRoot> {
    private bw(NotifFragment paramNotifFragment) {
    }

    private NotificationRoot a(String[] paramArrayOfString) {
        if (!isCancelled()) {
            String str = "";
            try {
                if ((NotifFragment.k(this.a) != null) && (NotifFragment.k(this.a).size() > 0))
                    str = ((NotificationItem) NotifFragment.k(this.a).get(-1 + NotifFragment.k(this.a).size())).getCreated();
                if (this.a.a() == NotifFragment.Type.IMPORTANT) {
                    NotifFragment.g(this.a);
                    return b.b().r(paramArrayOfString[0], str);
                }
                NotifFragment.g(this.a);
                NotificationRoot localNotificationRoot = b.b().s(paramArrayOfString[0], str);
                return localNotificationRoot;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        }
        return null;
    }
}

