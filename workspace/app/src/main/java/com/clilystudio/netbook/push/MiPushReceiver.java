package com.clilystudio.netbook.push;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.a.b;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.mipush.sdk.MiPushCommandMessage;
import com.xiaomi.mipush.sdk.MiPushMessage;
import com.xiaomi.mipush.sdk.PushMessageReceiver;

import java.util.List;
import java.util.regex.Pattern;

public class MiPushReceiver extends PushMessageReceiver {

    @Override
    public final void onReceivePassThroughMessage(Context context, MiPushMessage miPushMessage) {
        System.out.println("message = " + miPushMessage.getExtra());
        String content = miPushMessage.getContent();
        if (!TextUtils.isEmpty(content) && Pattern.compile("\\w+:\\w+").matcher(content).find()) {
            InsideLinkIntent insideLinkIntent = new InsideLinkIntent(context, b.a(content));
            insideLinkIntent.putExtra("EXTRA_OPEN_HOME_WHEN_CLOSE", true);
            insideLinkIntent.setFlags(Intent.FLAG_RECEIVER_FOREGROUND);
            context.startActivity(insideLinkIntent);
        }
    }

    @Override
    public final void onCommandResult(Context context, MiPushCommandMessage miPushCommandMessage) {
        String command = miPushCommandMessage.getCommand();
        List<String> commandArguments = miPushCommandMessage.getCommandArguments();
        String pushId = commandArguments != null && commandArguments.size() > 0 ? commandArguments.get(0) : null;
        long resultCode = miPushCommandMessage.getResultCode();
        if (MiPushClient.COMMAND_SUBSCRIBE_TOPIC.equals(command)) {
            if (pushId != null) {
                if (resultCode == ErrorCode.SUCCESS) {
                    BookSubRecord.delete(pushId);
                } else {
                    System.out.println("PUSH SUB ERROR: " + resultCode);
                }
            }
        } else if (MiPushClient.COMMAND_UNSUBSCRIBE_TOPIC.equals(command)) {
            if (pushId != null) {
                if (resultCode == ErrorCode.SUCCESS) {
                    BookUnSubRecord.delete(pushId);
                } else {
                    System.out.println("PUSH UN SUB ERROR: " + resultCode);
                }
            }
        }
    }
}
