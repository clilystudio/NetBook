package com.clilystudio.netbook.adapter;

import android.widget.CheckBox;
import android.widget.TextView;

import butterknife.ButterKnife$Finder;

public class HomeShelfAdapter$TxtHolder$$ViewInjector {
    public static void inject(ButterKnife$Finder butterKnife$Finder, HomeShelfAdapter$TxtHolder homeShelfAdapter$TxtHolder, Object object) {
        homeShelfAdapter$TxtHolder.title = (TextView) butterKnife$Finder.findRequiredView(object, 2131492936, "field 'title'");
        homeShelfAdapter$TxtHolder.desc = (TextView) butterKnife$Finder.findRequiredView(object, 2131493481, "field 'desc'");
        homeShelfAdapter$TxtHolder.top = butterKnife$Finder.findRequiredView(object, 2131492978, "field 'top'");
        homeShelfAdapter$TxtHolder.check = (CheckBox) butterKnife$Finder.findRequiredView(object, 2131492900, "field 'check'");
    }

    public static void reset(HomeShelfAdapter$TxtHolder homeShelfAdapter$TxtHolder) {
        homeShelfAdapter$TxtHolder.title = null;
        homeShelfAdapter$TxtHolder.desc = null;
        homeShelfAdapter$TxtHolder.top = null;
        homeShelfAdapter$TxtHolder.check = null;
    }
}
