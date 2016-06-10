.class public Lcn/sharesdk/onekeyshare/EditPageFakeActivity;
.super Lcom/mob/tools/a;
.source "SourceFile"


# instance fields
.field protected backgroundView:Landroid/view/View;

.field protected dialogMode:Z

.field protected platforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private shareImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected shareParamMap:Ljava/util/HashMap;
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

.field protected toFriendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected getAtUserButtonText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "FacebookMessenger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "To"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "@"

    goto :goto_0
.end method

.method protected getJoinSelectedUser(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    if-eqz p1, :cond_2

    const-string v0, "selected"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "selected"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 93
    const-string v1, "platform"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v3, "FacebookMessenger"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iput-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    move-object v0, v2

    .line 104
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 104
    goto :goto_0
.end method

.method public getLogoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v0, ""

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public haveImage()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v2, "imagePath"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v3, "viewToShare"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 111
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v5, "imageArray"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 123
    :goto_0
    return v0

    .line 115
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v4

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    move v0, v4

    .line 120
    goto :goto_0

    .line 123
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initImageList(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v2, "imagePath"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v3, "viewToShare"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 130
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v6, "imageArray"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 132
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 134
    new-instance v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;-><init>()V

    .line 135
    const-string v2, "imagePath"

    iput-object v2, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    .line 136
    iput-object v1, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    .line 196
    :goto_1
    return v0

    .line 139
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    new-instance v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;-><init>()V

    .line 141
    const-string v1, "viewToShare"

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    .line 142
    iput-object v2, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 143
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "viewToShare"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 146
    new-instance v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;-><init>()V

    .line 147
    const-string v2, "imageUrl"

    iput-object v2, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    .line 148
    iput-object v0, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_3
    if-eqz v3, :cond_0

    array-length v0, v3

    if-lez v0, :cond_0

    .line 152
    array-length v1, v3

    move v0, v4

    :goto_2
    if-ge v0, v1, :cond_5

    aget-object v2, v3, v0

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 155
    new-instance v6, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;-><init>()V

    .line 156
    const-string v7, "imageArray"

    iput-object v7, v6, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    .line 157
    iput-object v2, v6, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    :cond_5
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "imageArray"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_6
    new-instance v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;

    invoke-direct {v0, p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;-><init>(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)V

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 195
    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v5

    .line 196
    goto :goto_1
.end method

.method protected isShowAtUserLayout(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 80
    const-string v0, "SinaWeibo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TencentWeibo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Facebook"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Twitter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FacebookMessenger"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinish()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    .line 260
    invoke-super {p0}, Lcom/mob/tools/a;->onFinish()Z

    move-result v0

    return v0
.end method

.method protected removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->backgroundView:Landroid/view/View;

    .line 64
    return-void
.end method

.method public setDialogMode()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->dialogMode:Z

    .line 57
    return-void
.end method

.method public setPlatforms(Ljava/util/List;)V
    .locals 0
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
    .line 67
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->platforms:Ljava/util/List;

    .line 68
    return-void
.end method

.method protected setResultAndFinish()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 208
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    .line 209
    const-string v3, "imagePath"

    iget-object v4, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "imageUrl"

    iget-object v4, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    :cond_1
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_2
    const-string v3, "viewToShare"

    iget-object v4, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 213
    :cond_3
    const-string v3, "imageArray"

    iget-object v4, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v0, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_4
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 219
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v1, "imageArray"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_5
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->platforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    .line 229
    const-string v3, "FacebookMessenger"

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 230
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 231
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 232
    const-string v4, "address"

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->toFriendList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_6
    const-string v4, "address"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    .line 235
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->activity:Landroid/app/Activity;

    const-string v2, "select_a_friend"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 236
    if-lez v1, :cond_7

    .line 237
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    :cond_7
    :goto_3
    return-void

    .line 221
    :cond_8
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    const-string v2, "imageArray"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 241
    :cond_9
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {v7, v0}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    goto/16 :goto_2

    .line 247
    :cond_a
    invoke-static {v7, v0}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 248
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 251
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    const-string v2, "editRes"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->setResult(Ljava/util/HashMap;)V

    .line 254
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->finish()V

    goto :goto_3
.end method

.method public setShareData(Ljava/util/HashMap;)V
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
    .line 51
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareParamMap:Ljava/util/HashMap;

    .line 52
    return-void
.end method
