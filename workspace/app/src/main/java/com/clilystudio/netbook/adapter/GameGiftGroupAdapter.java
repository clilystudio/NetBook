package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.GameGiftGroup;
import com.clilystudio.netbook.model.GiftGame;
import com.clilystudio.netbook.model.GiftGameGift;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;
import com.clilystudio.netbook.widget.GiftGameGiftButton;

import java.util.List;

public final class GameGiftGroupAdapter extends u<GameGiftGroup> {
    private LayoutInflater a;
    private Account b;

    public GameGiftGroupAdapter(Activity activity) {
        this.a = LayoutInflater.from(activity);
        this.b = am.e();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(GameGiftGroupAdapter gameGiftGroupAdapter, GiftGame giftGame) {
        GiftGameGift[] arrgiftGameGift;
        int n;
        List list;
        block5:
        {
            list = gameGiftGroupAdapter.f();
            if (list == null || (arrgiftGameGift = giftGame.gifts) == null || arrgiftGameGift.length <= 3) {
                return;
            }
            String string = giftGame.get_id();
            for (n = 0; n < list.size(); ++n) {
                GameGiftGroup gameGiftGroup = (GameGiftGroup) list.get(n);
                if (gameGiftGroup.getType() != 0 || !string.equals(gameGiftGroup.getGame().get_id())) {
                    continue;
                }
                break block5;
            }
            n = -1;
        }
        if (n < 0) return;
        int n2 = n + 3;
        int n3 = 3;
        do {
            if (n3 >= arrgiftGameGift.length) {
                list.remove(n2 + 1);
                gameGiftGroupAdapter.a(list);
                return;
            }
            GameGiftGroup gameGiftGroup = new GameGiftGroup();
            gameGiftGroup.setType(1);
            gameGiftGroup.setGift(arrgiftGameGift[n3]);
            gameGiftGroup.setGame(giftGame);
            list.add(++n2, (GameGiftGroup) gameGiftGroup);
            ++n3;
        } while (true);
    }

    @Override
    public final int getItemViewType(int n) {
        return ((GameGiftGroup) this.getItem(n)).getType();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final View getView(int var1_1, View var2_2, ViewGroup var3_3) {
        GameGiftGroup var4_4 = (GameGiftGroup) this.getItem(var1_1);
        int var5_5 = var4_4.getType();
        if (var2_2 == null) {
            switch (var5_5) {
                case 0:
                    var2_2 = this.a.inflate(R.layout.list_item_gift_game_game, var3_3, false);
                    return var2_2;
                case 1:
                    var2_2 = this.a.inflate(R.layout.list_item_gift_game_gift, var3_3, false);
                    return var2_2;
                case 2:
                    var2_2 = this.a.inflate(R.layout.list_item_gift_game_more, var3_3, false);
                    return var2_2;
                default:
                    break;
            }
        } else {
            switch (var5_5) {
                case 0:
                    GiftGame  var8_6 = var4_4.getGame();
                    GameHolder     var9_7 = new GameHolder(var2_2);
                    var9_7.icon.setImageUrl(var8_6.icon, R.drawable.cover_default);
                    var9_7.title.setText(var8_6.getName());
                    var9_7.desc.setText("\u6709 " + var8_6.followers + " \u4e2a\u5c0f\u4f19\u4f34\u5728\u73a9");
                    var9_7.button.setGame(var8_6);
                    var9_7.button.a(var8_6.getDownloadStatus());
                    return var2_2;
                case 1:
                    GiftGameGift   var6_8 = var4_4.getGift();
                    GiftHolder  var7_9 = new GiftHolder(var2_2);
                    var7_9.title.setText(var6_8.title);
                    var7_9.desc.setText(var6_8.description);
                    var7_9.button.setGift(var6_8);
                    var7_9.button.setGame(var4_4.getGame());
                    var7_9.button.setAccount(this.b);
                    var7_9.button.a(var4_4.getGame().getDownloadStatus());
                    return var2_2;
                case 2:
                    new MoreHolder((View) var2_2).title.setOnClickListener(new n(this, var4_4));
                    return var2_2;
                default:
                    break;
            }
        }
        return var2_2;
    }

    @Override
    public final int getViewTypeCount() {
        return 3;
    }

    class MoreHolder {
        TextView title;

        MoreHolder(View view) {
            this.title = (TextView) view.findViewById(R.id.title);
        }
    }

    class GiftHolder {
        GiftGameGiftButton button;
        TextView desc;
        TextView title;

        GiftHolder(View view) {
            this.title = (TextView) view.findViewById(R.id.title);
            this.desc = (TextView) view.findViewById(R.id.desc);
            this.button = (GiftGameGiftButton) view.findViewById(R.id.button);
        }
    }

    class GameHolder {
        GiftGameGameButton button;
        TextView desc;
        SmartImageView icon;
        TextView title;

        GameHolder(View view) {
            this.icon = (SmartImageView) view.findViewById(R.id.icon);
            this.title = (TextView) view.findViewById(R.id.title);
            this.desc = (TextView) view.findViewById(R.id.desc);
            this.button = (GiftGameGameButton) view.findViewById(R.id.download);
        }
    }
}
