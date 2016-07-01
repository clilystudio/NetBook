package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.MaskAbleImageView;
import com.xiaomi.mistatistic.sdk.MiStatInterfaceImpl;

public class HomeFindItem extends FrameLayout {
    MaskAbleImageView mIcon;
    ImageView mSubFlag;
    TextView mSubText;
    TextView mTitle;
    private Intent a;

    public HomeFindItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HomeFindItem(final Context context, final String string, int n, int n2, Intent intent) {
        super(context);
        this.a = intent;
        LayoutInflater.from(context).inflate(R.layout.list_item_home_find, this);
        this.mIcon = (MaskAbleImageView) findViewById(R.id.icon);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mSubFlag = (ImageView) findViewById(R.id.sub_flag);
        this.mSubText = (TextView) findViewById(R.id.sub_flag_text);
        this.mIcon.setImageResource(n);
        this.mTitle.setText(string);
        if (n2 != 0) {
            this.mSubFlag.setImageResource(n2);
        }
        this.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                HomeFindItem.this.a(context, string);
            }
        });
    }

    public HomeFindItem(Context context, String string, int n, Intent intent) {
        this(context, string, n, 0, intent);
    }

    protected void a(Context context, String string) {
        context.startActivity(this.a);
        MiStatInterfaceImpl.recordCountEvent("home_find_item_click", string);
    }
}
