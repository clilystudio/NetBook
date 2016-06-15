package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.Game;

import java.util.List;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class GameItemSection extends TableLayout {
    @InjectView(value = 2131493577)
    TableLayout mContainer;

    public GameItemSection(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void a(int n) {
        for (int i = 0; i < n; ++i) {
            ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(this.getContext()).inflate(2130903382, (ViewGroup) this.mContainer, false);
            this.mContainer.addView(viewGroup);
        }
    }

    public final void a(GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout) {
        ((TextView) this.findViewById(2131493576)).setText(gameLayoutRoot$ModuleLayout.getGameGroup().getName());
        List<Game> list = gameLayoutRoot$ModuleLayout.getGameGroup().getGames();
        for (int i = 0; i < list.size(); i += 3) {
            List<Game> list2 = list.subList(i, Math.min(i + 3, list.size()));
            ViewGroup viewGroup = (ViewGroup) this.mContainer.getChildAt(i / 3);
            for (int j = 0; j < list2.size(); ++j) {
                GameLayoutItemView gameLayoutItemView = (GameLayoutItemView) viewGroup.getChildAt(j);
                gameLayoutItemView.setVisibility(View.VISIBLE);
                Game game = list2.get(j);
                gameLayoutItemView.mTitle.setText(game.getName());
                gameLayoutItemView.mSubTitle.setText(game.getCat());
                gameLayoutItemView.mAction.setGame(game);
                gameLayoutItemView.mAction.a(game.getDownloadStatus());
                gameLayoutItemView.mImage.setImageUrl(game.getIcon());
                gameLayoutItemView.mImage.a(game);
                gameLayoutItemView.setOnClickListener(new M(gameLayoutItemView, game));
            }
            for (int k = list2.size(); k < 3; ++k) {
                viewGroup.getChildAt(k).setVisibility(4);
            }
        }
        this.requestLayout();
    }

    public final void b(GameLayoutRoot$ModuleLayout gameLayoutRoot$ModuleLayout) {
        ((TextView) this.findViewById(2131493576)).setText(gameLayoutRoot$ModuleLayout.getGameGroup().getName());
        List<Game> list = gameLayoutRoot$ModuleLayout.getGameGroup().getGames();
        for (int i = 0; i < list.size(); i += 3) {
            List<Game> list2 = list.subList(i, Math.min(i + 3, list.size()));
            ViewGroup viewGroup = (ViewGroup) this.mContainer.getChildAt(i / 3);
            for (int j = 0; j < list2.size(); ++j) {
                GameLayoutItemView gameLayoutItemView = (GameLayoutItemView) viewGroup.getChildAt(j);
                gameLayoutItemView.setVisibility(View.VISIBLE);
                Game game = list2.get(j);
                gameLayoutItemView.mTitle.setText(game.getName());
                gameLayoutItemView.mSubTitle.setVisibility(View.GONE);
                gameLayoutItemView.mAction.setH5View();
                gameLayoutItemView.mImage.setImageResource(game.getIconId());
                gameLayoutItemView.setOnClickListener(new N(gameLayoutItemView, game));
                gameLayoutItemView.mAction.setOnClickListener(new O(gameLayoutItemView, game));
            }
            for (int k = list2.size(); k < 3; ++k) {
                viewGroup.getChildAt(k).setVisibility(4);
            }
        }
        this.requestLayout();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContainer = (TableLayout) findViewById(2131493577);
    }
}
