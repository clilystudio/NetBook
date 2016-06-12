package com.clilystudio.netbook.umeng.update;

import android.content.Context;

final class j implements Runnable {

    private Context a;

    public j(Context Context1) {
        a = Context1;
    }

    public final void run() {
        UpdateResponse UpdateResponse3;

        try {
            UpdateResponse3 = new n(a).a();
        } catch (Exception Exception2) {
            b.a(1, null);
            u.a.b.a("update", "request update error", Exception2);
            return;
        } catch (Error Error1) {
            u.a.b.a("update", new StringBuilder("request update error").append(Error1.getMessage()).toString());
            return;
        }
        label_29:
        {
            if (UpdateResponse3 == null) {
                try {
                    b.a(3, null);
                } catch (Exception Exception4) {
                    b.a(1, null);
                    u.a.b.a("update", "request update error", Exception4);
                    return;
                } catch (Error Error5) {
                    u.a.b.a("update", new StringBuilder("request update error").append(Error5.getMessage()).toString());
                    return;
                }
            } else {
                try {
                    if (UpdateResponse3.hasUpdate)
                        break label_29;
                    b.a(1, UpdateResponse3);
                } catch (Exception Exception6) {
                    b.a(1, null);
                    u.a.b.a("update", "request update error", Exception6);
                    return;
                } catch (Error Error7) {
                    u.a.b.a("update", new StringBuilder("request update error").append(Error7.getMessage()).toString());
                    return;
                }
            }
            return;
        }
        try {
            b.a(0, UpdateResponse3);
        } catch (Exception Exception8) {
            b.a(1, null);
            u.a.b.a("update", "request update error", Exception8);
            return;
        } catch (Error Error9) {
            u.a.b.a("update", new StringBuilder("request update error").append(Error9.getMessage()).toString());
            return;
        }
    }
}
