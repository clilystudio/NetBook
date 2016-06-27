package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class ShareRemoveAdActivity extends BaseActivity {
    public static Intent a(Context context, String string) {
        return new d().a(context, ShareRemoveAdActivity.class).a("entrance_type", string).a();
    }

    static /* synthetic */ void a(ShareRemoveAdActivity shareRemoveAdActivity) {
        new cb(shareRemoveAdActivity, new cf(shareRemoveAdActivity)).a().show();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(ShareRemoveAdActivity shareRemoveAdActivity, int n) {
        // share book
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (a.i()) {
            this.getWindow().setFlags(67108864, 67108864);
            this.a().a((Drawable) new ColorDrawable(Color.parseColor("#00000000")));
        }
        this.setContentView(R.layout.activity_share_remove_ad);
        this.b(R.string.share_remove_ad);
        this.findViewById(R.id.btn_share).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (am.e() == null) {
                    ShareRemoveAdActivity.this.startActivity(AuthLoginActivity.a(ShareRemoveAdActivity.this));
                } else {
                    ShareRemoveAdActivity.a(ShareRemoveAdActivity.this);
                }
                String string = ShareRemoveAdActivity.this.getIntent().getStringExtra("entrance_type");
                MiStatInterface.recordCountEvent("share_remove_btn_click", string);
            }
        });
    }
}
