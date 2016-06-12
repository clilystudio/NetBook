package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

import cn.sharesdk.framework.ShareSDK;

public class AddBookHelpActivity extends BaseActivity {

    private EditText a;
    private EditText b;

    static boolean a(AddBookHelpActivity AddBookHelpActivity1) {
        String String2 = AddBookHelpActivity1.a.getText().toString().trim();
        String String3 = AddBookHelpActivity1.b.getText().toString().trim();

        if (com.clilystudio.netbook.hpay100.a.a.Q(String2))
            com.clilystudio.netbook.util.e.a((Activity) AddBookHelpActivity1, "\u8BF7\u8F93\u5165\u6807\u9898");
        else if (String2.length() < 4)
            com.clilystudio.netbook.util.e.a((Activity) AddBookHelpActivity1, "\u6807\u9898\u6587\u5B57\u592A\u5C11\u4E86\u54E6");
        else {
            if (!com.clilystudio.netbook.hpay100.a.a.Q(String3))
                return true;
            com.clilystudio.netbook.util.e.a((Activity) AddBookHelpActivity1, "\u8BF7\u8F93\u5165\u6B63\u6587");
        }
        return false;
    }

    static void b(AddBookHelpActivity AddBookHelpActivity1) {
        Account Account2 = am.e();

        if (Account2 == null) {
            com.clilystudio.netbook.util.e.a((Activity) AddBookHelpActivity1, "\u8BF7\u767B\u5F55\u540E\u518D\u53D1\u5E03");
            AddBookHelpActivity1.startActivity(AuthLoginActivity.a((Context) AddBookHelpActivity1));
        } else {
            String String3 = Account2.getToken();
            h h4 = new h((Context) AddBookHelpActivity1);
            View View5 = LayoutInflater.from((Context) AddBookHelpActivity1).inflate(2130903202, null);
            Object Object8;

            ((TextView) View5.findViewById(2131493422)).setText(2131034586);
            h4.d = "\u53D1\u5E03";
            h4.a(2131034583, null);
            h4.b(2131034129, (DialogInterface$OnClickListener) new j(AddBookHelpActivity1));
            Object8 = h4.a(View5).b();
            ((Button) ((Dialog) Object8).findViewById(16908313)).setOnClickListener((View$OnClickListener) new k(AddBookHelpActivity1, (Dialog) Object8, String3));
        }
    }

    static EditText c(AddBookHelpActivity AddBookHelpActivity1) {
        return AddBookHelpActivity1.a;
    }

    static EditText d(AddBookHelpActivity AddBookHelpActivity1) {
        return AddBookHelpActivity1.b;
    }

    public void onBackPressed() {
        int int1 = 1;
        String String2 = a.getText().toString();
        String String3 = b.getText().toString();

        if (com.clilystudio.netbook.hpay100.a.a.Q(String2) && com.clilystudio.netbook.hpay100.a.a.Q(String3))
            int1 = 0;
        if (int1 != 0) {
            h h4 = new h((Context) this);

            h4.d = "\u63D0\u793A";
            h4.e = "\u79BB\u5F00\u5C06\u4E22\u5931\u5DF2\u8F93\u5165\u7684\u5185\u5BB9\uFF0C\u786E\u5B9A\u79BB\u5F00\uFF1F";
            h4.b("\u7559\u5728\u6B64\u9875", (DialogInterface$OnClickListener) new l(this));
            h4.a("\u79BB\u5F00", (DialogInterface$OnClickListener) new m(this));
            h4.a().show();
        } else
            super.onBackPressed();
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903074);
        a(2131034286, 2131034448, (aa) new i(this));
        ShareSDK.initSDK((Context) this);
        a = (EditText) findViewById(2131493065);
        b = (EditText) findViewById(2131493066);
    }
}
