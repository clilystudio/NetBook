package com.clilystudio.app.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.ui.BaseActivity;
import com.clilystudio.app.netbook.util.I;
import com.clilystudio.app.netbook.widget.SettingItem;

public class ReaderOptionActivity extends BaseActivity {
    private int a = 0;
    private TextView b;
    private String[] c;
    private int[] e;

    public static Intent a(Context paramContext) {
        return new d_IntentFactory().a_setClass(paramContext, ReaderOptionActivity.class).a();
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(2130903366);
        b_initContentView(2131034461);
        SwitchCompat localSwitchCompat1;
        SwitchCompat localSwitchCompat2;
        SwitchCompat localSwitchCompat3;
        SwitchCompat localSwitchCompat4;
        SwitchCompat localSwitchCompat5;
        View localView;
        int i;
        if (a.l(this, "reader_orientation")) {
            setRequestedOrientation(1);
            localSwitchCompat1 = (SwitchCompat) findViewById(2131493896);
            localSwitchCompat2 = (SwitchCompat) findViewById(2131493898);
            localSwitchCompat3 = (SwitchCompat) findViewById(2131493899);
            localSwitchCompat4 = (SwitchCompat) findViewById(2131493903);
            localSwitchCompat5 = (SwitchCompat) findViewById(2131493906);
            localView = findViewById(2131493904);
            this.b = ((TextView) findViewById(2131493905));
            this.c = getResources().getStringArray(2131361803);
            this.e = getResources().getIntArray(2131361804);
            boolean bool1 = a.l(this, "volume_keys_flip");
            boolean bool2 = a.a(this, "click_flip_animation", false);
            boolean bool3 = a.l(this, "reader_opt_full_screen");
            boolean bool4 = a.a(this, "convert_t", false);
            boolean bool5 = a.a(this, "auto_buy_chapter" + I.a, false);
            localSwitchCompat1.setChecked(bool1);
            localSwitchCompat2.setChecked(bool2);
            localSwitchCompat3.setChecked(bool3);
            localSwitchCompat4.setChecked(bool4);
            localSwitchCompat5.setChecked(bool5);
            i = a.a(this, "reader_screen_off_time", 120000);
        }
        SettingItem localSettingItem;
        for (int j = 0; ; j++)
            if (j < this.c.length) {
                if (i == this.e[j]) {
                    this.a = j;
                    this.b.setText(this.c[j]);
                }
            } else {
                localSwitchCompat1.setOnCheckedChangeListener(new bI(this, localSwitchCompat1));
                localSwitchCompat2.setOnCheckedChangeListener(new bJ(this, localSwitchCompat2));
                localSwitchCompat3.setOnCheckedChangeListener(new bK(this, localSwitchCompat3));
                localSwitchCompat4.setOnCheckedChangeListener(new bL(this, localSwitchCompat4));
                localView.setOnClickListener(new bM(this));
                localSwitchCompat5.setOnCheckedChangeListener(new bN(this, localSwitchCompat5));
                localSettingItem = (SettingItem) findViewById(2131493901);
                if (!bH.a(this))
                    break label413;
                localSettingItem.setVisibility(8);
                findViewById(2131493900).setVisibility(8);
                return;
                setRequestedOrientation(0);
                break;
            }
        label413:
        localSettingItem.setChecked(a.a(this, "key_enable_imersive_mode", false));
        localSettingItem.setCheckListener(new bO(this));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ReaderOptionActivity
 * JD-Core Version:    0.6.2
 */