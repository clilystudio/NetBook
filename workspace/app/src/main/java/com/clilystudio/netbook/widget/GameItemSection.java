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

public class GameItemSection extends TableLayout {

    TableLayout mContainer;

    public GameItemSection(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public final void a(int int1) {
        int int2;

        for (int2 = 0; int2 < int1; ++int2) {
            Object Object3 = (ViewGroup) LayoutInflater.from(getContext()).inflate(2130903382, (ViewGroup) mContainer, false);

            mContainer.addView((View) Object3);
        }
    }

    public final void a(GameLayoutRoot$ModuleLayout ModuleLayout1) {
        List List2;
        int int3;

        ((TextView) findViewById(2131493576)).setText((CharSequence) ModuleLayout1.getGameGroup().getName());
        List2 = ModuleLayout1.getGameGroup().getGames();
        for (int3 = 0; int3 < List2.size(); int3 += 3) {
            List List4 = List2.subList(int3, Math.min(int3 + 3, List2.size()));
            ViewGroup ViewGroup5 = (ViewGroup) mContainer.getChildAt(int3 / 3);
            int int6;
            int int7;

            for (int6 = 0; int6 < List4.size(); ++int6) {
                GameLayoutItemView GameLayoutItemView8 = (GameLayoutItemView) ViewGroup5.getChildAt(int6);
                Game Game9;

                GameLayoutItemView8.setVisibility(0);
                Game9 = (Game) List4.get(int6);
                GameLayoutItemView8.mTitle.setText((CharSequence) Game9.getName());
                GameLayoutItemView8.mSubTitle.setText((CharSequence) Game9.getCat());
                GameLayoutItemView8.mAction.setGame(Game9);
                GameLayoutItemView8.mAction.a(Game9.getDownloadStatus());
                GameLayoutItemView8.mImage.setImageUrl(Game9.getIcon());
                GameLayoutItemView8.mImage.a(Game9);
                GameLayoutItemView8.setOnClickListener((View$OnClickListener) new M(GameLayoutItemView8, Game9));
            }
            for (int7 = List4.size(); int7 < 3; ++int7)
                ViewGroup5.getChildAt(int7).setVisibility(4);
        }
        requestLayout();
    }

    public final void b(GameLayoutRoot$ModuleLayout ModuleLayout1) {
        List List2;
        int int3;

        ((TextView) findViewById(2131493576)).setText((CharSequence) ModuleLayout1.getGameGroup().getName());
        List2 = ModuleLayout1.getGameGroup().getGames();
        for (int3 = 0; int3 < List2.size(); int3 += 3) {
            List List4 = List2.subList(int3, Math.min(int3 + 3, List2.size()));
            ViewGroup ViewGroup5 = (ViewGroup) mContainer.getChildAt(int3 / 3);
            int int6;
            int int7;

            for (int6 = 0; int6 < List4.size(); ++int6) {
                GameLayoutItemView GameLayoutItemView8 = (GameLayoutItemView) ViewGroup5.getChildAt(int6);
                Game Game9;

                GameLayoutItemView8.setVisibility(0);
                Game9 = (Game) List4.get(int6);
                GameLayoutItemView8.mTitle.setText((CharSequence) Game9.getName());
                GameLayoutItemView8.mSubTitle.setVisibility(8);
                GameLayoutItemView8.mAction.setH5View();
                GameLayoutItemView8.mImage.setImageResource(Game9.getIconId());
                GameLayoutItemView8.setOnClickListener((View$OnClickListener) new N(GameLayoutItemView8, Game9));
                GameLayoutItemView8.mAction.setOnClickListener((View$OnClickListener) new O(GameLayoutItemView8, Game9));
            }
            for (int7 = List4.size(); int7 < 3; ++int7)
                ViewGroup5.getChildAt(int7).setVisibility(4);
        }
        requestLayout();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.inject((View) this);
    }
}
