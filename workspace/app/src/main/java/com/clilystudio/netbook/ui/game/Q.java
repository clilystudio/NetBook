package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.netbook.*;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.GameDownloadButton;

final class Q extends W<Game> {
    final /* synthetic */ GameListActivity a;

    public Q(GameListActivity gameListActivity, LayoutInflater layoutInflater) {
        this.a = gameListActivity;
        super(layoutInflater, R.layout.list_item_game_center);
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        final Game game = (Game) object;
        SmartImageView smartImageView = (SmartImageView) this.a(0, SmartImageView.class);
        smartImageView.setDrawingCacheEnabled(true);
        smartImageView.setImageUrl(game.getIcon(), R.drawable.cover_default);
        this.a(1, game.getName());
        this.a(2, game.getShortIntro());
        this.a(3, "" + game.getFollowers() + "\u4eba\u5728\u73a9");
        GameDownloadButton gameDownloadButton = (GameDownloadButton) this.a(4, GameDownloadButton.class);
        gameDownloadButton.setGame(game);
        if (GameListActivity.b(this.a)) {
            gameDownloadButton.setH5View();
            gameDownloadButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    com.clilystudio.netbook.am.a(Q.this.a, game);
                }
            });
            return;
        }
        gameDownloadButton.a(game.getDownloadStatus());
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.game_list_item_icon, R.id.game_list_item_name, R.id.game_list_item_intro, R.id.game_list_item_count, R.id.game_list_item_download};
    }
}
