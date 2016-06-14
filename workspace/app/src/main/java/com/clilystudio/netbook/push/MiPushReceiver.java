package com.clilystudio.netbook.push;

import android.content.Context;
import android.text.TextUtils;

import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.a.b;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;
import com.xiaomi.mipush.sdk.d;

import java.util.List;
import java.util.regex.Pattern;

public class MiPushReceiver extends PushMessageReceiver {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final void a(Context context, MiPushMessage miPushMessage) {
        boolean bl = true;
        System.out.println("message = " + miPushMessage.getExtra());
        String string = miPushMessage.getContent();
        new b();
        if (TextUtils.isEmpty(string) || !Pattern.compile("\\w+:\\w+").matcher(string).find()) return;
        if (!bl) return;
        try {
            InsideLinkIntent insideLinkIntent = new InsideLinkIntent(context, b.a(string));
            insideLinkIntent.putExtra("EXTRA_OPEN_HOME_WHEN_CLOSE", true);
            insideLinkIntent.setFlags(268435456);
            context.startActivity(insideLinkIntent);
            return;
        } catch (Exception var7_6) {
            var7_6.printStackTrace();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a(MiPushCommandMessage miPushCommandMessage) {
        String string = miPushCommandMessage.getCommand();
        List<String> list = miPushCommandMessage.getCommandArguments();
        String string2 = list != null && list.size() > 0 ? list.get(0) : null;
        boolean bl = d.a.equals(string);
        String string3 = null;
        if (!bl) {
            if (d.b.equals(string)) {
                string3 = string2;
                string2 = null;
            } else {
                string2 = null;
                string3 = null;
            }
        }
        long l = miPushCommandMessage.getResultCode();
        if (string2 != null && l == 0) {
            BookSubRecord.delete(string2);
        } else {
            System.out.println("PUSH SUB ERROR: " + l);
        }
        if (string3 != null && l == 0) {
            BookUnSubRecord.delete(string3);
            return;
        }
        System.out.println("PUSH UN SUB ERROR: " + l);
    }
}
