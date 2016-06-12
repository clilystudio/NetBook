package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextWatcher;
import android.view.View$OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.Timer;
import java.util.TimerTask;

import butterknife.ButterKnife;

public class SmsVerifyActivity extends BaseActivity {

    TextView mAppNameText;
    EditText mCodeText;
    Button mCommitBtn;
    TextView mGoodsText;
    TextView mPhoneText;
    TextView mPriceText;
    Button mSendCodeBtn;
    Handler a = new av(this);
    private ChargePlan b;
    private Timer c;
    private TimerTask e;
    private int f;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, ChargePlan ChargePlan2, String String3) {
    }

    static void a(SmsVerifyActivity SmsVerifyActivity1) {
        SmsVerifyActivity1.b();
    }

    static void a(SmsVerifyActivity SmsVerifyActivity1, int int2) {
        SmsVerifyActivity1.a(int2);
    }

    static void a(SmsVerifyActivity SmsVerifyActivity1, boolean boolean2) {
        SmsVerifyActivity1.a(boolean2);
    }

    static int b(SmsVerifyActivity SmsVerifyActivity1) {
        return SmsVerifyActivity1.f;
    }

    static int c(SmsVerifyActivity SmsVerifyActivity1) {
        int int2 = SmsVerifyActivity1.f;

        SmsVerifyActivity1.f = int2 - 1;
        return int2;
    }

    private void a(int int1) {
        if (int1 > 0) {
            Button Button3 = mSendCodeBtn;
            String String4 = getString(2131034515);
            Object[] Object_1darray5 = new Object[1];

            Object_1darray5[0] = Integer.valueOf(int1);
            Button3.setText((CharSequence) String.format(String4, Object_1darray5));
            mSendCodeBtn.setBackgroundResource(2130837690);
            mSendCodeBtn.setClickable(false);
            mSendCodeBtn.setEnabled(false);
        } else {
            if (e != null)
                e.cancel();
            mSendCodeBtn.setText(2131034516);
            mSendCodeBtn.setBackgroundResource(2130837745);
            mSendCodeBtn.setClickable(true);
            mSendCodeBtn.setEnabled(true);
        }
        mSendCodeBtn.setTextColor(getResources().getColor(2131427548));
    }

    private void a(boolean boolean1) {
        Button Button2 = mCommitBtn;
        int int3;

        if (boolean1)
            int3 = 2130837693;
        else
            int3 = 2130837690;
        Button2.setBackgroundResource(int3);
        mCommitBtn.setClickable(boolean1);
        mCommitBtn.setEnabled(boolean1);
        mCommitBtn.setTextColor(getResources().getColor(2131427548));
    }

    private void b() {
        f = 60;
        e = (TimerTask) new aw(this);
        c.schedule(e, 1000L, 1000L);
        a(f);
    }

    protected void onCreate(Bundle Bundle1) {
        Button Button2;
        String String3;
        Object[] Object_1darray4;

        super.onCreate(Bundle1);
        setContentView(2130903132);
        b("\u77ED\u4FE1\u5145\u503C");
        ButterKnife.inject((Activity) this);
        b = (ChargePlan) getIntent().getSerializableExtra("key_charge_plan_verify");
        mAppNameText.setText((CharSequence) "\u8FFD\u4E66\u795E\u5668");
        mGoodsText.setText((CharSequence) b.getString());
        mPriceText.setText((CharSequence) new StringBuilder().append(b.getPrice()).append("\u5143").toString());
        mPhoneText.setText((CharSequence) getIntent().getStringExtra("key_charge_plan_phone"));
        Button2 = mSendCodeBtn;
        String3 = getString(2131034515);
        Object_1darray4 = new Object[1];
        Object_1darray4[0] = Integer.valueOf(60);
        Button2.setText((CharSequence) String.format(String3, Object_1darray4));
        a(false);
        c = new Timer();
        b();
        mSendCodeBtn.setOnClickListener((View$OnClickListener) new as(this));
        mCodeText.addTextChangedListener((TextWatcher) new at(this));
        mCommitBtn.setOnClickListener((View$OnClickListener) new au(this));
    }
}
