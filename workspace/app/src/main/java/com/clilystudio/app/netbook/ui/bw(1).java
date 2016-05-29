package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.NotificationItem;
import com.clilystudio.app.netbook.model.NotificationRoot;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bw
 * JD-Core Version:    0.6.2
 */