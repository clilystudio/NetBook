package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.I;
import com.clilystudio.netbook.widget.SettingItem;

public class ReaderOptionActivity extends BaseActivity {
    private int a = 0;
    private TextView b;
    private String[] c;
    private int[] e;

    static /* synthetic */ int a(ReaderOptionActivity readerOptionActivity, int n) {
        readerOptionActivity.a = n;
        return n;
    }

    public static Intent a(Context context) {
        return new d().a(context, ReaderOptionActivity.class).a();
    }

    static /* synthetic */ void a(ReaderOptionActivity readerOptionActivity) {
        h h2 = new h(readerOptionActivity);
        int[] arrn = new int[]{2131493977, 2131493978, 2131493979, 2131493980};
        View view = readerOptionActivity.getLayoutInflater().inflate(2130903385, null, false);
        AlertDialog alertDialog = h2.a(2131034438).a(view).b("\u53d6\u6d88", null).a();
        ((RadioGroup) view.findViewById(2131493976)).check(arrn[readerOptionActivity.a]);
        for (int i = 0; i < 4; ++i) {
            ((RadioButton) view.findViewById(arrn[i])).setOnClickListener(new bP(readerOptionActivity, alertDialog, i));
        }
        alertDialog.show();
    }

    static /* synthetic */ void a(ReaderOptionActivity readerOptionActivity, View view, boolean bl) {
        if (bl) {
            view.setContentDescription("\u5df2\u5f00\u542f");
            return;
        }
        view.setContentDescription("\u5df2\u5173\u95ed");
    }

    static /* synthetic */ int b(ReaderOptionActivity readerOptionActivity) {
        return readerOptionActivity.a;
    }

    static /* synthetic */ String[] c(ReaderOptionActivity readerOptionActivity) {
        return readerOptionActivity.c;
    }

    static /* synthetic */ TextView d(ReaderOptionActivity readerOptionActivity) {
        return readerOptionActivity.b;
    }

    static /* synthetic */ int[] e(ReaderOptionActivity readerOptionActivity) {
        return readerOptionActivity.e;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onCreate(Bundle var1_1) {
        super.onCreate(var1_1);
        this.setContentView(2130903366);
        this.b(2131034461);
        if (a.l(this, "reader_orientation")) {
            this.setRequestedOrientation(1);
        } else {
            this.setRequestedOrientation(0);
        }
        var2_2 = (SwitchCompat) this.findViewById(2131493896);
        var3_3 = (SwitchCompat) this.findViewById(2131493898);
        var4_4 = (SwitchCompat) this.findViewById(2131493899);
        var5_5 = (SwitchCompat) this.findViewById(2131493903);
        var6_6 = (SwitchCompat) this.findViewById(2131493906);
        var7_7 = this.findViewById(2131493904);
        this.b = (TextView) this.findViewById(2131493905);
        this.c = this.getResources().getStringArray(2131361803);
        this.e = this.getResources().getIntArray(2131361804);
        var8_8 = a.l(this, "volume_keys_flip");
        var9_9 = a.a((Context) this, "click_flip_animation", false);
        var10_10 = a.l(this, "reader_opt_full_screen");
        var11_11 = a.a((Context) this, "convert_t", false);
        var12_12 = a.a((Context) this, "auto_buy_chapter" + I.a, false);
        var2_2.setChecked(var8_8);
        var3_3.setChecked(var9_9);
        var4_4.setChecked(var10_10);
        var5_5.setChecked(var11_11);
        var6_6.setChecked(var12_12);
        var13_13 = a.a((Context) this, "reader_screen_off_time", 120000);
        var14_14 = 0;
        do {
            if (var14_14 >= this.c.length)**GOTO lbl34
            if (var13_13 == this.e[var14_14]) {
                this.a = var14_14;
                this.b.setText(this.c[var14_14]);
                lbl34:
                // 2 sources:
                var2_2.setOnCheckedChangeListener(new bI(this, var2_2));
                var3_3.setOnCheckedChangeListener(new bJ(this, var3_3));
                var4_4.setOnCheckedChangeListener(new bK(this, var4_4));
                var5_5.setOnCheckedChangeListener(new bL(this, var5_5));
                var7_7.setOnClickListener(new bM(this));
                var6_6.setOnCheckedChangeListener(new bN(this, var6_6));
                var15_15 = (SettingItem) this.findViewById(2131493901);
                if (!bH.a(this)) break;
                var15_15.setVisibility(View.GONE);
                this.findViewById(2131493900).setVisibility(View.GONE);
                return;
            }
            ++var14_14;
        } while (true);
        var15_15.setChecked(a.a((Context) this, "key_enable_imersive_mode", false));
        var15_15.setCheckListener(new bO(this));
    }
}
