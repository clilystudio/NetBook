package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;

import com.clilystudio.netbook.db.DownloadItem;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.util.y;

import java.io.File;

public class UshaqiSecretDownloadButton extends AbsDownloadButton {
    public UshaqiSecretDownloadButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void e() {
        if (this.a().getPackageName() != null) {
            new DownloadItem(this.a().getPackageName()).save();
        }
    }

    @Override
    protected final void b() {
        this.e();
        new y((Context) ((Activity) this.getContext()), this.a()).a();
    }

    @Override
    protected final void c() {
        Intent intent = new Intent("android.intent.action.VIEW_DOWNLOADS");
        intent.setFlags(268435456);
        try {
            this.getContext().startActivity(intent);
            return;
        } catch (ActivityNotFoundException var3_2) {
            return;
        }
    }

    @Override
    protected final void d() {
        this.e();
        a.a(this.getContext(), new File(Uri.parse(this.a().getLocalFileUri()).getPath()));
    }
}
