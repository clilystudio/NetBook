package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

import cn.sharesdk.framework.ShareSDK;

public class AddBookHelpActivity extends BaseActivity {
    private EditText a;
    private EditText b;

    static /* synthetic */ boolean a(AddBookHelpActivity addBookHelpActivity) {
        String string = addBookHelpActivity.a.getText().toString().trim();
        String string2 = addBookHelpActivity.b.getText().toString().trim();
        if (a.Q(string)) {
            e.a((Activity) addBookHelpActivity, (String) "\u8bf7\u8f93\u5165\u6807\u9898");
            return false;
        }
        if (string.length() < 4) {
            e.a((Activity) addBookHelpActivity, (String) "\u6807\u9898\u6587\u5b57\u592a\u5c11\u4e86\u54e6");
            return false;
        }
        if (a.Q(string2)) {
            e.a((Activity) addBookHelpActivity, (String) "\u8bf7\u8f93\u5165\u6b63\u6587");
            return false;
        }
        return true;
    }

    static /* synthetic */ void b(final AddBookHelpActivity addBookHelpActivity) {
        Account account = am.e();
        if (account == null) {
            e.a((Activity) addBookHelpActivity, (String) "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03");
            addBookHelpActivity.startActivity(AuthLoginActivity.a(addBookHelpActivity));
            return;
        }
        final String token = account.getToken();
        h h2 = new h(addBookHelpActivity);
        View view = LayoutInflater.from(addBookHelpActivity).inflate(R.layout.dialog_waring_text, null);
        ((TextView) view.findViewById(R.id.waring_content)).setText(R.string.waring_dialog_help);
        h2.d = "\u53d1\u5e03";
        h2.a(R.string.vote_ok, null);
        h2.b(R.string.cancel, (DialogInterface.OnClickListener) ((Object) new j(addBookHelpActivity)));
        final AlertDialog alertDialog = h2.a(view).b();
        ((Button) alertDialog.findViewById(16908313)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                alertDialog.dismiss();
                String string = AddBookHelpActivity.c(addBookHelpActivity).getText().toString().trim();
                String string2 = AddBookHelpActivity.d(addBookHelpActivity).getText().toString().trim();
                n n2 = new n(addBookHelpActivity, addBookHelpActivity, R.string.post_publish_loading);
                String[] arrstring = new String[]{token, string, string2};
                n2.b(arrstring);
           }
        });
    }

    static /* synthetic */ EditText c(AddBookHelpActivity addBookHelpActivity) {
        return addBookHelpActivity.a;
    }

    static /* synthetic */ EditText d(AddBookHelpActivity addBookHelpActivity) {
        return addBookHelpActivity.b;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        boolean bl = true;
        String string = this.a.getText().toString();
        String string2 = this.b.getText().toString();
        if (a.Q(string) && a.Q(string2)) {
            bl = false;
        }
        if (bl) {
            h h2 = new h(this);
            h2.d = "\u63d0\u793a";
            h2.e = "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f";
            h2.b("\u7559\u5728\u6b64\u9875", (DialogInterface.OnClickListener) new l(this));
            h2.a("\u79bb\u5f00", (DialogInterface.OnClickListener) new m(this));
            h2.a().show();
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_add_book_help_content);
        this.a(R.string.add_book_help_title, R.string.publish, (aa) ((Object) new i(this)));
        ShareSDK.initSDK(this);
        this.a = (EditText) this.findViewById(R.id.add_book_help_content_title);
        this.b = (EditText) this.findViewById(R.id.add_book_help_content_desc);
    }
}
