package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.NotificationRoot;

final class bx extends e<String, Void, NotificationRoot> {
    private bx(NotifFragment paramNotifFragment) {
    }

    private NotificationRoot a(String[] paramArrayOfString) {
        try {
            if (this.a.a() == NotifFragment.Type.IMPORTANT) {
                NotifFragment.g(this.a);
                return b.b().r(paramArrayOfString[0], "");
            }
            NotifFragment.g(this.a);
            NotificationRoot localNotificationRoot = b.b().s(paramArrayOfString[0], "");
            return localNotificationRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

