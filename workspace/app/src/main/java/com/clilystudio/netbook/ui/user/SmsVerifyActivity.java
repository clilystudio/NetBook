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
    Handler a = new av(this);
    @InjectView(2131493215)
    TextView mAppNameText;
    @InjectView(2131493220)
    EditText mCodeText;
    @InjectView(2131493221)
    Button mCommitBtn;
    @InjectView(2131493216)
    TextView mGoodsText;
    @InjectView(2131493218)
    TextView mPhoneText;
    @InjectView(2131493217)
    TextView mPriceText;
    @InjectView(2131493219)
    Button mSendCodeBtn;
    private ChargePlan b;
    private Timer c;
    private TimerTask e;
    private int f;

    public static Intent a(Context paramContext, ChargePlan paramChargePlan, String paramString) {
        return new d().a(paramContext, SmsVerifyActivity.class).a("key_charge_plan_verify", paramChargePlan).a("key_charge_plan_phone", paramString).a();
    }

    private void a(int paramInt) {
        if (paramInt > 0) {
            Button localButton = this.mSendCodeBtn;
            String str = getString(2131034515);
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Integer.valueOf(paramInt);
            localButton.setText(String.format(str, arrayOfObject));
            this.mSendCodeBtn.setBackgroundResource(2130837690);
            this.mSendCodeBtn.setClickable(false);
            this.mSendCodeBtn.setEnabled(false);
        }
        while (true) {
            this.mSendCodeBtn.setTextColor(getResources().getColor(2131427548));
            return;
            if (this.e != null)
                this.e.cancel();
            this.mSendCodeBtn.setText(2131034516);
            this.mSendCodeBtn.setBackgroundResource(2130837745);
            this.mSendCodeBtn.setClickable(true);
            this.mSendCodeBtn.setEnabled(true);
        }
    }

    private void a(boolean paramBoolean) {
        Button localButton = this.mCommitBtn;
        if (paramBoolean) ;
        for (int i = 2130837693; ; i = 2130837690) {
            localButton.setBackgroundResource(i);
            this.mCommitBtn.setClickable(paramBoolean);
            this.mCommitBtn.setEnabled(paramBoolean);
            this.mCommitBtn.setTextColor(getResources().getColor(2131427548));
            return;
        }
    }

    private void b() {
        this.f = 60;
        this.e = new aw(this);
        this.c.schedule(this.e, 1000L, 1000L);
        a(this.f);
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903132);
        b("短信充值");
        ButterKnife.inject(this);
        this.b = ((ChargePlan) getIntent().getSerializableExtra("key_charge_plan_verify"));
        this.mAppNameText.setText("追书神器");
        this.mGoodsText.setText(this.b.getString());
        this.mPriceText.setText(this.b.getPrice() + "元");
        this.mPhoneText.setText(getIntent().getStringExtra("key_charge_plan_phone"));
        Button localButton = this.mSendCodeBtn;
        String str = getString(2131034515);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(60);
        localButton.setText(String.format(str, arrayOfObject));
        a(false);
        this.c = new Timer();
        b();
        this.mSendCodeBtn.setOnClickListener(new as(this));
        this.mCodeText.addTextChangedListener(new at(this));
        this.mCommitBtn.setOnClickListener(new au(this));
    }
}

