
package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.widget.GiftGameGameButton;

class GameGiftGroupAdapter$GameHolder {

    GameGiftGroupAdapter$GameHolder(View View1)
    {
        ButterKnife.inject( this, View1 );
    }

    GiftGameGameButton button;
    TextView desc;
    SmartImageView icon;
    TextView title;
}
