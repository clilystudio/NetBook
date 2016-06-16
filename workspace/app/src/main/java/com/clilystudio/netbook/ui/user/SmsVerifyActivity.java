package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.Timer;
import java.util.TimerTask;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class SmsVerifyActivity extends BaseActivity {
    Handler a;
    TextView mAppNameText;
    EditText mCodeText;
    Button mCommitBtn;
    TextView mGoodsText;
    TextView mPhoneText;
    TextView mPriceText;
    Button mSendCodeBtn;
    private ChargePlan b;
    private Timer c;
    private TimerTask e;
    private int f;

    public SmsVerifyActivity() {
        this.a = new av(this);
    }

    public static Intent a(Context context, ChargePlan chargePlan, String string) {
        return new d().a(context, SmsVerifyActivity.class).a("key_charge_plan_verify", chargePlan).a("key_charge_plan_phone", string).a();
    }

    static /* synthetic */ void a(SmsVerifyActivity smsVerifyActivity) {
        smsVerifyActivity.b();
    }

    static /* synthetic */ void a(SmsVerifyActivity smsVerifyActivity, int n) {
        smsVerifyActivity.a(n);
    }

    static /* synthetic */ void a(SmsVerifyActivity smsVerifyActivity, boolean bl) {
        smsVerifyActivity.a(bl);
    }

    static /* synthetic */ int b(SmsVerifyActivity smsVerifyActivity) {
        return smsVerifyActivity.f;
    }

    static /* synthetic */ int c(SmsVerifyActivity smsVerifyActivity) {
        int n = smsVerifyActivity.f;
        smsVerifyActivity.f = n - 1;
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n) {
        if (n > 0) {
            Button button = this.mSendCodeBtn;
            String string = this.getString(R.string.sms_verify_input_resend);
            Object[] arrobject = new Object[]{n};
            button.setText(String.format(string, arrobject));
            this.mSendCodeBtn.setBackgroundResource(R.drawable.bg_sms_commit_disable);
            this.mSendCodeBtn.setClickable(false);
            this.mSendCodeBtn.setEnabled(false);
        } else {
            if (this.e != null) {
                this.e.cancel();
            }
            this.mSendCodeBtn.setText(R.string.sms_verify_input_send);
            this.mSendCodeBtn.setBackgroundResource(R.drawable.common_btn_green_bg);
            this.mSendCodeBtn.setClickable(true);
            this.mSendCodeBtn.setEnabled(true);
        }
        this.mSendCodeBtn.setTextColor(this.getResources().getColor(R.color.white));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        Button button = this.mCommitBtn;
        int n = bl ? R.drawable.bg_sms_commit_selector : R.drawable.bg_sms_commit_disable;
        button.setBackgroundResource(n);
        this.mCommitBtn.setClickable(bl);
        this.mCommitBtn.setEnabled(bl);
        this.mCommitBtn.setTextColor(this.getResources().getColor(R.color.white));
    }

    private void b() {
        this.f = 60;
        this.e = new aw(this);
        this.c.schedule(this.e, 1000, 1000);
        this.a(this.f);
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_sms_verify);
        this.b("\u77ed\u4fe1\u5145\u503c");
        this.mCodeText = (EditText) findViewById(R.id.sms_verify_code);
        this.mAppNameText = (TextView) findViewById(R.id.sms_verify_appname);
        this.mGoodsText = (TextView) findViewById(R.id.sms_verify_goods);
        this.mPriceText = (TextView) findViewById(R.id.sms_verify_price);
        this.mPhoneText = (TextView) findViewById(R.id.sms_verify_phone);
        this.mSendCodeBtn = (Button) findViewById(R.id.sms_verify_sendcode);
        this.mCommitBtn = (Button) findViewById(R.id.sms_verify_commit);
        this.b = (ChargePlan) this.getIntent().getSerializableExtra("key_charge_plan_verify");
        this.mAppNameText.setText("\u8ffd\u4e66\u795e\u5668");
        this.mGoodsText.setText(this.b.getString());
        this.mPriceText.setText("" + this.b.getPrice() + "\u5143");
        this.mPhoneText.setText(this.getIntent().getStringExtra("key_charge_plan_phone"));
        Button button = this.mSendCodeBtn;
        String string = this.getString(R.string.sms_verify_input_resend);
        Object[] arrobject = new Object[]{60};
        button.setText(String.format(string, arrobject));
        this.a(false);
        this.c = new Timer();
        this.b();
        this.mSendCodeBtn.setOnClickListener(new as(this));
        this.mCodeText.addTextChangedListener(new at(this));
        this.mCommitBtn.setOnClickListener(new au(this));
    }
}
