
package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife$Finder;
import com.clilystudio.netbook.ui.CircularSmartImageView;

public class ModifyUserInfoActivity$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, ModifyUserInfoActivity ModifyUserInfoActivity2, Object Object3)
    {
        ModifyUserInfoActivity2.mPortrait = (CircularSmartImageView) Finder1.findRequiredView( Object3, 2131493146, "field 'mPortrait'" );
        ModifyUserInfoActivity2.mNameView = (TextView) Finder1.findRequiredView( Object3, 2131492928, "field 'mNameView'" );
        ModifyUserInfoActivity2.mGenderView = (TextView) Finder1.findRequiredView( Object3, 2131493149, "field 'mGenderView'" );
        ModifyUserInfoActivity2.mPortraitSection = (LinearLayout) Finder1.findRequiredView( Object3, 2131493145, "field 'mPortraitSection'" );
        ModifyUserInfoActivity2.mNameSection = (LinearLayout) Finder1.findRequiredView( Object3, 2131493147, "field 'mNameSection'" );
        ModifyUserInfoActivity2.mGenderSection = (LinearLayout) Finder1.findRequiredView( Object3, 2131493148, "field 'mGenderSection'" );
    }

    public static void reset(ModifyUserInfoActivity ModifyUserInfoActivity1)
    {
        ModifyUserInfoActivity1.mPortrait = null;
        ModifyUserInfoActivity1.mNameView = null;
        ModifyUserInfoActivity1.mGenderView = null;
        ModifyUserInfoActivity1.mPortraitSection = null;
        ModifyUserInfoActivity1.mNameSection = null;
        ModifyUserInfoActivity1.mGenderSection = null;
    }
}
