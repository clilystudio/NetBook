
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.widget.GiftGameGiftButton;

class GameGiftGroupAdapter$GiftHolder {

    GameGiftGroupAdapter$GiftHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    GiftGameGiftButton button;
    TextView desc;
    TextView title;
}
