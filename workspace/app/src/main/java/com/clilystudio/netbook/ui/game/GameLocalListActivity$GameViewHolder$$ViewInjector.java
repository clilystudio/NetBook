package com.clilystudio.netbook.ui.game;

import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.ui.SmartImageView;

import butterknife.ButterKnife.Finder;

public class GameLocalListActivity$GameViewHolder$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, GameLocalListActivity.GameViewHolder paramGameViewHolder, Object paramObject) {
        paramGameViewHolder.mContainer = paramFinder.findRequiredView(paramObject, 2131493689, "field 'mContainer'");
        paramGameViewHolder.mIcon = ((SmartImageView) paramFinder.findRequiredView(paramObject, 2131493690, "field 'mIcon'"));
        paramGameViewHolder.mName = ((TextView) paramFinder.findRequiredView(paramObject, 2131493692, "field 'mName'"));
        paramGameViewHolder.mCount = ((TextView) paramFinder.findRequiredView(paramObject, 2131493694, "field 'mCount'"));
        paramGameViewHolder.mIntro = ((TextView) paramFinder.findRequiredView(paramObject, 2131493693, "field 'mIntro'"));
        paramGameViewHolder.mPlay = ((Button) paramFinder.findRequiredView(paramObject, 2131493691, "field 'mPlay'"));
    }

    public static void reset(GameLocalListActivity.GameViewHolder paramGameViewHolder) {
        paramGameViewHolder.mContainer = null;
        paramGameViewHolder.mIcon = null;
        paramGameViewHolder.mName = null;
        paramGameViewHolder.mCount = null;
        paramGameViewHolder.mIntro = null;
        paramGameViewHolder.mPlay = null;
    }
}

