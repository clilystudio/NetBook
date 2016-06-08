package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class PostFlag extends FrameLayout {
    TextView mDistillateFlag;
    TextView mHotFlag;

    public PostFlag(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        LayoutInflater.from(paramContext).inflate(R.layout.post_flags, this);
        mDistillateFlag = (TextView) findViewById(R.id.distillate_flag);
        mHotFlag = (TextView) findViewById(R.id.hot_flag);
    }

    public static boolean b(String paramString) {
        String[] arrayOfString = {"distillate", "focus", "hot"};
        for (int i = 0; i < 3; i++)
            if (arrayOfString[i].equals(paramString))
                return true;
        return false;
    }

    public final boolean a(String paramString) {
        if (("hot".equals(paramString)) || ("focus".equals(paramString))) {
            this.mHotFlag.setVisibility(0);
            this.mDistillateFlag.setVisibility(8);
            return true;
        }
        if ("distillate".equals(paramString)) {
            this.mDistillateFlag.setVisibility(0);
            this.mHotFlag.setVisibility(8);
            return true;
        }
        return false;
    }
}

