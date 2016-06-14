package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.regex.Pattern;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class SmsSendActivity extends BaseActivity {
    @InjectView(value = 2131493212)
    View mErrorLine;
    @InjectView(value = 2131493214)
    Button mNextBtn;
    @InjectView(value = 2131493211)
    View mNormalLine;
    @InjectView(value = 2131493210)
    EditText mNumberText;
    @InjectView(value = 2131493213)
    View mWrongText;
    private ChargePlan a;
    private String b = "^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
    private String[] c = new String[]{"0", "+86", "86", "17951", ""};

    static /* synthetic */ void a(SmsSendActivity smsSendActivity) {
        smsSendActivity.b();
    }

    static /* synthetic */ void a(SmsSendActivity smsSendActivity, boolean bl) {
        smsSendActivity.a(bl);
    }

    static /* synthetic */ boolean a(SmsSendActivity smsSendActivity, String string) {
        if (string == null) {
            return false;
        }
        return Pattern.compile(smsSendActivity.b).matcher(string).matches();
    }

    static /* synthetic */ String[] b(SmsSendActivity smsSendActivity) {
        return smsSendActivity.c;
    }

    static /* synthetic */ ChargePlan c(SmsSendActivity smsSendActivity) {
        return smsSendActivity.a;
    }

    static /* synthetic */ void d(SmsSendActivity smsSendActivity) {
        smsSendActivity.mNormalLine.setVisibility(8);
        smsSendActivity.mErrorLine.setVisibility(0);
        smsSendActivity.mWrongText.setVisibility(0);
    }

    static /* synthetic */ void e(SmsSendActivity smsSendActivity) {
        smsSendActivity.onBackPressed();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        Button button = this.mNextBtn;
        int n = bl ? 2130837693 : 2130837690;
        button.setBackgroundResource(n);
        this.mNextBtn.setClickable(bl);
        this.mNextBtn.setEnabled(bl);
        this.mNextBtn.setTextColor(this.getResources().getColor(2131427548));
    }

    private void b() {
        this.mNormalLine.setVisibility(0);
        this.mErrorLine.setVisibility(8);
        this.mWrongText.setVisibility(4);
    }

    @Override
    public void onBackPressed() {
        new h(this).a(2131034511).b(2131034510).a("\u786e\u8ba4", (DialogInterface.OnClickListener) new ar(this)).b("\u53d6\u6d88", null).b();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903131);
        this.b("\u77ed\u4fe1\u5145\u503c");
        ButterKnife.inject(this);
        this.b();
        this.a(false);
        this.a = (ChargePlan) this.getIntent().getSerializableExtra("key_charge_plan_send");
        this.mNumberText.addTextChangedListener(new ap(this));
        this.mNextBtn.setOnClickListener(new aq(this));
    }
}
