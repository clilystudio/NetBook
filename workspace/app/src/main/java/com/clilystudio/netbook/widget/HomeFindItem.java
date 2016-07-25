package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;

public class HomeFindItem extends FrameLayout {
    private MaskAbleImageView mIcon;
    private TextView mTitle;
    private Intent mIntent;

    public HomeFindItem(final Context context, String title, int icon, Intent intent) {
        super(context);
        mIntent = intent;
        LayoutInflater.from(context).inflate(R.layout.list_item_home_find, this);
        mIcon = (MaskAbleImageView) findViewById(R.id.icon);
        mTitle = (TextView) findViewById(R.id.title);
        mIcon.setImageResource(icon);
        mTitle.setText(title);
        setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                context.startActivity(mIntent);
            }
        });
    }
}
