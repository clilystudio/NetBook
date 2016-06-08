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
    public final void a(Context paramContext, MiPushMessage paramMiPushMessage) {
        int i = 1;
        System.out.println("message = " + paramMiPushMessage.getExtra());
        String str = paramMiPushMessage.getContent();
        new b();
        while (true) {
            if ((TextUtils.isEmpty(str)) || (!Pattern.compile("\\w+:\\w+").matcher(str).find()) || (i != 0)) ;
            try {
                InsideLinkIntent localInsideLinkIntent = new InsideLinkIntent(paramContext, b.a(str));
                localInsideLinkIntent.putExtra("EXTRA_OPEN_HOME_WHEN_CLOSE", true);
                localInsideLinkIntent.setFlags(268435456);
                paramContext.startActivity(localInsideLinkIntent);
                return;
                i = 0;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
        }
    }

    public final void a(MiPushCommandMessage paramMiPushCommandMessage) {
        String str1 = paramMiPushCommandMessage.getCommand();
        List localList = paramMiPushCommandMessage.getCommandArguments();
        String str2;
        String str3;
        if ((localList != null) && (localList.size() > 0)) {
            str2 = (String) localList.get(0);
            boolean bool = d.a.equals(str1);
            str3 = null;
            if (!bool)
                break label99;
        }
        while (true) {
            label52:
            long l = paramMiPushCommandMessage.getResultCode();
            if ((str2 != null) && (l == 0L))
                BookSubRecord.delete(str2);
            while (true) {
                if ((str3 == null) || (l != 0L))
                    break label145;
                BookUnSubRecord.delete(str3);
                return;
                str2 = null;
                break;
                label99:
                if (!d.b.equals(str1))
                    break label169;
                str3 = str2;
                str2 = null;
                break label52;
                System.out.println("PUSH SUB ERROR: " + l);
            }
            label145:
            System.out.println("PUSH UN SUB ERROR: " + l);
            return;
            label169:
            str2 = null;
            str3 = null;
        }
    }
}

