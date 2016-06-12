package com.clilystudio.netbook.ui.game;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.GameGroupRoot;
import com.clilystudio.netbook.model.Root;

final class S extends com.clilystudio.netbook.util.S {

    private GameListActivity a;

    S(GameListActivity GameListActivity1, byte byte2) {
        this(GameListActivity1);
    }

    private S(GameListActivity GameListActivity1) {
        a = GameListActivity1;
    }

    protected final Root a(ApiService ApiService1, String[] String_1darray2) {
        return (Root) ApiService1.Z(a.getIntent().getStringExtra("game_list_id"));
    }

    protected final void a(Root Root1) {
        super.a((Root) (GameGroupRoot) Root1);
        a.h();
    }

    protected final void b(Root Root1) {
        GameGroupRoot GameGroupRoot2 = (GameGroupRoot) Root1;

        if (GameGroupRoot2.getGameGroup() != null) {
            a.f();
            GameListActivity.a(a, GameGroupRoot2.getGameGroup().getGames());
        }
    }
}
