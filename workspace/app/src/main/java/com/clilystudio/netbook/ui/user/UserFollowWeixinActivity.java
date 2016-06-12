package com.clilystudio.netbook.ui.user;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.os.Bundle;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.ui.BaseActivity;

public class UserFollowWeixinActivity extends BaseActivity {

    static void a(UserFollowWeixinActivity UserFollowWeixinActivity1) {
        ((ClipboardManager) UserFollowWeixinActivity1.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText((CharSequence) "simple text", (CharSequence) "\u8FFD\u4E66\u795E\u5668"));
    }

    static void b(UserFollowWeixinActivity UserFollowWeixinActivity1) {
        h h2 = new h((Context) UserFollowWeixinActivity1);

        h2.e = UserFollowWeixinActivity1.getString(2131034575);
        h2.b("\u53D6\u6D88", (DialogInterface$OnClickListener) new az(UserFollowWeixinActivity1)).a("\u786E\u5B9A", (DialogInterface$OnClickListener) new ay(UserFollowWeixinActivity1)).b();
    }

    protected void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903140);
        b(2131034576);
        findViewById(2131493232).setOnClickListener((View$OnClickListener) new ax(this));
    }
}
