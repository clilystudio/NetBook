package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.LinearLayout;

public class PostHeader extends LinearLayout {
    public PostHeader(Context paramContext) {
        super(paramContext);
        setOrientation(1);
        LayoutInflater.from(paramContext).inflate(2130903352, this);
        setLayoutParams(new AbsListView.LayoutParams(-1, -1));
    }

    public final void a() {
        findViewById(2131493842).setOnClickListener(new ao(this));
    }

    public final void a(int paramInt) {
        if (paramInt < 2)
            return;
        int[] arrayOfInt = {2131492940, 2131492941, 2131492942, 2131492943, 2131492944, 2131492945, 2131492946};
        if (paramInt >= 7)
            paramInt = 7;
        for (int i = 0; i < paramInt; i++)
            findViewById(arrayOfInt[i]).setVisibility(0);
        findViewById(arrayOfInt[(paramInt - 1)]).findViewById(2131493098).setVisibility(8);
        findViewById(2131493359).setVisibility(0);
        findViewById(2131493360).setVisibility(0);
    }

    public final void a(boolean paramBoolean) {
        findViewById(2131493842).setVisibility(8);
    }

    public final void b() {
        findViewById(2131493843).setOnClickListener(new aq(this));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.PostHeader
 * JD-Core Version:    0.6.2
 */