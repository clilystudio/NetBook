package com.clilystudio.netbook.ui.user;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.os.Bundle;

import com.clilystudio.netbook.ui.BaseActivity;

public class UserFollowWeixinActivity extends BaseActivity {
    static /* synthetic */ void a(UserFollowWeixinActivity userFollowWeixinActivity) {
        ((ClipboardManager) userFollowWeixinActivity.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("simple text", "\u8ffd\u4e66\u795e\u5668"));
    }

    static /* synthetic */ void b(UserFollowWeixinActivity userFollowWeixinActivity) {
        h h2 = new h(userFollowWeixinActivity);
        h2.e = userFollowWeixinActivity.getString(2131034575);
        h2.b("\u53d6\u6d88", (DialogInterface.OnClickListener) new az(userFollowWeixinActivity)).a("\u786e\u5b9a", (DialogInterface.OnClickListener) new ay(userFollowWeixinActivity)).b();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903140);
        this.b(2131034576);
        this.findViewById(2131493232).setOnClickListener(new ax(this));
    }
}
