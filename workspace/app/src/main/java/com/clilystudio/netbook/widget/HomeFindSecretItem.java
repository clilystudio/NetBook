package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.ui.MysteryActivity;
import com.clilystudio.netbook.util.t;
import com.umeng.a.b;

import java.util.Calendar;
import java.util.Date;

public class HomeFindSecretItem extends HomeFindItem {
    private ProgressDialog a;

    public HomeFindSecretItem(Activity activity) {
        super(activity, "\u795e\u79d8\u529f\u80fd", 2130837831, 2130837826, null);
    }

    public HomeFindSecretItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    static /* synthetic */ ProgressDialog a(HomeFindSecretItem homeFindSecretItem) {
        return homeFindSecretItem.a;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean b() {
        if (a.a(this.getContext(), "KEY_SECRET_UNLOCKED", false)) return true;
        Context context = this.getContext();
        String string = am.n((Context) context);
        String string2 = b.b(context, "switch_secret_to_random");
        if (string2 == null) return false;
        if (string2.length() <= 0) return false;
        String[] arrstring = string2.split(",");
        int n = arrstring.length;
        int n2 = 0;
        while (n2 < n) {
            if (arrstring[n2].equals(string)) {
                return true;
            }
            ++n2;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        boolean bl = true;
        if (!this.b()) {
            Context context = this.getContext();
            String string = b.b(context, "mystery_disabled_at_version");
            String string2 = b.b(context, "mystery_enable_time");
            String string3 = b.b(context, "mystery_enable_minute_range");
            int n = a.b(string, 0);
            int n2 = a.b(string3, 0);
            if (n != am.f((Context) context) && !"".equals(string2) && !"0".equals(string2)) {
                Date date = t.a((String) string2);
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                calendar.add(12, n2);
                Date date2 = calendar.getTime();
                long l = new Date().getTime();
                if (l <= date.getTime() || l >= date2.getTime()) {
                    bl = false;
                }
            } else {
                bl = false;
            }
        }
        if (!bl) {
            this.setVisibility(View.GONE);
            return;
        }
        this.setVisibility(View.VISIBLE);
        if (this.b()) {
            this.mIcon.setImageResource(2130837832);
        } else {
            this.mIcon.setImageResource(2130837831);
        }
        if (this.b()) {
            this.mTitle.setText("\u968f\u673a\u770b\u4e66");
            this.mSubFlag.setVisibility(4);
            return;
        }
        this.mTitle.setText("\u795e\u79d8\u529f\u80fd");
        this.mSubFlag.setVisibility(View.VISIBLE);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final void a(Context context, String string) {
        boolean bl = this.b();
        if (bl) {
            this.a = ProgressDialog.show(context, null, context.getString(2131034218), true, true);
            com.a.a.a.a((Context) MyApplication.a(), "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B", a.o(this.getContext()), (c) ((Object) new aa(this, context)));
        } else {
            context.startActivity(new Intent(context, MysteryActivity.class));
        }
        if (bl) {
            b.a(context, "home_find_mystery_click", "unlock");
            return;
        }
        b.a(context, "home_find_mystery_click", "lock");
    }
}
