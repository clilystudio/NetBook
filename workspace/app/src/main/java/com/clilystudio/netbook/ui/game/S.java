package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.GameGroupRoot;
import com.clilystudio.netbook.model.Root;

final class S
        extends com.clilystudio.netbook.util.S<GameGroupRoot> {
    private /* synthetic */ GameListActivity a;

    private S(GameListActivity gameListActivity) {
        this.a = gameListActivity;
    }

    /* synthetic */ S(GameListActivity gameListActivity, byte by) {
        this(gameListActivity);
    }

    @Override
    protected final /* synthetic */ Root a(ApiService apiService, String[] arrstring) {
        return apiService.Z(this.a.getIntent().getStringExtra("game_list_id"));
    }

    @Override
    protected final /* synthetic */ void a(Root root) {
        super.a((GameGroupRoot) root);
        this.a.h();
    }

    @Override
    protected final /* synthetic */ void b(Root root) {
        GameGroupRoot gameGroupRoot = (GameGroupRoot) root;
        if (gameGroupRoot.getGameGroup() != null) {
            this.a.f();
            GameListActivity.a(this.a, gameGroupRoot.getGameGroup().getGames());
        }
    }
}
