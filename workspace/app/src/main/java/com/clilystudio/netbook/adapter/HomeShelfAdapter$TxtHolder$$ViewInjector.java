package com.clilystudio.netbook.adapter;

import android.widget.CheckBox;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class HomeShelfAdapter$TxtHolder$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, HomeShelfAdapter$TxtHolder TxtHolder2, Object Object3) {
        TxtHolder2.title = (TextView) Finder1.findRequiredView(Object3, 2131492936, "field 'title'");
        TxtHolder2.desc = (TextView) Finder1.findRequiredView(Object3, 2131493481, "field 'desc'");
        TxtHolder2.top = Finder1.findRequiredView(Object3, 2131492978, "field 'top'");
        TxtHolder2.check = (CheckBox) Finder1.findRequiredView(Object3, 2131492900, "field 'check'");
    }

    public static void reset(HomeShelfAdapter$TxtHolder TxtHolder1) {
        TxtHolder1.title = null;
        TxtHolder1.desc = null;
        TxtHolder1.top = null;
        TxtHolder1.check = null;
    }
}
