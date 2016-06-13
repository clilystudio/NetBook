package com.clilystudio.netbook.ui.game;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.GameDownloadButton;

final class al
        extends W<Game> {
    public al(GameRankListFragment gameRankListFragment, LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903277);
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        Game game = (Game) object;
        SmartImageView smartImageView = (SmartImageView) this.a(0, SmartImageView.class);
        smartImageView.setDrawingCacheEnabled(true);
        smartImageView.setImageUrl(game.getIcon(), 2130837766);
        this.a(1, game.getName());
        this.a(2, game.getShortIntro());
        this.a(3, "" + game.getFollowers() + "\u4eba\u5728\u73a9");
        GameDownloadButton gameDownloadButton = (GameDownloadButton) this.a(4, GameDownloadButton.class);
        gameDownloadButton.setGame(game);
        gameDownloadButton.a(game.getDownloadStatus());
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493655, 2131493659, 2131493657, 2131493660, 2131493658};
    }
}
