package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameLayoutRoot$ModuleLayout;

import java.util.List;

import butterknife.ButterKnife;

public class GameMicroItemSection extends TableLayout {

    TableLayout mContainer;
    private boolean a = false;
    public GameMicroItemSection(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public final void a() {
        View View1 = LayoutInflater.from(getContext()).inflate(2130903383, (ViewGroup) mContainer, false);

        mContainer.addView(View1);
    }

    public final void a(int int1) {
        int int2;

        for (int2 = 0; int2 < int1; ++int2) {
            Object Object3 = (ViewGroup) LayoutInflater.from(getContext()).inflate(2130903384, (ViewGroup) mContainer, false);

            mContainer.addView((View) Object3);
        }
    }

    public final void a(GameLayoutRoot$ModuleLayout ModuleLayout1) {
        List List2;
        int int3;
        int int4;

        ((TextView) findViewById(2131493576)).setText((CharSequence) ModuleLayout1.getGameGroup().getName());
        List2 = ModuleLayout1.getGameGroup().getGames();
        int3 = Math.min(List2.size(), 9);
        for (int4 = 0; int4 < int3 && mContainer.getChildCount() > int4 / 3; int4 += 3) {
            List List5 = List2.subList(int4, Math.min(int4 + 3, List2.size()));
            ViewGroup ViewGroup6 = (ViewGroup) mContainer.getChildAt(int4 / 3);

            if (List5 != null && ViewGroup6 != null) {
                int int7;
                int int8;

                for (int7 = 0; int7 < List5.size(); ++int7) {
                    GameMicroLayoutItemView GameMicroLayoutItemView9 = (GameMicroLayoutItemView) ViewGroup6.getChildAt(int7);
                    Game Game10;

                    GameMicroLayoutItemView9.setVisibility(0);
                    GameMicroLayoutItemView9.setHasPlayed(a);
                    Game10 = (Game) List5.get(int7);
                    GameMicroLayoutItemView9.mTitle.setText((CharSequence) Game10.getName());
                    GameMicroLayoutItemView9.mSubTitle.setVisibility(8);
                    if (GameMicroLayoutItemView9.a)
                        GameMicroLayoutItemView9.mAction.setPlayedView();
                    else
                        GameMicroLayoutItemView9.mAction.setH5View();
                    GameMicroLayoutItemView9.mImage.setImageUrl(Game10.getIcon());
                    GameMicroLayoutItemView9.mImage.a(Game10);
                    GameMicroLayoutItemView9.setOnClickListener((View$OnClickListener) new P(GameMicroLayoutItemView9, Game10));
                    GameMicroLayoutItemView9.mAction.setOnClickListener((View$OnClickListener) new Q(GameMicroLayoutItemView9, Game10));
                }
                for (int8 = List5.size(); int8 < 3; ++int8)
                    ViewGroup6.getChildAt(int8).setVisibility(4);
            }
        }
        requestLayout();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject((View) this);
    }

    public void setHasPlayed(boolean boolean1) {
        a = boolean1;
    }
}
