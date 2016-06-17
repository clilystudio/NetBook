package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

import cn.sharesdk.framework.ShareSDK;

public class AddGamePostActivity extends BaseActivity {
    private EditText a;

    public static Intent a(Context context, String string) {
        return new d().a(context, AddGamePostActivity.class).a("post_game_id", string).a();
    }

    static /* synthetic */ boolean a(AddGamePostActivity addGamePostActivity) {
        if (a.Q(addGamePostActivity.a.getText().toString().trim())) {
            e.a((Activity) addGamePostActivity, (String) "\u8bf7\u8f93\u5165\u6b63\u6587");
            return false;
        }
        return true;
    }

    static /* synthetic */ void b(final AddGamePostActivity addGamePostActivity) {
        Account account = am.e();
        if (account == null) {
            e.a((Activity) addGamePostActivity, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03");
            addGamePostActivity.startActivity(AuthLoginActivity.a(addGamePostActivity));
            return;
        }
        if (account.getUser().getLv() >= 2) {
            final String token = account.getToken();
            h h2 = new h(addGamePostActivity);
            View view = LayoutInflater.from(addGamePostActivity).inflate(R.layout.dialog_waring_text, null);
            ((TextView) view.findViewById(R.id.waring_content)).setText(R.string.waring_dialog_game_post);
            h2.d = "\u53d1\u5e03";
            h2.a(R.string.vote_ok, null);
            h2.b(R.string.cancel, (DialogInterface.OnClickListener) ((Object) new p(addGamePostActivity)));
            final AlertDialog alertDialog = h2.a(view).b();
            ((Button) alertDialog.findViewById(16908313)).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    alertDialog.dismiss();
                    String string = addGamePostActivity.getIntent().getStringExtra("post_game_id");
                    String string2 = AddGamePostActivity.c(addGamePostActivity).getText().toString().trim();
                    t t2 = new t(addGamePostActivity, addGamePostActivity, R.string.post_publish_loading);
                    String[] arrstring = new String[]{token, string, string2};
                    t2.b(arrstring);
                }
            });
            return;
        }
        e.a((Activity) addGamePostActivity, (String) "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f");
    }

    static /* synthetic */ EditText c(AddGamePostActivity addGamePostActivity) {
        return addGamePostActivity.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        boolean bl = !a.Q(this.a.getText().toString());
        if (bl) {
            h h2 = new h(this);
            h2.d = "\u63d0\u793a";
            h2.e = "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f";
            h2.b("\u7559\u5728\u6b64\u9875", (DialogInterface.OnClickListener) ((Object) new r(this)));
            h2.a("\u79bb\u5f00", (DialogInterface.OnClickListener) ((Object) new s(this)));
            h2.a().show();
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_add_game_post);
        this.a(R.string.add_post, R.string.publish, (aa) ((Object) new o(this)));
        ShareSDK.initSDK(this);
        this.a = (EditText) this.findViewById(R.id.add_game_post_content);
    }
}
