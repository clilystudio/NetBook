package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.EditText;

import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.regex.Pattern;

import butterknife.ButterKnife;

public class SmsSendActivity extends BaseActivity {

    View mErrorLine;
    Button mNextBtn;
    View mNormalLine;
    EditText mNumberText;
    View mWrongText;
    private ChargePlan a;
    private String b = "^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
    private String[] c = {"0", "+86", "86", "17951", ""};

    static void a(SmsSendActivity SmsSendActivity1) {
        SmsSendActivity1.b();
    }

    static void a(SmsSendActivity SmsSendActivity1, boolean boolean2) {
        SmsSendActivity1.a(boolean2);
    }

    static boolean a(SmsSendActivity SmsSendActivity1, String String2) {
        if (String2 == null)
            return false;
        else
            return Pattern.compile(SmsSendActivity1.b).matcher((CharSequence) String2).matches();
    }

    static String[] b(SmsSendActivity SmsSendActivity1) {
        return SmsSendActivity1.c;
    }

    static ChargePlan c(SmsSendActivity SmsSendActivity1) {
        return SmsSendActivity1.a;
    }

    static void d(SmsSendActivity SmsSendActivity1) {
        SmsSendActivity1.mNormalLine.setVisibility(8);
        SmsSendActivity1.mErrorLine.setVisibility(0);
        SmsSendActivity1.mWrongText.setVisibility(0);
    }

    static void e(SmsSendActivity SmsSendActivity1) {
        SmsSendActivity1.onBackPressed();
    }

    private void a(boolean boolean1) {
        Button Button2 = mNextBtn;
        int int3;

        if (boolean1)
            int3 = 2130837693;
        else
            int3 = 2130837690;
        Button2.setBackgroundResource(int3);
        mNextBtn.setClickable(boolean1);
        mNextBtn.setEnabled(boolean1);
        mNextBtn.setTextColor(getResources().getColor(2131427548));
    }

    private void b() {
        mNormalLine.setVisibility(0);
        mErrorLine.setVisibility(8);
        mWrongText.setVisibility(4);
    }

    public void onBackPressed() {
        new h((Context) this).a(2131034511).b(2131034510).a("\u786E\u8BA4", (DialogInterface$OnClickListener) new ar(this)).b("\u53D6\u6D88", null).b();
    }

    protected void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903131);
        b("\u77ED\u4FE1\u5145\u503C");
        ButterKnife.inject((Activity) this);
        b();
        a(false);
        a = (ChargePlan) getIntent().getSerializableExtra("key_charge_plan_send");
        mNumberText.addTextChangedListener((TextWatcher) new ap(this));
        mNextBtn.setOnClickListener((View$OnClickListener) new aq(this));
    }
}
