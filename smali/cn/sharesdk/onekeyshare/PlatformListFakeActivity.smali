.class public Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
.super Lcom/mob/tools/a;
.source "SourceFile"


# instance fields
.field protected backgroundView:Landroid/view/View;

.field private canceled:Z

.field protected customerLogos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field protected dialogMode:Z

.field protected hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

.field protected shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected silent:Z

.field protected themeShareCallback:Lcn/sharesdk/onekeyshare/ThemeShareCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->canceled:Z

    .line 25
    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->dialogMode:Z

    .line 28
    return-void
.end method


# virtual methods
.method public getBackgroundView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->backgroundView:Landroid/view/View;

    return-object v0
.end method

.method public getCustomerLogos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->customerLogos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHiddenPlatforms()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->hiddenPlatforms:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOnShareButtonClickListener()Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    return-object v0
.end method

.method public getShareParamsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->shareParamsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getThemeShareCallback()Lcn/sharesdk/onekeyshare/ThemeShareCallback;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->themeShareCallback:Lcn/sharesdk/onekeyshare/ThemeShareCallback;

    return-object v0
.end method

.method public isDialogMode()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->dialogMode:Z

    return v0
.end method

.method public isSilent()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->silent:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/mob/tools/a;->onCreate()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->canceled:Z

    .line 37
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->themeShareCallback:Lcn/sharesdk/onekeyshare/ThemeShareCallback;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->finish()V

    .line 40
    :cond_0
    return-void
.end method

.method public onFinish()Z
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->canceled:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/mob/tools/a;->onFinish()Z

    move-result v0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->canceled:Z

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mob/tools/a;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onShareButtonClick(Landroid/view/View;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    invoke-interface {v0, p1, p2}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;->onClick(Landroid/view/View;Ljava/util/List;)V

    .line 138
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 144
    instance-of v4, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    if-eqz v4, :cond_1

    .line 145
    check-cast v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    .line 146
    iget-object v0, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :cond_1
    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 151
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    .line 154
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->silent:Z

    if-nez v5, :cond_2

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/ShareCore;->isDirectShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->shareParamsMap:Ljava/util/HashMap;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 156
    const-string v6, "platform"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 163
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->themeShareCallback:Lcn/sharesdk/onekeyshare/ThemeShareCallback;

    invoke-interface {v0, v1}, Lcn/sharesdk/onekeyshare/ThemeShareCallback;->doShare(Ljava/util/HashMap;)V

    .line 167
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 168
    invoke-virtual {p0, v2}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Ljava/util/List;)V

    .line 171
    :cond_6
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->finish()V

    .line 172
    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->backgroundView:Landroid/view/View;

    .line 106
    return-void
.end method

.method protected setCanceled(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->canceled:Z

    .line 51
    return-void
.end method

.method public setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->customerLogos:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method public setDialogMode(Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->dialogMode:Z

    .line 122
    return-void
.end method

.method public setHiddenPlatforms(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->hiddenPlatforms:Ljava/util/HashMap;

    .line 98
    return-void
.end method

.method public setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .line 114
    return-void
.end method

.method public setShareParamsMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->shareParamsMap:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method public setSilent(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->silent:Z

    .line 82
    return-void
.end method

.method public setThemeShareCallback(Lcn/sharesdk/onekeyshare/ThemeShareCallback;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->themeShareCallback:Lcn/sharesdk/onekeyshare/ThemeShareCallback;

    .line 130
    return-void
.end method

.method public show(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/mob/tools/a;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;)V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0, p1, v0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Landroid/content/Context;Ljava/util/List;)V

    .line 182
    return-void
.end method

.method protected showEditPage(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".EditPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setBackgroundView(Landroid/view/View;)V

    .line 195
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setShareData(Ljava/util/HashMap;)V

    .line 196
    invoke-virtual {v0, p2}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setPlatforms(Ljava/util/List;)V

    .line 197
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->dialogMode:Z

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setDialogMode()V

    .line 200
    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$1;-><init>(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/a;)V

    .line 212
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected showEditPage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Landroid/content/Context;Ljava/util/List;)V

    .line 176
    return-void
.end method
