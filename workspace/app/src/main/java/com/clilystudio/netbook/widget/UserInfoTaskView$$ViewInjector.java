
package com.clilystudio.netbook.widget;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;

public class UserInfoTaskView$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, UserInfoTaskView UserInfoTaskView2, Object Object3)
    {
        UserInfoTaskView2.mIcon = (ImageView) Finder1.findRequiredView( Object3, 2131493028, "field 'mIcon'" );
        UserInfoTaskView2.mTitle = (TextView) Finder1.findRequiredView( Object3, 2131492936, "field 'mTitle'" );
        UserInfoTaskView2.mExp = (ExpView) Finder1.findRequiredView( Object3, 2131493234, "field 'mExp'" );
    }

    public static void reset(UserInfoTaskView UserInfoTaskView1)
    {
        UserInfoTaskView1.mIcon = null;
        UserInfoTaskView1.mTitle = null;
        UserInfoTaskView1.mExp = null;
    }
}
